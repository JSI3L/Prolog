(defun fibonacci(n)
    (if(< n 3)
    1
    (+ (fibonacci(- n 1)) (fibonacci(- n 2)))
))

(defun div(ream,divi)
    (if(< ream divi)
    0
    (+ 1  (- ream divi))
))