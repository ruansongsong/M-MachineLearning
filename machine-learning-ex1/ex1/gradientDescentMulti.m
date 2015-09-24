function [theta] = gradientDescentMulti()

%%load data from txt
data=load('ex1data2.txt');

%%initialize some useful values
x=data(:,1:2);
y=data(:,3);
m = length(y); % number of training examples


%%X=(x-sum(x)/m)/(max(x)-min(x));%不行%%
%%Mean normalization
X=[ones(m,1),x]; %add a column of ones to X

%%insitialize fitting parameters
theta=zeros(1,size(X,2))
%some gradient descent setting
alpha = 0.01;
num_iters = 400;

J =(1/m)*(theta*X'-y')*X %%cost function 的偏导数
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta=theta-alpha*J
    
    J =(1/m)*(theta*X'-y')*X

    % ============================================================

    % Save the cost J in every iteration    

end

end
