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
(include "./models.scm")
(include "./blog.scm")
(include "./post.scm")
(include "./research.scm")
(include "./code.scm")

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
            "DATE: " (=> date (*? any)) eol) text))
    `((title ,(irregex-match-substring match 'title))
      (description ,(irregex-match-substring match 'description))
      (date ,(irregex-match-substring match 'date))
      (slug ,(string-chomp filename ".org"))
      (content ,(capture ,(conc "pandoc articles/" filename " --katex -f org -t html"))))))

(define inject-field
  (lambda (placeholder template value)
    (irregex-replace placeholder template value)))

;; Build a feed of all articles
(define build-feed
  (lambda ()
    (define posts 
      (map 
        (lambda (x) (parse-org-file "articles/" x)) 
        (directory "articles")))
    (sort! posts (lambda (a b)
      (date<?
        (string->date (cadr (assoc 'date a)) "~Y-~m-~d")
        (string->date (cadr (assoc 'date b)) "~Y-~m-~d"))))))

;; Build blog pages
(define build-articles
  (lambda (feed)
    (map 
      (lambda (article) 
        (define template (serialize-sxml (article-template feed) indent: #f method: 'html))
        (define temp (inject-field "<ARTICLE-TITLE />" template (cadr (assoc 'title article))))
        (define html (inject-field "<ARTICLE-CONTENT />" temp (cadr (assoc 'content article))))

        ; (define html (irregex-replace "<CONTEXT />" template (cadr (assoc 'content article))))
        (write-html (conc "../build/" (cadr (assoc 'slug article))) html))
      feed)))

(define build-home
  (lambda ()
    (define html (serialize-sxml (home-template) indent: #f method: 'html'))
    (write-html "../build/" html)))

(define build-about
  (lambda ()
    (define html (serialize-sxml (about-template) indent: #f method: 'html'))
    (write-html "../build/about" html)))

(define build-models
  (lambda ()
    (define html (serialize-sxml (models-template) indent: #f method: 'html'))
    (write-html "../build/models" html)))

(define build-blog
  (lambda (feed)
    (define html (serialize-sxml (blog-template feed) indent: #f method: 'html'))
    (write-html "../build/blog" html)))

;; Build article pages
(define build-posts
  (lambda (feed)
    (map 
      (lambda (article) 
        (define template (serialize-sxml (post-template feed) indent: #f method: 'html))
        (define temp (inject-field "<ARTICLE-TITLE />" template (cadr (assoc 'title article))))
        (define html (inject-field "<ARTICLE-CONTENT />" temp (cadr (assoc 'content article))))

        ; (define html (irregex-replace "<CONTEXT />" template (cadr (assoc 'content article))))
        (write-html (conc "../build/blog/" (cadr (assoc 'slug article))) html))
      feed)))

(define build-code
  (lambda ()
    (define html (serialize-sxml (code-template) indent: #f method: 'html'))
    (write-html "../build/code" html)))

(define build-research
  (lambda ()
    (define html (serialize-sxml (research-template) indent: #f method: 'html'))
    (write-html "../build/research" html)))

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
(let ((feed (build-feed)))
  (build-static)
  (build-home)
  (build-about)
  (build-code)
  (build-research)
  (build-blog feed)
  (build-posts feed))