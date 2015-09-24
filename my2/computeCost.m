function J=computeCost(X,y,theta)
  m=length(y);
  J=(-1/m)*sum(y'.*log(sigmoid(theta*X'))+(1.-y').*log(1-sigmoid(theta*X')));
end