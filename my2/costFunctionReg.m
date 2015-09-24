function [J, grad] = costFunctionReg(theta, X, y)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 
lambda=0.5;
% Initialize some useful values
m = length(y); % number of training examples
hx=sigmoid(theta*X');
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
%J=(1/(2*m))*((hx-y')*(hx-y')'+lambda*sum(theta.^2));
J=(-1/m)*sum(y'.*log(hx)+(1.-y').*log(1-hx))+(lambda/(2*m))*sum(theta.^2);
grad=(1/m)*((hx-y')*X+lambda*theta);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
