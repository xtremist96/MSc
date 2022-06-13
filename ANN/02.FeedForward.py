# Error
import numpy as np
from sklearn import datasets
#
# Generate a dataset and plot it
#
np.random.seed(0)
X, y = datasets.make_moons(200, noise=0.20)
#
# Neural network architecture
# No of nodes in input layer = 4
# No of nodes in output layer = 3
# No of nodes in the hidden layer = 6
#
input_dim = 4  # input layer dimensionality
output_dim = 3  # output layer dimensionality
hidden_dim = 6  # hidden layer dimensionality
#
# Weights and bias element for layer 1
# These weights are applied for calculating
# weighted sum arriving at neurons in 1st hidden layer
#
W1 = np.random.randn(input_dim, hidden_dim)
b1 = np.zeros((1, hidden_dim))
#
# Weights and bias element for layer 2
# These weights are applied for calculating
# weighted sum arriving at neurons in 2nd hidden layer
#
W2 = np.random.randn(hidden_dim, hidden_dim)
b2 = np.zeros((1, hidden_dim))
#
# Weights and bias element for layer 2
# These weights are applied for calculating
# weighted sum arriving at in the final / output layer
#
W3 = np.random.randn(hidden_dim, output_dim)
b3 = np.zeros((1, output_dim))
#
# Forward propagation of input signals
# to 6 neurons in first hidden layer
# activation is calculated based tanh function
#
z1 = X.dot(W1) + b1
a1 = np.tanh(z1)
#
# Forward propagation of activation signals from first hidden layer
# to 6 neurons in second hidden layer
# activation is calculated based tanh function
#
z2 = a1.dot(W2) + b2
a2 = np.tanh(z2)
#
# Forward propagation of activation signals from second hidden layer
# to 3 neurons in output layer
#
z3 = a2.dot(W3) + b3
#
# Probability is calculated as an output
# of softmax function
#
probs = np.exp(z3) / np.sum(np.exp(z3), axis=1, keepdims=True)
