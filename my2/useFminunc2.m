function [theta,cost]=useFminunc2()
  [theta,X,y]=loadData2();
  options = optimset('GradObj', 'on', 'MaxIter', 400);
  [theta, cost] = fminunc(@(t)(costFunctionReg(t, X, y)), theta, options);
end