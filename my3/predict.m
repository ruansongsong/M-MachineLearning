function p = predict(Theta1, Theta2, X)
% Theta1 and Theta2 are trained weights of a netural network
columns = size(X, 1);
% Initialize p,5000*1
p = zeros(size(X, 1), 1);
% add a column at the first column of X
X = [ones(columns, 1) X];
% the activation of layer2
a2 = sigmoid(X * Theta1');
% add a column at the first column of a2
a2 = [ones(columns, 1) a2];
% the activation of layer3
a3 = sigmoid(a2 * Theta2');
[element_val, p] = max(a3, [], 2);
end