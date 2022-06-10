(include "./models/perceptron.scm")
(include "./models/lenet.scm")
(include "./models/hopfield.scm")
(include "./models/lstm.scm")
(include "./models/boltzmann.scm")
(include "./models/echo-state.scm")
(include "./models/alexnet.scm")

(include "./models/placeholder.scm")

(define architectures-template
  (lambda ()
    `(html
      ((head
        (title "Network Architectures | Dead Neuron")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/architectures.css")))
        (link (@ (rel "stylesheet") (href "/static/prism.css")))
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
                (a (@ (href "/architectures")) "Architectures")
                (a (@ (href "/research")) "Research"))))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Neural Network Architectures")
                  (p "There are a lot of network architectures being released every year. This is an attempt at cataloging architectures and the ideas they introduced.")))

            (div (@ (class "catalog"))
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Perceptron (1958)")
                    (h2 "Frank Rosenblatt")
                    (p "The first neural network so to speak."))
                  (div (@ (class "code"))
                    (pre  (code (@ (class "language-python")) (unquote perceptron))))))
              
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "LeNet (1989)")
                    (p "LeNet was one of the first convolutional neural networks, introduced in 1989 by Yann LeCun at Bell Labs, and it has been a foundational piece of work in the field of computer vision. LeNet laid the groundwork for how convolutional architectures will be structured for the next several decades."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote lenet))))))
              
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Hopfield Network (1982)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote hopfield))))))
              
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Long Short-Term Memory (1997)")
                    (p "LSTM networks were introduced by J. Schmidhuber in 1997. LSTMs are a large improvement over the standard recurrent neural network as they enabled a way for better processing of historical data and a kind of solution to the vanishing gradient problem that plagued vanilla RNNs. LSTMs use quite a complex architecture which involves the use of several gates that we call the input, output and forget gates. These gates are composed into a cell and the composition of them allow for memory over arbitrary time intervals."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote lstm))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Boltzmann Machine (1986)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote boltzmann))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Echo State Network (2004)")
                    (p "Echo State Networks belong to a class of networks called reservoir computing models. Echo State Networks are composed of a reservoir (or reservoirs in deep variants) that consist of a moderate amount of sparse and randomly connected neurons. The weights and the connections between the neurons are fixed. The output of this reservoir is piped back in to the reservoir in a recurrent fasion. The connectivity of the neuron is initialized such that the spectral radius of the reservoir is less than 1. This property ensures that the recurrent state that is passed back into the reservoir slowly decays over time (like an echo). The reservoir is then passed to fully connected neurons with learned weights. Echo State Networks are very fast and well suited for simplistic series data. The chaotic and cyclical behavior of the reservoir makes it especially suited to time series forecasting."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote echo-state))))))
              
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "AlexNet (2012)")
                    (p "AlexNet started the deep learning revolution at a time when the computational capacity of neural networks was limited. At the time, the compute required for deep networks was just infeasible, and the memory available on GPUs was not very much. While the architecture itself is not so revolutionary, and in fact it is very much a variant of LeNet, AlexNet utilized some clever tricks that allowed them to split the network onto two GPUs. AlexNet also popularized a new activation function, ReLU, which will come to be the de-facto standard for deep neural networks until today. ReLU offered an advantage with it's unbounded activation such that deep neural networks would not suffer from the vanishing gradient problem."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote alexnet))))))


              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Inception (2014)")
                    (p "Translation invariance is one of the reasons that convolutional networks are so successful at working with images. Inception networks are an attempt at taking that idea and encoding scale invariance into convolutional networks. Rather than choosing a single kernel size at each convolutional layer, why not use several kernel sizes and concatenate their results together."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "VGG (2014)")
                    (p "VGG, named after the Visual Geometry Group, is probably the canonical example of the first modern deep neural network. VGG was wildy successful and they showed that 3c3 kernels were all you needed. Prior to this, networks were typically composed of different size kernels, gradually decreasing as you moved deeper into the network. The composition of stacked layers and 3x3 kernels enabled significantly larger networks and better generalization."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))


              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "ResNet (2015)")
                    (p "Residual Networks utilize skip connections to eliminate the vanishing gradient problem and enable ultra deep neural networks. ResNets are extremely powerful as the extra depth affords more predictive power and the skip connections allows for better optimization of early layers in the network."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "ResNeXt (2016)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "DenseNet (2016)")
                    (p "DenseNet is special for configuration of skip connections between layers. The output of each convolutional layer is passed to every single successive convolutional layer. All of these extra inputs are concatenated together."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "SqueezeNet (2016)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "MobileNet (2017)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))

              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "Transformer (2017)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))
                    
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "MLP Mixer (2021)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))
                    
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "EfficientNet (2019)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))
                    
              (div (@ (class "model"))
                (div (@ (class "wrapper"))
                  (div (@ (class "content"))
                    (h1 "ConvNeXt (2022)")
                    (p "."))
                  (div (@ (class "code"))
                    (pre (code (@ (class "language-python")) (unquote placeholder))))))))

          (script (@ (src "/static/prism.js")) "")
          (script (@ (src "/static/prism-python.min.js")) "")
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
