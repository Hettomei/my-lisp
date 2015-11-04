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

(defun losange (n &optional (space 0))
  (dotimes (i n)
    (center-line (+ (* i 2) 1) (+ n i 1 space)))
  (loop for i from n downto 0 do
        (center-line (+ (* i 2) 1) (+ n i 1 space))))

(losange 10)
(losange 6)
(losange 29)

(defun cls()
  (format t "~A[H~@*~A[J" #\escape))

(loop
  (dotimes (i 20)
    (cls)
    (losange 6 i)
    (sleep 0.05))
  (loop for i from 19 downto 1 do
        (cls)
        (losange 6 i)
        (sleep 0.05)))

(format t "~%")
