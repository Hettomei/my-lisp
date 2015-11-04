(defun line(n &optional (cchar #\#))
  (let ((my-string (make-array 0
                               :element-type 'character
                               :fill-pointer 0
                               :adjustable t)))

    (dotimes (i n)
      (vector-push-extend cchar my-string))
    (format t "~a ~%" my-string)))

(defun center-line(n max-n &optional (cchar #\#))
  (let ((my-string (make-array 0
                               :element-type 'character
                               :fill-pointer 0
                               :adjustable t)))

    (dotimes (i (- max-n n))
      (vector-push-extend #\  my-string))
    (dotimes (i n)
      (vector-push-extend cchar my-string))
    (format t "~a ~%" my-string)))

(dotimes (i 5)
  (line 25))

(format t "~%")

(dotimes (i 5)
  (line 25 #\+))

(dotimes (i 10)
  (line i))

(dotimes (i 10)
  (line i))
(dotimes (i 10)
  (line (- 10 i)))
(format t "~%" )

(dotimes (i 10)
  (line (+ (* i 2) 1)))
(dotimes (i 10)
  (line (+ (* (- 10 i) 2) 1)))
(line 1)

(center-line 1 10)
(center-line 3 11)
(center-line 5 12)
(format t "~%")

(dotimes (i 10)
  (center-line (+ (* i 2) 1) (+ 15 i)))
(loop for i from 10 downto 0 do
  (center-line (+ (* i 2) 1) (+ 15 i)))

(format t "~%")
(format t "~a ~%" (get-decoded-time))
