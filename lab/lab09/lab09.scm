(define (over-or-under num1 num2) 
 (cond 
     ((< num1 num2) -1)
     ((= num1 num2) 0)
     ((> num1 num2) 1)))

(define (make-adder num) 
  (lambda (inc) (+ num inc)))

(define (composed f g) 
  (lambda (x) (f (g x))))

(define (repeat f n)
  (define (helper f n x)
    (if (= n 1) 
        (f x)
        (helper f (- n 1) (f x))))
  (lambda (x) (helper f n x))
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))


(define (gcd a b)
 (if (zero? b)
      a  
      (gcd b (modulo a b))))