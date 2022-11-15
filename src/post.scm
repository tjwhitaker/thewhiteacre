(define post-template
  (lambda (feed)
    `(html
      ((head
        (title "Home | Dead Neuron")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/blog.css")))
        (link (@ (rel "preconnect") (href "https://fonts.googleapis.com")))
        (link (@ (rel "preconnect") (href "https://fonts.gstatic.com")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Open+Sans:wght@500;700&display=block"))))
      (body
      (div (@ (class "wrapper"))
        (header
          (a (@ (href "/") (class "logo")) "Dead Neuron")
        )
        (main
          (h1 (@ (class "article-title")) (ARTICLE-TITLE))
          (ARTICLE-CONTENT)
        )
        (aside
          (div (@ (class "meta"))
            (h3 (@ (class "minion")) "Meta")
            (p "Hello and welcome! My name is Tim and I'm trying to showcase some cool and innovative applications of machine learning in art and science.")
          )
          (div (@ (class "feed"))
            (h3 (@ (class "minion")) "Feed")
            ,(map (lambda (post) 
              `(a (@ (class "post") (href ,(conc "/" (cadr (assoc 'slug post))))) 
                (h3 ,(cadr (assoc 'title post)))
                (p ,(cadr (assoc 'description post)))
                (small ,(cadr (assoc 'date post)))))
            feed))
        )))))))