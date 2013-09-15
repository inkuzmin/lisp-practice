(defun negate-rec (list)
  (loop for el in list collect (negate-help el)))

(defun negate-help (s)
  (if (listp s) (negate-rec s) (- s) ))

(defun negate-alt (list)
  (loop for e in list collect
       (if (listp e) (negate-alt e) (- e))))
