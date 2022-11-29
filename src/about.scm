(define about-template
  (lambda ()
    `(html
      ((head
        (title "About | The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/about.css")))
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
                (a (@ (href "/models")) "Models")
                (a (@ (href "/blog")) "Notebooks")
                (a (@ (href "/research")) "Papers"))))
                
        (main
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "A website for people.")
              (p "When I am not programming or working on my research, I am probably playing chess, rock climbing, or making music.")
            )
          )

          (div (@ (class "timeline"))
            (div (@ (class "wrapper"))
              (ul 
                (li "1992: Born in Florida")
                (li "1997: Moved to New Orleans, Louisiana")
                (li "1996: Got a Nintendo 64 which started a lifelong affair with video games and programming")
                (li "2012: Went on my first outdoor bclimbing trip")
                (li "2015: Graduated from Chico State University with a B.S. in Computer Science")
                (li "2016: Worked full time as a freelance web developer")
                (li "2017: Built my first computer")
                (li "2018: Climbed my first V10")
                (li "2020: Graduated from Colorado State University with an M.S. in Computer Science")
                (li "2021: Published my first paper (Prune and Tune Ensembles) at AAAI")
                (li "2022: Got married to my best friend")
              )
            )
          )

          ; (div (@ (class "hero3"))
          ;   (div (@ (class "overlay")) "")
          ;   (div (@ (class "wrapper"))
          ;     (h1 "I love to play chess")
          ;     (p "...")
          ;   )
          ; )

          (div (@ (class "gallery"))
            (div (@ (class "item"))
              (img (@ (src "/static/lean.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/highball.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/ceremony.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/midnight.png"))))
            (div (@ (class "item"))
              (img (@ (src "/static/saigon.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/rmnp.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/evilution.jpg"))))
          "" )


          

          ; (div (@ (class ""))
          ;   (div (@ (class "wrapper"))
          ;     (h1 "What's up with the name?")
          ;     (p "...")
          ;   )
          ; )

          (div (@ (class "professional"))
            (div (@ (class "wrapper"))
              (h1 "Education")
              (p "I am working on my PhD. I've been programming for a long time. I consider myself a bit of a polyglot. I love languages.")
            
              (div (@ (class "education"))
                (div (@ (class "item"))
                  (div (@ (class "header"))
                    (h2 "Doctor of Philosophy in Computer Science")
                    (span "Expected May 2023"))
                  (p "Colorado State University")
                  (p "Dissertation: Neural Partitioning"))
                (div (@ (class "item"))
                  (div (@ (class "header"))
                    (h2 "Master of Science in Computer Science")
                    (span "May 2021"))
                  (p "Colorado State University")
                  (p "Thesis: Prune and Tune Ensembles: Low-Cost Ensemble Learning With Sparse Independent Subnetworks"))
                (div (@ (class "item"))
                  (div (@ (class "header"))
                    (h2 "Bachelor of Science in Computer Science")
                    (span "May 2015"))
                  (p "California State University, Chico")
                  (p "Capstone: Real Time Web Performance Analysis"))
                (div (@ (class "item"))
                  (h2 "Relevant Coursework")
                  (p "Machine Learning, 3D User Interfaces, Artificial Intelligence, Object-Oriented Programming, Compiler Design, Software Engineering, Algorithms and Data Structures, Numerical & Parallel Programming, Computer Security, Linear Algebra for Data Science, Probability and Statistics")))
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