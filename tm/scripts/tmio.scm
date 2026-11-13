;; Helpers for build.sh, loaded into a headless TeXmacs (Upsilon, Qt port).
;;
;; Each job reads a list file with one "in<TAB>out" pair per line and runs
;; the step for every pair, reporting errors per file instead of stopping.

(define (ym-lines f)
  (let ((s (string-load (string->url f))))
    (filter (lambda (l) (not (string-null? l)))
            (string-tokenize-by-char s #\newline))))

(define (ym-pairs f)
  (map (lambda (l) (string-tokenize-by-char l #\tab)) (ym-lines f)))

;; Guile's write abbreviates long lists in TeXmacs Upsilon (mgubi/texmacs#840),
;; so the s-expression is written by hand; strings still go through write.
(define (ym-write-stree x p)
  (cond ((string? x) (write x p))
        ((symbol? x) (display x p))
        ((pair? x)
         (display "(" p)
         (ym-write-stree (car x) p)
         (for-each (lambda (y) (display " " p) (ym-write-stree y p)) (cdr x))
         (display ")" p))
        ((null? x) (display "()" p))
        (else (write x p))))

(define (ym-each f job)
  (for-each
   (lambda (pr)
     (catch #t
       (lambda () (job (car pr) (cadr pr)))
       (lambda args
         (display* "YM-ERROR " (car pr) " ") (write args) (newline))))
   (ym-pairs f)))

;; Markdown -> stree
(define (ym-import-all f)
  (ym-each f (lambda (in out)
               (let ((t (tree-import (string->url in) "markdown")))
                 (call-with-output-file out
                   (lambda (p) (ym-write-stree (tree->stree t) p)))))))

;; stree -> .tm
(define (ym-undump-all f)
  (ym-each f (lambda (in out)
               (let* ((s (call-with-input-file in read))
                      (t (stree->tree s)))
                 (tree-export t (string->url out) "texmacs")))))

;; .tm -> .html: typeset (twice, for the table of contents), save the
;; document with its auxiliary data, export.
(define (ym-html-all f)
  (set-preference "texmacs->html:mathjax" "on")
  (set-preference "texmacs->html:css" "on")
  (set-preference "texmacs->html:images" "on")
  (style-clear-cache)
  (ym-each f (lambda (in out)
               (let ((u (string->url in))
                     (tmp (string->url (string-append out ".pdf"))))
                 (load-buffer u)
                 (switch-to-buffer u)
                 (export-buffer-main u tmp "pdf" (list :overwrite))
                 (generate-all-aux)
                 (update-current-buffer)
                 (export-buffer-main u tmp "pdf" (list :overwrite))
                 (generate-all-aux)
                 (update-current-buffer)
                 (buffer-pretend-modified u)
                 (buffer-save u)
                 (export-buffer-main u (string->url out) "html" (list :overwrite))
                 (system-remove tmp)
                 (display* "YM-DONE " out "\n")))))

;; Tags of the documents that their style does not define (conversion
;; errors would show up here as red macro names). Macros assigned in the
;; document itself (the preamble of the manuscript) count as defined.
(define (ym-collect-tags s acc)
  (when (pair? s)
    (if (symbol? (car s)) (ahash-set! acc (car s) #t))
    (if (and (eq? (car s) 'assign) (pair? (cdr s)) (string? (cadr s)))
        (ahash-set! acc (string->symbol (string-append "@def:" (cadr s))) #t))
    (for-each (lambda (x) (ym-collect-tags x acc)) (cdr s))))

;; Built-in primitives (arithmetic and logic on values and lengths) are not
;; style macros, so style-has? does not know them; the importer writes some
;; of them itself, e.g. <plus|1fn|2pt> for a table cell height.
(define ym-primitives
  '(plus minus times over div mod merge length range number
    equal unequal less lesseq greater greatereq and or xor not if case
    find-file is-tuple look-up))

(define (ym-tagcheck-all f)
  (ym-each f (lambda (in out)
               (let ((u (string->url in)) (acc (make-ahash-table)))
                 (load-buffer u)
                 (switch-to-buffer u)
                 (ym-collect-tags (tree->stree (buffer-tree)) acc)
                 (for-each (lambda (kv)
                             (let ((n (symbol->string (car kv))))
                               (if (and (not (style-has? n)) (not (memq (car kv) ym-primitives)) (not (string-starts? n "@def:")) (not (ahash-ref acc (string->symbol (string-append "@def:" n)))))
                                   (display* "YM-UNDEF " in " " n "\n"))))
                           (ahash-table->list acc))))))

;; LaTeX -> stree (the manuscript)
(define (ym-import-latex-all f)
  (ym-each f (lambda (in out)
               (let ((t (tree-import (string->url in) "latex")))
                 (call-with-output-file out
                   (lambda (p) (ym-write-stree (tree->stree t) p)))))))
