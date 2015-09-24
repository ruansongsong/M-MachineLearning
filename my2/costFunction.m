function [J,grad] = costFunction(theta, X, y)
J=0;
%grad = zeros(size(theta));
m=length(y);
hx=sigmoid(theta*X');
J=(-1/m)*sum(y'.*log(hx)+(1.-y').*log(1-hx));
%J = 1/m * sum([-y' * (log(hx))' - (1 - y)' * (log(1 - hx))']);
grad=(1/m)*(hx-y')*X;
%grad = (1.0/m) .* X' * (hx' - y); 
end