function [theta,J_history] = gradientDescent(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.
[theta,X,y]=featureNormalize();
% Initialize some useful values
m = length(y); % number of training examples
alpha=1;
num_iters=500;
features=size(X,2);
% You need to return the following variables correctly 
J = 0;
%grad = zeros(size(theta));
for i=1:num_iters
  for j=1:features
    temp(j)=theta(j)-(alpha/m)*sum((sigmoid(theta*X')-y').*(X'(j,:)));
  end
  for k=1:features
    theta(k)=temp(k);
  end
  J_history(i)=computeCost(X,y,theta);
end
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
