(defparameter *nodes* '(
    (Masculino
        (Star
            (Oliver Fog)(Erick)
        )
        (Plant
            (Avgust)(Diggers)(Зима)(Marcus)
        )
        (Mineral
            (Horropedia)
        )
        (Beast
            (J)(Getian)(Medicine Pocket)(Mr Duncan)(Pavia)(Shamane)
        )
        (Spirit
            (Click)
        )
        (Intellect
            (Six)(X)(John Titor)
        )
    )
    (Femenino
        (Star
            (Luna)(Stella)(Aurora)
        )
        (Plant
            (Rose)(Lily)(Daisy)(Tulip)
        )
        (Mineral
            (Ruby)(Emerald)(Sapphire)
        )
        (Beast
            (Lioness)(Tigress)(Panthera)(Leona)(Shira)
        )
        (Spirit
            (Aura)(Mystica)
        )
        (Intellect
            (Ada Lovelace)(Marie Curie)(Hypatia)
        )
    )
    (Otro
        (Star
            (Sol)(Sirius)(Proxima Centauri)
        )
        (Plant
            (Cactus)(Bamboo)(Palm)(Fern)
        )
        (Mineral
            (Gold)(Silver)(Platinum)
        )
        (Beast
            (Wolf)(Fox)(Bear)(Eagle)
        )
        (Spirit
            (Ghost)(Poltergeist)(Specter)
        )
        (Intellect
            (Alan Turing)(Nikola Tesla)(Leonardo Da Vinci)
        )
    )
))
;minimo 5 niveles

(defun recorre (lista)
(when lista
    (let ((nodo (car lista)))
    (format t "Tu personaje es ~a?~%" (car nodo))
    (setq a (read))
    (if (string-equal a "si")
        (progn
        (setq b (cadr (assoc(car nodo) lista)))
        (recorre b)
        )
    (recorre (cdr lista))
))))