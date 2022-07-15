(define about-template
  (lambda ()
    `(html
      ((head
        (title "About | Dead Neurons")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/about.css")))
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
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "Welcome")
              (p "My name is Tim and I'm a PhD student at Colorado State University. Dead Neurons is a website I started to share some of my neural network and machine learning research.")
            )
          )

          ; (div (@ (class "intro"))
          ;   (div (@ (class "content"))
          ;     (h1 "Personal Stuff")
          ;     (p "My name is Tim and Dead Neurons is a project I'm starting to share my passion for neural networks.")
          ;   )
          ;   (div (@ (class "image"))
          ;     (img (@ (src "/static/basin.jpg")))
          ;   )
          ; )

          (div (@ (class "climbing"))
            (div (@ (class "content"))
              (div (@ (class "wrapper"))
                (h1 "Climbing")
                (p "I love to rock climb")
              )
            )
            (div (@ (class "image"))
              (img (@ (src "/static/evilution.jpg")))
            )
          )
          
          (footer 
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")

              )
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")

              )
              (div (@ (class "column"))
                (h2 "Hello World")
              )
            )
          )

          (script "	mapboxgl.accessToken = 'pk.eyJ1IjoidG13aHRrciIsImEiOiJja2x2NzdpaW0wNXRnMndwOGszNTc3aWd5In0.LvJ2znCQ_1v9a86fxUhQ2A';
          var map = new mapboxgl.Map({
          container: 'map', // container id
          style: 'mapbox://styles/mapbox/streets-v11', // style URL
          center: [-121.4944, 38.5816], // starting position [lng, lat]
          zoom: 10 // starting zoom
          });"
          ))))))))
