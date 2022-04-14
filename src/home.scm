(define home-template
  (lambda ()
    `(html
      ((head
        (title "Wittes Ende")
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
              (a (@ (href "/#")) "About")
              (a (@ (href "/#")) "Papers")
              (a (@ (href "/#")) "Contact"))
          ))
        (main
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "Handcrafted Artificial Intelligence")
              (p "We are passionate about building state of the art neural network systems.")
            )
          )
          (div (@ (class "bar"))
            (div (@ (class "wrapper"))
              (p "Hoping to one day be featured on")
              (div (@ (class "brands"))
                (img (@ (src "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Fortune_magazine_logo_2016.svg/512px-Fortune_magazine_logo_2016.svg.png?20210219004656")))
                (img (@ (src "https://cdn.worldvectorlogo.com/logos/entrepreneur-2.svg")))
                (img (@ (src "https://cdn.sstatic.net/Img/product/teams/logos/bloomberg-alt.svg?v=9fc4f6650377")))
                (img (@ (src "https://chicagoinnovation.com/wp-content/uploads/2017/04/forbes-logo-black-transparent-750x196.png")))
                (img (@ (src "https://cdn.worldvectorlogo.com/logos/wired.svg")))
                (img (@ (src "https://upload.wikimedia.org/wikipedia/commons/a/a3/Fast_Company_logo.svg")))
                (img (@ (src "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Gizmodo.svg/800px-Gizmodo.svg.png?20161105214958")))
              )
            )
          )
          (div (@ (class "quantum-neuron-selection"))
            (div (@ (class "wrapper"))
              (div 
                (h1 "Quantum Neuron Selection")
                (p "Gradient descent methods have long been the de facto standard for training deep neural networks. Millions of training samples are fed into models with billions of parameters, which are slowly updated over hundreds of epochs. Recently, it's been shown that large, randomly initialized, neural networks contain subnetworks that perform as well as fully trained models. This insight offers a promising avenue for...")
                (a (@ (href "#") (class "read-more")) "Read More"))
            )
          )
          (div (@ (class "there-is-no-magic-subnetwork"))
            (div (@ (class "wrapper"))
              (div 
                (h1 "There Is No Magic Subnetwork")
                (p "Diversity is an important consideration in the construction of robust neural network ensembles. A collection of well trained models will generalize better to unseen data if they are diverse in the patterns they respond to and the predictions they make. Encouraging diversity becomes especially important for low-cost ensemble methods, as members often share network structure or training epochs in order to avoid training several independent networks from scratch...")
                (a (@ (href "#") (class "read-more")) "Read More"))
            )
          )
          (div (@ (class "prune-and-tune-ensembles"))
            (div (@ (class "wrapper"))
              (div 
                (h1 "Prune and Tune Ensembles")
                (p "Ensemble Learning is an effective method for improving generalization in machine learning. However, as state-of-the-art neural networks grow larger, the computational cost associated with training several independent networks becomes expensive. We introduce a fast, low-cost method for creating diverse ensembles of neural networks without needing to train multiple models from scratch. We do this by first training a single parent network. We then create child networks by cloning the parent and...")
                (a (@ (href "#") (class "read-more")) "Read More"))
            )
          )
          
          ; (div (@ (class "contact"))
          ;   (div (@ (class "wrapper"))
          ;     (h2 "Get in Touch")
          ;     (div (@ (class "form-container"))
          ;       (input (@ (placeholder "Name")))
          ;       (input (@ (placeholder "Email")))
          ;       (textarea (@ (placeholder "Message")) "")
          ;       (a (@ (class "button") (href "#")) "Send Message")
          ;     )
          ;     (div (@ (class "map-container"))
          ;       (div (@ (id "map")) "")
          ;       (p "Sacramento, CA")
          ;     )
          ;   )
          ; )

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