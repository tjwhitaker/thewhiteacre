(define post-template
  (lambda (title description hero)
    `(html
      ((head
        (title "Blog | The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/article.css")))
        (link (@ (rel "stylesheet") (href "/static/prism.css")))
        (link (@ (rel "stylesheet") (href "https://cdn.jsdelivr.net/npm/katex@0.16.3/dist/katex.min.css")))
        (link (@ (rel "preconnect") (href "https://fonts.googleapis.com")))
        (link (@ (rel "preconnect") (href "https://fonts.gstatic.com")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Open+Sans:wght@500;700&display=block")))
        (link (@ (rel "stylesheet") (href "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css")))
        (script (@ (src "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js")) ""))
      (body
        (div (@ (class "home"))
          (header
            (div (@ (class "wrapper"))
              (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
              (nav
                (a (@ (href "/about")) "About")
                (a (@ (href "/blog")) "Blog")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/research")) "Research"))))
                
          (main
            (div (@ (class "hero") (style ,(conc "background-image: url(" hero ")")))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 ,title)
                  (p ,description)))

            (div (@ (class "content"))
              (div (@ (class "wrapper"))
                (ARTICLE-CONTENT)
              )
            )
          )

          (script (@ (src "/static/prism.js")) "")
          (script (@ (src "/static/prism-python.min.js")) "")
          (script (@ (src "/static/prism-julia.min.js")) "")
          (script (@ (src "/static/katex.js")) "")
          (script (@ (src "/static/katex-auto-render.js") (onload "renderMathInElement(document.body);")) "")

          (footer
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "/about")) "About")
                (a (@ (href "/art")) "Art")
                (a (@ (href "/music")) "Music")
                (a (@ (href "")) "Contact"))
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello"))
              (div (@ (class "column"))
                (h2 "Hello World"))))))))))