(define home-template
  (lambda ()
    `(html
      ((head
        (title "The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/home.css")))
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
                (a (@ (href "/blog")) "Blog")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/research")) "Research"))))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Exploring The Art and Science of Machine Learning")
                  (p "Welcome! My name is Tim Whitaker and I'm a researcher studying neural network optimization and analysis. The White Acre is a website I built to explore and share my research in machine learning.")))

              (div (@ (class "featured"))
                (blockquote "Recent Work")

                (div (@ (class "wrapper"))
                  (div (@ (class "post"))
                      (h2 "Prune and Tune Ensembles")
                      (small "01-01-2022")
                      (p "Ensemble Learning is an effective method for improving generalization in machine learning. However, as state-of-the-art neural networks grow larger, the computational cost associated with training several independent networks becomes expensive. We introduce a fast...")
                      (a (@ (href "#")) "Read More"))
                  (div (@ (class "post"))
                      (h2 "Low-Cost Ensemble Learning")
                      (small "01-01-2022")
                      (p "Ensemble learning has long been known to be a reliable and consistent way to improve generalization performance across a wide range of machine learning tasks. Instead of training and making predictions with a single model, ensembles use several...")
                      (a (@ (href "#")) "Read More"))
                  (div (@ (class "post"))
                      (h2 "Synaptic Stripping")
                      (small "01-01-2022")
                      (p "Rectified Linear Units (ReLU) have long been the default choice for activation functions in deep neural networks. While they demonstrate excellent empirical performance, ReLU activations can fall victim to the dead neuron problem. In these cases, weights end up being pushed into a state where the neuron outputs zero...")
                      (a (@ (href "#")) "Read More"))
                )
              )


            (div (@ (class "personal"))
              (div (@ (class "overlay")) "")
              (div (@ (class "wrapper"))
                (h1 "A Research Scientist Who Loves To Code")
                (p "Programming has been a hobby and a passion of mine for over 15 years and I've worked tirelessly over that time to hone my craft. I see programming as a means for artistic expression and I love exploring philosophical and neuroscientific ideas through my work.")))
            
            (div (@ (class "intro"))
              (div (@ (class "wrapper"))
                (div (@ (class "column-wrapper"))
                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/crypto-gpu.svg"))))
                    (h2 "Model Optimization")
                    (p "I've spent a lot of time tuning and optimizing deep neural networks. I love tinkering with learning algorithms and model architectures in order to improve performance. I have experience with optimizing models for fast and efficient as well as tuning models to improve generalization performance for incredible accuracy."))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/statistical-analysis.svg"))))
                    (h2 "Exploratory Data Analysis")
                    (p "Data is often the most important piece of any machine learning project. Whether it's analyzing datasets to find new insights, writing scripts to engineer new features, or scraping the web to build larger datasets, I love the interactive nature and exploration of a new problem."))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/documents-ui.svg"))))
                    (h2 "Software Engineering")
                    (p "Before pursuing my PhD in neural network research, I spent the better part of a decade working as a software engineer in web development. I have a passion for building clean and maintainable open source code.")))))


            (div (@ (class "my-research"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Neural Partitioning: A Framework for Analyzing and Optimizing Neural Networks by Shattering Them Into Pieces")
                  (p "My PhD research explores the process of splitting deep neural networks into pieces. By understanding how subnetworks contribute to learning, we can improve the generalization of whole systems by optimizing these pieces independently. My work touches on several powerful topics in machine learning including: sparse network architectures, ensemble learning, modular learning, evolutionary methods and quantum computation. Check out my research papers to learn more about what I'm working on...")
                  (a (@ (href "/research") (class "read-more")) "Read More"))))


            (div (@ (class "contact"))
              (div (@ (class "wrapper"))
                (h1 "Get In Touch")
                (div (@ (class "form-container"))
                  (input (@ (placeholder "Name")))
                  (input (@ (placeholder "Email")))
                  (textarea (@ (placeholder "Message")) "")
                  (a (@ (class "button") (href "#")) "Send Message")
                )
                (div (@ (class "map-container"))
                  (div (@ (id "map")) "")
                  (p "Sacramento, CA")
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
                (a (@ (href "/art")) "Art")
                (a (@ (href "/music")) "Music")
                (a (@ (href "")) "Contact"))
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello"))
              (div (@ (class "column"))
                (h2 "Hello World"))))

          
          (script (@ (src "/static/progressbar.min.js")) "")
          (script (@ (src "/static/howler.min.js")) "")
          (script (@ (src "/static/launchpad.js")) "")
          (script "	mapboxgl.accessToken = 'pk.eyJ1IjoidG13aHRrciIsImEiOiJja2x2NzdpaW0wNXRnMndwOGszNTc3aWd5In0.LvJ2znCQ_1v9a86fxUhQ2A';
          var map = new mapboxgl.Map({
          container: 'map', // container id
          style: 'mapbox://styles/mapbox/light-v10', // style URL
          center: [-121.4944, 38.5816], // starting position [lng, lat]
          zoom: 10 // starting zoom
          });")))))))
