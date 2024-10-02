;if     se ejecuta la primera liane asi se cumple la condicion esto se puede ampliar con (progn)
;when    (when (a<b)   codigo de varias lineas) ya que tiene un progn implicito
;unless es lo opuesto al when
;cond  es una serie de condiciones y acciones 
;case el case de toa la vida

;mayo de edad
(defun edadif()
(print "Edad:")
(setq a(read))
(if (> a 18)
    (print "Eres mayor de edad")
    (print "Eres menor de edad")
))

(defun edadwhen()
(print "Edad:")
(setq a(read))
(when (> a 18)
    (print "Eres mayor de edad"))
(when(< a 18)
    (print "Eres menor de edad"))
)

(defun edadunless()
(print "Edad:")
(setq a(read))
(unless (< a 18)
    (print "Eres mayor de edad"))
(unless(> a 18)
    (print "Eres menor de edad"))
)

(defun recorre(lista)
(if(= lista '())
'()
((car(lista)(recorre()))
) 
)