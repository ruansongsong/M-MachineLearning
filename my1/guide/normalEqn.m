function [theta] = normalEqn()

%%load data from txt
data=load('ex1data1.txt');

%%initialize some useful values
x=data(:,1);
y=data(:,2);
m = length(y); % number of training examples
X=[ones(m,1),x]; %add a column of ones to x

%%insitialize fitting parameters
theta = zeros(size(X, 2), 1);%size(X,2)=coulumns features
theta=pinv(X'*X)*X'*y;

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------




% -------------------------------------------------------------


% ============================================================

end
