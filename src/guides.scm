(define guides-template
  (lambda ()
    `(html
      ((head
        (title "Guides | Dead Neurons")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/guides.css")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|&display=swap")))
        (link (@ (rel "stylesheet") (href "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css")))
        (script (@ (src "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js")) ""))
      (body
        (div (@ (class "home"))
          (header
            (div (@ (class "wrapper"))
              (a (@ (href "/") (class "logo")) (img (@ (src "/static/willow.svg"))))
              (nav
                (a (@ (href "/about")) "About")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/guides")) "Guides")
                (a (@ (href "/research")) "Research"))))

          (main
            ; (div (@ (class "hero"))
            ;   (div (@ (class "overlay")) "")
            ;     (div (@ (class "wrapper"))
            ;       (h1 "Research")
            ;       (p "Read on to check out a collection of my research papers.")))

            (div (@ (class "guides"))
              (div (@ (class "item"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "Deriving Back Propagation")
                    (p "Coming soon...")
                    (a (@ (href "#") (class "read-more")) "Read More"))))))


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
