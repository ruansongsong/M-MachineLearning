function [all_theta] = oneVsAll(X, y, num_lables, lambda)
  % all_theta's dimension is 10*401,this function returns all the classifiers
  % Get the rows of X, equals 5000
  rows = size(X,1);
  % Get the columns of X, equals 400;
  columns = size(X,2);
  % Initialize all_theta dimension: 10*401;
  all_theta = zeros(num_lables, columns + 1);
  % Initialize X dimension: 5000*401 ,add a column at first column
  X = [ones(rows, 1) X];
  options = optimset('GradObj', 'on', 'MaxIter', 50);
  initial_theta = zeros(columns + 1, 1);
  % each for loop compute a row of theta
  for c=1:num_lables
    all_theta(c,:) = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
            initial_theta, options);
  end
end