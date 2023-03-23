(define home-template
  (lambda ()
    `(html
      ((head
        (title "The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/style.css")))
        (link (@ (rel "stylesheet") (href "/static/home.css")))
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
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/research")) "Papers"))))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Building Better" (br) "Neural Networks")
                  (p "Welcome! My name is Tim Whitaker and I'm a researcher studying neural network optimization and analysis. The White Acre is a website I built to explore and share my research in machine learning.")))

            (div (@ (class "intro"))
              (div (@ (class "wrapper"))
                (div (@ (class "column-wrapper"))
                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/crypto-gpu.svg"))))
                    (h2 "Model Optimization")
                    (p "I'm passionate about optimizing learning algorithms and model architectures for superior performance. "))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/statistical-analysis.svg"))))
                    (h2 "Data Analysis")
                    (p "Data is often the most important piece of any machine learning project. Whether it's analyzing datasets to find new insights, writing scripts to engineer new features, or scraping the web to build larger datasets, I love the interactive nature and exploration of a new problem."))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                    (img (@ (src "/static/documents-ui.svg"))))
                    (h2 "Research Science")
                    (p "As a published author at top tier conferences. I have a passion for building clean and maintainable open source code.")))))

          (div (@ (class "personal"))
            (div (@ (class "content"))
              (div (@ (class "wrapper"))
                (h1 "About Me")
                (p "Hello. I'm Tim and I am a 30 year old computer scientist trying to find my way in this world. I live in Sacramento, California and I love to rock climb, play chess, and make music.")
                (p "I graduated from Chico State University with a B.S. in computer science. I worked as a web developer/software engineer for 5 years before deciding to go back to school at Colorado State University to pursue an interest in machine learning and neural networks. I finished my M.S. and am happily pursuing my PhD.")
              )
            )
            (div (@ (class "image"))
              (img (@ (src "/static/nice-bridge.jpg")))
            )
          )

            (div (@ (class "contact") (id "contact"))
              (div (@ (class "wrapper"))
                (h1 "Get In Touch")
                (div (@ (class "form-container"))
                  (form (@ (netlify "1"))
                    (input (@ (placeholder "Name") (name "name") (type "text")))
                    (input (@ (placeholder "Email" (name "email") (type "email"))))
                    (textarea (@ (placeholder "Message") (name "message")) "")
                    (button (@ (type "submit")) "Send Message")
                  )
                )
                (div (@ (class "map-container"))
                  (div (@ (id "map")) "")
                )
              )
            )

            (div (@ (class "reference"))
              (p "P.S. I built and designed this " (a (@ (href "https://github.com/tjwhitaker/thewhiteacre")) "website") " entirely from scratch in scheme. All hero images are generated with neural networks via " (a (@ (href "https://midjourney.com")) "midjourney") ".")))


          (footer
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "/about")) "About")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/research")) "Research"))
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "https://arxiv-sanity-lite.com")) "Arxiv Sanity")
                (a (@ (href "https://paperswithcode.com")) "Papers With Code")
                (a (@ (href "https://news.ycombinator.com")) "Hacker News")
                (a (@ (href "https://www.youtube.com/c/pbsspacetime")) "Space Time"))
              (div (@ (class "column"))
                (h2 "Self")
                (a (@ (href "#")) "CV")
                (a (@ (href "https://github.com/tjwhitaker")) "Github")
                (a (@ (href "https://lichess.org/@/tjwhitaker")) "Lichess")
                (a (@ (href "https://orcid.org/0000-0003-3792-3901")) "Orcid")
                )))

          
          (script "	mapboxgl.accessToken = 'pk.eyJ1IjoidG13aHRrciIsImEiOiJja2x2NzdpaW0wNXRnMndwOGszNTc3aWd5In0.LvJ2znCQ_1v9a86fxUhQ2A';
          var map = new mapboxgl.Map({
          container: 'map', // container id
          style: 'mapbox://styles/mapbox/streets-v12', // style URL
          center: [-121.4944, 38.5816], // starting position [lng, lat]
          zoom: 10 // starting zoom
          });")))))))
