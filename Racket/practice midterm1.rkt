;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |practice midterm1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (list-odd alist)
  (cond ((null? alist) '())
        ((odd? (car alist)) (cons (car alist) (list-odd (cdr alist))))
        (else (list-odd (cdr alist)))))

(define (list-odd-sum alist)
  (cond ((null? alist) 0)
        ((odd? (car alist)) (+ (car alist) (list-odd-sum (cdr alist))))
        (else (list-odd-sum (cdr alist)))))
 
(define (ho-list-odd-sum alist)
  (if (null? alist) "can't find it"
              (apply + (filter odd? alist))))

(define (last-element alist)
  (cond ((null? alist) '())
        ((null? (cdr alist)) (car alist))
        (else (last-element (cdr alist)))))

(define (ho-last-element alist)
  (if (null? alist) "can't find it"
      (car (foldl cons '() alist))))

(define (find-odd-digits n)
  (cond ((= n 1) 1)
        ((odd? n) (+ 1 (find-odd-digits (- n 1))))
        (else (find-odd-digits (- n 1)))))

(define (find-sum-odd n)
  (cond ((= n 1) 1)
        ((odd? n) (+ n (find-sum-odd (- n 1))))
        (else (find-sum-odd (- n 1)))))

(define (ho-list-odds alist)
  (if (null? alist) "can't find it"
      (filter odd? alist)))

(define (count-occ n alist)
  (if (null? alist) "can't find it"
      (length (filter (lambda (x) (equal? x n)) alist))))

(define (palimdrone? alist)
  (if (null? alist) "can't find it"
      (equal? alist (foldl cons '() alist))))
       
(ho-list-odd-sum '(1 2 3 4 5 6 7))
(list-odd '(1 2 3 4 5))
(ho-last-element '("this" "that"))
(list-odd-sum '(1 2 3 4 5 6 7))
(last-element '(1 2 3 4 5))
(find-odd-digits 6)
(find-sum-odd 4)
(ho-list-odds '(1 2 3 4))
(count-occ 4 '(1 2 3 4 5 4 3 4 6 7 5 4))        
(palimdrone? '(1 2 3 2 1))