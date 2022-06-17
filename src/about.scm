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
                (a (@ (href "/architectures")) "Models")
                (a (@ (href "/research")) "Research"))))

        (main
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "About")
              (p "I'm Tim and this is my beautiful wife.")
            )
          )

          (div (@ (class "education"))
            (div (@ (class "wrapper"))
              (div
                (h1 "Doctor of Philosophy in Computer Science")
                (p "Colorado State University"))
              (div
                (h1 "Master of Science in Computer Science")
                (p "Colorado State University"))
              (div 
                (h1 "Bachelor of Science in Computer Science")
                (p "California State University, Chico"))
              (div
                (h1 "Relevant Coursework"))
              (div 
                (h1 "Awards + Publications")

                (h1 "1st Place out of ~500 competitors on CoinRun in 2020 OpenAI Procgen Competition")
                (h1 "11th Place out of ~700 competitors on All Environments in 2020 OpenAI Procgen Competition")


                (h1 "Artificial Intelligence and Evolutionary Computation Fellowship"))
                (p "2021")

                (h1 "Prune and Tune Ensembles")
                (p "AAAI 2022")

                (h1 "Quantum Neuron Selection")
                (p "GECCO 2022")

                (h1 "Interpretable Diversity Analysis")
                (p "Hopefully NeurIPS")

                (h1 "Sparse Networks and Neuroregeneration")
                (p "Hopefully Something")
            )
          )

          (div (@ (class "experience"))
            (div (@ (class "wrapper"))
              (div 
                (h1 "Graduate Researcher")
                (p "2019 - Present"))
              (div 
                (h1 "Software Engineer")
                (p "2015 - 2019"))
              (div 
                (h1 "Web Developer")
                (p "2012 - 2014"))
              (div
                (h1 "Web Developer")
                (p "2012"))
            )
          )

          (div (@ (class "skills"))
            (div (@ (class "wrapper"))))

          (div (@ (class "interests"))
            (div (@ (class "wrapper"))))
          
          (div (@ (class "chess"))
            (div (@ (class "wrapper"))
              (h2 "Chess")
              (iframe (@ (src "https://lichess.org/training/frame?theme=brown&bg=dark") (style "width: 400px; height: 444px;") (allowtransparency "true") (frameborder "0")) "")))

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
