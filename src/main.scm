(import (chicken io)
        (chicken file)
        (chicken file posix)
        (chicken irregex)
        (chicken string)
        (chicken format)
        (chicken sort))
(import shell)
(import sxml-serializer)
(import srfi-19)

;; Import home-template
(include "./home.scm")

;; Write html to the intended build file
(define write-html
  (lambda (directory html)
    (create-directory directory #t)
    (call-with-output-file (conc directory "/index.html") (lambda (port) (display (conc "<!DOCTYPE html>" html) port)))))

(define build-home
  (lambda ()
    (define html (serialize-sxml (home-template) indent: #f method: 'html'))
    (write-html "../build/" html)))

;; Run gulp and copy static files to build dir
(define build-static
  (lambda ()
    (run gulp)
    (map (lambda (x) (copy-file (conc "./static/" x) (conc "../build/static/" x) #t)) (directory "./static"))))

;; Our main loop
(build-static)
(build-home)