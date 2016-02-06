function [J, grad] = lrCostFunction(theta, X, y, lambda)
% Compute cost(J) and gradient(grad) for logistic regression with regularization
% the size of theta is 401*1, X is 5000*401
% Get the number of training example, y stands for the labels
m = length(y);
% Initialize J and grad
J = 0;
% theta = num_labels, grad is 10*10 dimension
grad = zeros(size(theta));

% Compute J and grad
% 因为代价函数是加上了正则化的，所以theta(1)不用参与正则化,theta(1) 等于0
temp = [0 : theta(2 : end)];
J = (-1/m) * sum(y .* log(sigmoid(X * theta)) + (1 .- y) .* log(1 .- sigmoid(X * theta))) + lambda / (2*m) * temp' * temp;
grad = 1/m * (X' * (sigmoid(X * theta) - y))+ lambda/m * temp;

%  将grad转置一下1*401
grad(:);


end