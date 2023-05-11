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
(include "./cv.scm")
(include "./models.scm")
(include "./notebooks.scm")
(include "./post.scm")
(include "./research.scm")

;; Write html to the intended build file
(define write-html
  (lambda (directory html)
    (create-directory directory #t)
    (call-with-output-file (conc directory "/index.html") (lambda (port) (display (conc "<!DOCTYPE html>" html) port)))))

;; Parse org file for meta tags and content
(define parse-org-file
  (lambda (directory filename)
    (define text 
      (call-with-input-file 
        (conc directory filename) 
        (lambda (port) (read-string #f port))))
    (define match
      (irregex-search
        '(: "TITLE: " (=> title (*? any)) eol (*? any)
            "DESCRIPTION: " (=> description (*? any)) eol (*? any)
            "DATE: " (=> date (*? any)) eol (*? any)
            "HERO: " (=> hero (*? any)) eol) text))
    `((title ,(irregex-match-substring match 'title))
      (description ,(irregex-match-substring match 'description))
      (date ,(irregex-match-substring match 'date))
      (hero ,(irregex-match-substring match 'hero))
      (slug ,(string-chomp filename ".org"))
      (content ,(capture ,(conc "pandoc " directory filename " -f org -t html"))))))

(define inject-field
  (lambda (placeholder template value)
    (irregex-replace placeholder template value)))

;; Build a feed of all articles
(define build-feed
  (lambda (dir)
    (define posts 
      (map 
        (lambda (x) (parse-org-file dir x)) 
        (directory dir)))
    (sort! posts (lambda (a b)
      (date<?
        (string->date (cadr (assoc 'date a)) "~Y-~m-~d")
        (string->date (cadr (assoc 'date b)) "~Y-~m-~d"))))))

(define build-home
  (lambda ()
    (define html (serialize-sxml (home-template) indent: #f method: 'html'))
    (write-html "../build/" html)))

(define build-cv
  (lambda ()
    (define html (serialize-sxml (cv-template) indent: #f method: 'html'))
    (write-html "../build/cv" html)))


(define build-models
  (lambda ()
    (define html (serialize-sxml (models-template) indent: #f method: 'html'))
    (write-html "../build/models" html)))

(define build-notebooks
  (lambda (feed)
    (define html (serialize-sxml (notebooks-template feed) indent: #f method: 'html'))
    (write-html "../build/notebooks" html)))

;; Build article pages
(define build-posts
  (lambda (feed dir)
    (map 
      (lambda (article) 
        (define title (cadr (assoc 'title article)))
        (define description (cadr (assoc 'description article)))
        (define hero (cadr (assoc 'hero article)))
        (define template (serialize-sxml (post-template title description hero) indent: #f method: 'html))
        (define html (inject-field "<ARTICLE-CONTENT />" template (cadr (assoc 'content article))))

        ; (define html (irregex-replace "<CONTEXT />" template (cadr (assoc 'content article))))
        (write-html (conc dir (cadr (assoc 'slug article))) html))
      feed)))

(define build-research
  (lambda ()
    (define html (serialize-sxml (research-template) indent: #f method: 'html'))
    (write-html "../build/research" html)))

;; Run gulp and copy static files to build dir
(define build-static
  (lambda ()
    (run gulp)))

;; Our main loop
(let 
  ((notebooks (build-feed "articles/")))
  (build-static)
  (build-home)
  (build-cv)
  (build-models)
  (build-research)
  (build-notebooks notebooks)
  (build-posts notebooks "../build/notebooks/"))