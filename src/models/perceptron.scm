(define perceptron #<<END
import torch
import torch.nn as nn


class MLP(nn.Module):
    def __init__(self, n_features=784, n_outputs=10, layer_configuration=[50,40,30]):
        super(Net, self).__init__()
        layers = [
          nn.Linear(n_features, layer_configuration[0]),
          nn.ReLU(),
        ]

        for i in range(len(layer_configuration) - 1):
          layers.append(nn.Linear(layer_configuration[i], layer_configuration[i+1]))
          layers.append(nn.ReLU())

        layers.append(nn.Linear(layer_configuration[-1], n_outputs))

        self.layers = nn.Sequential(layers)

    def forward(self, x):
        return self.layers(x)
END
)