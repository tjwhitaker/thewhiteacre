(define art-template
  (lambda ()
    `(html
      ((head
        (title "Art | Dead Neuron")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/art.css")))
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
                (a (@ (href "/architectures")) "Models")
                (a (@ (href "/research")) "Research"))))
        (main
          ; (div (@ (class "hero"))
          ;   (div (@ (class "image"))
          ;     (img (@ (src "/static/diadelosmuertos.jpg"))))
          ;   (div (@ (class "content"))
          ;     (h1 "Art")
          ;     (p "I love the creative works being created with neural networks.")
          ;   )
          ; )
          (div (@ (class "gallery"))
            (div (@ (class "item"))
              (img (@ (src "/static/van-gogh-proposal.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/basin.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/snake.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/river.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "https://q4j2g5j9.stackpathcdn.com/ddg-dream/3414c06a12f65dc174bfbdc10109b9e5a64d3498.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "https://q4j2g5j9.stackpathcdn.com/ddg-dream/8d2cd698841e504b721697c51a10225edc2e4fb6.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "https://q4j2g5j9.stackpathcdn.com/ddg-dream/fb79c523bf097b13009b9efee07125ad8cb6c049.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "https://m5x6e3x8.stackpathcdn.com/821488/aula7i_9b4f2d99ef58aecd3694cec13c0f799bc56e57cf.jpg"))))
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