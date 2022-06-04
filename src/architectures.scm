(define architectures-template
  (lambda ()
    `(html
      ((head
        (title "Network Architectures | Dead Neuron")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/architectures.css")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|&display=swap")))
        (link (@ (rel "stylesheet") (href "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css")))
        (script (@ (src "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js")) ""))
      (body
        (div (@ (class "home"))
          (header
            (div (@ (class "wrapper"))
              (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
              (nav "")))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Neural Network Architectures")
                  (p "There are a lot of network architectures being released every year. This is an attempt at cataloging architectures and the ideas they introduced.")))
            (div (@ (class "catalog"))
              (div (@ (class "perceptron"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "Perceptron (1958)")
                    (h2 "Frank Rosenblatt")
                    (p "The first neural network so to speak."))))
              (div (@ (class "lenet"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "LeNet (1989)")
                    (p "..."))))
              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "Long Short-Term Membory (1997)")
                    (p "..."))))

              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "Echo State Network (2004)")
                    (p "..."))))
              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "AlexNet (2012)")
                    (p "..."))))

              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "Incpetion (2014)")
                    (p "..."))))

              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "VGG (2014)")
                    (p "..."))))

              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "ResNet (2015)")
                    (p "..."))))

              (div (@ (class "long-short-term-memory"))
                (div (@ (class "wrapper"))
                  (div
                    (h1 "DenseNet (2016)")
                    (p "..."))))))

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
