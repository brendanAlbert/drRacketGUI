;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname a250_lab_16_gui_albert_brendan) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")) #f)))
; Albert, Brendan
; CS A250
; November 29, 2016

; Lab 16 - Racket Graphics

;a250_lab_16_draw_lname_fname
;

; to add textbox
(define text
  (make-text "Per favore inserisci il tuo nome:"))

; define question
(define domanda
  (make-message (string-append "Quale regione produce il vino migliore?")))

; to display a message
(define msg
  (make-message (string-append "Scegliere saggiamente!")))

; to display response
(define (respond e)
  (draw-message msg (string-append "" (text-contents text) "")))

; correct message
(define (si e)
  (draw-message msg (string-append "Ha gusto raffinato!" (text-contents text) )))

; incorrect message
(define (no e)
  (draw-message msg (string-append "Che non è corretto!" (text-contents text) )))

; sets up a window with three "lines":
; a text field, a message, and two buttons
; fill in text and click OK
(define w
  (create-window
   (list
    (list text)
    (list domanda)
    (list (make-button "Toscana" si)
          (make-button "Lazio" no)
          (make-button "Campania" no)
          (make-button "Umbria" no))
    (list msg)
    (list
          (make-button "Uscita" (lambda (e) (hide-window w)))))))