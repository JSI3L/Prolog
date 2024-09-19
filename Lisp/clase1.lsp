(defun factorial(n)
    (if (= n 0) 
    1
    (* n (factorial(- n 1 )))
    ))
    
(defun suma(a b)
    (+ a b))