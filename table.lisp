#!/usr/local/bin/sbcl --script

(defun table(n)
  (dotimes (i 12)
    (format t "~a X ~a = ~a~%" n (+ i 1) (* n (+ i 1)))
  )
)

(dotimes (i 13)
  (format t "----- Table du ~a -----~%" i)
  (table i)
  (format t "~%")
)
