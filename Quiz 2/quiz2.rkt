;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname quiz2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;David Kopp
;Quiz 2

;This is the defined list
(define myList (list 1 2 3 4 5 6 7 8 9 10 11 12))

;displays the list without running through a function
(display myList)
(display "\n")
 
;function f that uses the map iterator and multiples each element by 2 from myList
(define f (map (lambda (element)
                 (* 2 element)) ; 2 * element
               myList))

;function g that uses the map iterator and adds 1 to each element by the defined list of numbers.
;Could not get myList to update by the use of function f or g.
(define g (map (lambda (element)
                 ( + 1 element)) ; 1 + element
              '(2 4 6 8 10 12 14 16 18 20 22 24)))

(display f) ;call to function f
(display "\n")
(display g) ;call to function g

;value is a random number between 0 and 24
(define value (random 24))

;function to check if number v excists in the sorted list
(define (mySearch v s)
  (member v (sort s <)))

(display "\n")

;below calls check for a number in the sorted list
(mySearch value myList)
(mySearch (random 24) myList)
(mySearch (random 24) myList)