(define perceptron #<<END
using Flux: Chain, Dense, relu

function mlp(i::Int, d::Int, w::Int, o::Int)
  hidden_layers = [Dense(w => w, relu) for _ in 1:d]
  
  return Chain(
    Dense(i => w, relu),
    hidden_layers...,
    Dense(w, o)
  )
end
END
)