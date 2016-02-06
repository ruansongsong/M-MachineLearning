function p = predictOneVsAll(all_theta, X)
% p is a 10*1 vector.Return a vector of predictions for each example in matrix X.
% all_theta is a trained classifier.10*401
% Get the rows of matrix X
rows = size(X,1);
% num_lables = size(all_theta,1);
p = zeros(size(X, 1), 1);
% add a column at the first of X
X = [ones(rows, 1) X];
% 返回p每行最大值的索引位置，即要预测的值
[element_val, p] = max(sigmoid(X * all_theta'), [], 2);
end