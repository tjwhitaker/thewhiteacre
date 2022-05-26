(define about-template
  (lambda ()
    `(html
      ((head
        (title "About | Dead Neuron")
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
            (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
            (nav
              (a (@ (href "/about")) "About")
              (a (@ (href "/art")) "Art")
              (a (@ (href "/music")) "Music")
              (a (@ (href "/writing")) "Writing"))
          )) 
        (main
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "About")
              (p "I'm Tim and this is my beautiful wife.")
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
          )
          )))))))
