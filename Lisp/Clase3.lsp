;(defun read()
   ; (print "Dame un valor:")
  ;  (setq a (read))
 ;   (format t "Hola mundo")
;)
;car saca la cabeza de la lista  se pude combinar por ejemplo caaar hasta 3 a y car cdr -> cadr
;cdr saca la cola de la lista 



;(car '(1 2 3 4 5))    ; regresa 1
;(cdr '(1 2 3 4 5))    ; regresa 2 3 4 5
;(cadr '(1 2 3 4 5))   ; regresa 2  
;(caddr '(1 2 3 4 5))  ; regresa 3  



(defun Atri()
    (print "Dame la base:")
    (setq a (read))
    (print "Dame la altura:")
    (setq b (read))
    (/ (* a b) 2)
)

(defun Acuadrado()
    (print "Dame un lado:")
    (setq a (read))
    (* a a)
)

(defun Arect()
    (print "Dame la base:")
    (setq a (read))
    (print "Dame la altura:")
    (setq b (read))
    (* a b)
)

(defun Apen()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 5))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Ahex()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 6))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Ahep()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 7))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Aoct()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 8))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Aene()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 9))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Adeca()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 10))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)

(defun Aend()
    (print "Dame un lado")
    (setq a (read))
    (setq p (* a 11))
    (print "Dame el apotema:")
    (setq b (read))
    (/ (* p b) 2)
)
