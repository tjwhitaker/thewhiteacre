(define lenet #<<END
using Flux: Chain, Conv, Dense, MaxPool, flatten, outputsize relu

function lenet(i::Tuple{Int, Int, Int}, o::Int)
  conv_layers = [
    Conv((5, 5), i[end] => 6, relu),
    MaxPool((2, 2)),
    Conv((5, 5), 6 => 16, relu),
    MaxPool((2, 2))
  ]

  conv_output_size = prod(outputsize(conv_layers, i, padbatch=true))

  dense_layers = [
    flatten,
    Dense(conv_output_size => 120, relu),
    Dense(120 => 84, relu),
    Dense(84, o)
  ]

  return Chain(
    conv_layers...,
    dense_layers...
  )
end
END
)