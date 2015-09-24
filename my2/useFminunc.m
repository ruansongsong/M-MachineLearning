function [theta,cost]=useFminunc()
  [theta,X,y]=loadData();
  options = optimset('GradObj', 'on', 'MaxIter', 500);
  [theta, cost] = fminunc(@(t)(costFunction(t, X, y)), theta, options);
end