% load data
% Matrix X 5000*400, every row is a training example of handwritten digit image
% Matrix y 5000*1, it contains lables from 1 to 10,10 stands for 0
load("ex3data1.mat");
% Get the size of matrix x
m = size(X,1);
% Randomly select 100 data to display
%% Randomly 5000
rand_indices = randperm(m);
select = X(rand_indices(1:100),:);
% Display selected data
displayData(select);