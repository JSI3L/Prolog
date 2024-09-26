;a,b,c,d,f,g,h  
;4to elemento 
;los 3 ultimos
;los primeros 3 
;eliminar el primero y el ultimo
;sumar los primeros 3 
;recorrer toda la lista 
;invertir los pares de la lista, es decir ab cd -> ba dc

(setq lista '(a b c d e f g h ))

(cadddr lista)

(cdr (cddddr lista))

(cons(car lista)(cons (cadr lista)(cons(caddr lista) '()))) 

(cdr lsita)