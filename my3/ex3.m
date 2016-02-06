% One-Vs-All's implement
% Initialization
clear;close all;clc;

% num_labels is from 1 to ten, 10 stands for 0
num_lables = 10;

% ======= Part 1: Loading and Visualizing Data ==========
% Load training data
fprintf('Loading and Visualizing data...\n');

load("ex3data1.mat");
m = size(X,1);
% Randomly 5000 numbers
rand_indices = randperm(m);
% select 100 numbers from 1 to 100
select = X(rand_indices(1:100),:);
% display data
displayData(select);

fprintf("Program paused.Press enter to continue\n");
pause;

% ======= Part 2: OneVsAll ==========
lambda =0.1;
[all_theta] = oneVsAll(X, y, num_lables, lambda);
size(all_theta);

% ======= Part 3: predictOneVsAll ==========
p = predictOneVsAll(all_theta, X);
fprintf('\nTraining Set Accuracy:%f\n', mean(double(p == y))*100);


% ======= Neural Network ==========
% ======= Predict ==========
close all;
fprintf('\nLoading Saved Neural Network Parameters\n');
load("ex3weights.mat");

pred = predict(Theta1, Theta2, X);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;
%  Randomly permute examples
rp = randperm(m);
for i = 1 : m
  fprintf('Display Example Image\n');
  displayData(X(rp(i),:));
  pred = predict(Theta1, Theta2, X(rp(i),:));
  fprintf('\nNeural Network Prediction:%d' , mod(pred, 10));
  fprintf('\nProgram paused.Press enter to continue\n');
  pause;
end







