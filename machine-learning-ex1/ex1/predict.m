function [theta] = gradientDescent()

%%load data from txt
data=load('ex1data1.txt');

%%initialize some useful values
x=data(:,1);
y=data(:,2);
m = length(y); % number of training examples
X=[ones(m,1),x];
features=size(X,2);
theta=zeros(1,size(X,2));
%%insitialize fitting parameters
%some gradient descent setting
num_iters=1500;
alpha=0.01;
for i=1:num_iters
  for j=1:features
    temp(j)=theat(j)-alpha*sum()
end

end
