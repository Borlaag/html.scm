;; Standalone CLI, takes a .http.scm file and compiles it into a .http file

(use-modules (srfi srfi-37))

(args-fold (cdr (program-arguments))
           (let ((display-and-exit-proc
                  (lambda (msg) (lambda (opt name arg loads)
                                  (display msg)
                                  (quit)))))
             (list
              (option '(#\v "version") #f #f
                      (display-and-exit-proc
                       "0.0.1\n"))
              (option '(#\h "help") #f #f
                      (display-and-exit-proc
                       "Usage: http.scm -i <input_file> -o <output_file>"))))
           (lambda (opt name arg loads)
             (error "Unrecognized option `~A'" name))
           (lambda (op loads) (cons op loads))
           '())
