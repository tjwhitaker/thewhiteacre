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

;; Import home-template, about-template
(include "./home.scm")
(include "./about.scm")
(include "./art.scm")
(include "./music.scm")
(include "./writing.scm")
(include "./architectures.scm")
(include "./research.scm")

;; Write html to the intended build file
(define write-html
  (lambda (directory html)
    (create-directory directory #t)
    (call-with-output-file (conc directory "/index.html") (lambda (port) (display (conc "<!DOCTYPE html>" html) port)))))

(define build-home
  (lambda ()
    (define html (serialize-sxml (home-template) indent: #f method: 'html'))
    (write-html "../build/" html)))

(define build-about
  (lambda ()
    (define html (serialize-sxml (about-template) indent: #f method: 'html'))
    (write-html "../build/about" html)))

(define build-architectures
  (lambda ()
    (define html (serialize-sxml (architectures-template) indent: #f method: 'html'))
    (write-html "../build/architectures" html)))

(define build-research
  (lambda ()
    (define html (serialize-sxml (research-template) indent: #f method: 'html'))
    (write-html "../build/research" html)))

(define build-art
  (lambda ()
    (define html (serialize-sxml (art-template) indent: #f method: 'html'))
    (write-html "../build/art" html)))

(define build-music
  (lambda ()
    (define html (serialize-sxml (music-template) indent: #f method: 'html'))
    (write-html "../build/music" html)))

(define build-writing
  (lambda ()
    (define html (serialize-sxml (writing-template) indent: #f method: 'html'))
    (write-html "../build/writing" html)))

;; Run gulp and copy static files to build dir
(define build-static
  (lambda ()
    (run gulp)
    (map (lambda (x) (copy-file (conc "./static/" x) (conc "../build/static/" x) #t)) (directory "./static"))))

;; Our main loop
(build-static)
(build-home)
(build-about)
(build-architectures)
(build-art)
(build-music)
(build-writing)
(build-research)