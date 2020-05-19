;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Programs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sum-odd-digits n)
  (cond ((= n 1) 1)
        ((odd? n) (+ n (sum-odd-digits(- n 1))))
        (else (sum-odd-digits(- n 1)))))

(sum-odd-digits 10)

(define (is-palindrome? alist)
  (if (null? alist) "can't find it"
      (equal? alist (reverse alist))))

(is-palindrome? '(1 2 3 2 1))
(is-palindrome? '(1 2 9 1 2))

