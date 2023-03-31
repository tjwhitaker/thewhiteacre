(define research-template
  (lambda ()
    `(html
      ((head
        (title "Research | The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/style.css")))
        (link (@ (rel "stylesheet") (href "/static/research.css")))
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
                (a (@ (href "/research") (class "active")) "Publications")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/contact")) "Contact"))))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Publications")
                  (p "A collection of research papers I've written and/or contributed to. Most of my work here centers on neural selection, sparse networks, and ensemble learning.")))

            ; (div (@ (class "paper low-cost-ensembles"))
            ;   (div (@ (class "wrapper"))
            ;     (div
            ;       (h1 "Low-Cost Ensemble Learning")
            ;       (small "Surveying Efficient Methods For Training Multiple Deep Neural Networks")
            ;       (p "PhD Preliminary Exam")
            ;       (p "Ensemble learning has long been known to be a reliable and consistent way to improve generalization performance across a wide range of machine learning tasks. Instead of training and making predictions with a single model, ensembles use several independent models and combine their predictions together. However, training several independent models from scratch can become prohibitively expensive as deep neural networks continue to grow in both scale and complexity...")
            ;       (a (@ (href "/static/there-is-no-magic-subnetwork.pdf") (class "read-more")) "Read More"))))

            (div (@ (class "paper prune-and-tune-ensembles"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Prune and Tune Ensembles: Low-Cost Ensemble Learning with Sparse Independent Subnetworks")
                  (p "AAAI 2022")
                  (p "Ensemble Learning is an effective method for improving generalization in machine learning. However, as state-of-the-art neural networks grow larger, the computational cost associated with training several independent networks becomes expensive. We introduce a fast, low-cost method for creating diverse ensembles of neural networks without needing to train multiple models from scratch. We do this by first training a single parent network. We then create child networks by cloning the parent and...")
                  (a (@ (href "https://arxiv.org/pdf/2202.11782.pdf") (class "read-more")) "Read More"))))

            (div (@ (class "paper interpretable-diversity-analysis"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Interpretable Diversity Analysis: Visualizing Feature Representations in Low-Cost Ensembles")
                  (p "IJCNN 2022")
                  (p "Diversity is an important consideration in the construction of robust neural network ensembles. A collection of well trained models will generalize better to unseen data if they are diverse in the patterns they respond to and the predictions they make. Encouraging diversity becomes especially important for low-cost ensemble methods, as members often share network structure or training epochs in order to avoid training several independent networks from scratch...")
                  (a (@ (href "https://arxiv.org/pdf/2302.05822.pdf") (class "read-more")) "Read More"))))
            
            (div (@ (class "paper sparse-mutation-decomposition"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Sparse Mutation Decompositions: Fine Tuning Deep Neural Networks with Subspace Evolution")
                  (p "GECCO 2023")
                  (p "Neuroevolution is a promising area of research that combines evolutionary algorithms with neural networks. A popular subclass of neuroevolutionary methods, called evolution strategies, relies on dense noise perturbations to mutate networks, which can be sample inefficient and challenging for large models with millions of parameters. We introduce an approach to alleviating this problem by decomposing dense mutations into low-dimensional subspaces. Restricting mutations in this way can significantly reduce variance as...")
                  (a (@ (href "https://arxiv.org/pdf/2302.05832.pdf") (class "read-more")) "Read More"))))

            (div (@ (class "paper synaptic-stripping"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Synaptic Stripping: How Pruning Can Bring Dead Neurons Back To Life")
                  (p "IJCNN 2023")
                  (p "Rectified Linear Units (ReLU) are the default choice for activation functions in deep neural networks. While they demonstrate excellent empirical performance, ReLU activations can fall victim to the dead neuron problem. In these cases, the weights feeding into a neuron end up being pushed into a state where the neuron outputs zero for all inputs. Consequently, the gradient is also zero for all inputs, which means that the weights which feed into the neuron cannot update. The neuron is not able to recover from direct back propagation and model capacity is reduced as those parameters can no longer be further optimized. Inspired by a neurological process of the same name, we introduce Synaptic Stripping as a means to combat this dead neuron problem...")
                  (a (@ (href "https://arxiv.org/pdf/2302.05818.pdf") (class "read-more")) "Read More"))))
            
            (div (@ (class "paper stochastic-masking"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Stochastic Partitioning: ...")
                  (p "A Modular Network Architecture for Multi-Task Learning")
                  (p "Coming soon...")
                  (a (@ (href "#") (class "read-more")) "Read More"))))

            (div (@ (class "paper quantum-neuron-selection"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Quantum Neural Selection: Finding Performant Subnetworks with Quantum Algorithms")
                  (p "GECCO 2022")
                  (p "Gradient descent methods have long been the de facto standard for training deep neural networks. Millions of training samples are fed into models with billions of parameters, which are slowly updated over hundreds of epochs. Recently, it's been shown that large, randomly initialized, neural networks contain subnetworks that perform as well as fully trained models. This insight offers a promising avenue for...")
                  (a (@ (href "https://arxiv.org/pdf/2302.05984.pdf") (class "read-more")) "Read More")))))
          
          (div (@ (class "reference"))
            (p "I built and designed this " (a (@ (href "https://github.com/tjwhitaker/thewhiteacre")) "website") " entirely from scratch in scheme. All hero images are generated with neural networks via " (a (@ (href "https://midjourney.com")) "midjourney") "."))

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
                )))))))))