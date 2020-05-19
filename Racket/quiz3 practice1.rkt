;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |quiz3 practice1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (fourth-element l)
  (if (null? l) null
      (if (null? (rest l)) null
          (if (null? (rest (rest l))) null
          (if (null? (rest (rest (rest l)))) null
          (first (rest (rest (rest l)))))))))

(check-expect (fourth-element '(2 3 4 5 6 7)) 5)
;------------------------------------------------------------
(define (my-length l)
  (if (null? l) 0
      (+ 1 (my-length (rest l)))))

(check-expect (my-length '(1 2 3 4 5)) 5)
;------------------------------------------------------------
(define (my-occurrence i l)
  (cond
    ((null? l) 0)
    ((equal? i (first l)) (+ 1 (my-occurrence i (rest l))))
    (else (my-occurrence i (rest l)))))

(check-expect (my-occurrence 3 '(1 2 3 4 5 3 8 3 9 3)) 4)
;-------------------------------------------------------------
(define (my-append list1 list2)
  (if (null? list1) null
      (cons (first list1) (cons (first list2) (my-append (rest list1) (rest list2))))))

(my-append '(1 2 3) '(4 5 6))
;-------------------------------------------------------------
;Literal I
(first (list 1 2 3 4))
(car (cdr '(1 2 3)))
(cons 1 (list (list 1 2)))
;(cons (car (cdr '(1 2 3 4)))) ;error missing an argument for cons
(map + '(1 2 3 4) '(11 12 13 14))
;-------------------------------------------------------------
;Literal II
(define (find-odd-digits-helper L)
  (cond
    ((null? L) 0)
    ((odd? (first L)) (+ 1 (find-odd-digits-helper (rest L))))
    (else (find-odd-digits-helper (rest L)))))

(define (find-odd-digits n)
  (find-odd-digits-helper (build-list n add1)))

(find-odd-digits 1)
(find-odd-digits 4)
(find-odd-digits 6)  

(define (find-sum-odd-helper L)
  (cond
    ((null? L) 0)
    ((odd? (first L)) (+ (first L) (find-sum-odd-helper (rest L))))
    (else (find-sum-odd-helper (rest L)))))

(define (find-sum-odd-digits n)
  (find-sum-odd-helper (build-list n add1)))

(find-sum-odd-digits 4)
(find-sum-odd-digits 1)
;----------------------------------------------------------------
;Literal III
(define (list-all-odds L)
  (filter odd? L))

(list-all-odds '(1 2 3 4))

(define (count-occurrences i L)
  (length (filter (lambda (x) (equal? x i))
          L)))

(count-occurrences 4 '(1 2 3 4 5 4 3 4 6 7 5 4))

(define (is-palimdrome? L)
  (cond
  ((null? L) "True")
  ((= (first (reverse L)) (first L)) (is-palimdrome? (rest (reverse (rest L)))))
  (else "False")))

(is-palimdrome? '(1 2 3 3 2 1))
;-------------------------------------------------------------
;Literal IV
(map (lambda (s n) (substring s 0 n)) ;substring of s from 0 to n
     (list "peanuts" "popcorn" "crackerjack")
     (list 6 3 7))

(foldl (lambda (elem v) ;
        (+ v (* elem elem)))
       0
       '(1 2 3))