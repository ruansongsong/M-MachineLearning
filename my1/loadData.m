function [X,theta,y]=loadData()
%%根据不同的特征值加载数据
data=load('ex1data1.txt');
x=data(:,1);
mu=mean(x);
s=std(x);
x_norm=x;
for i=1:size(mu,2)
  x_norm(:,i)=(x(:,i).-mu(i))./s(i);
end
y=data(:,2);
m=length(y);
%%加一列向量1，theta(0)
X=[ones(m,1),x_norm];
%%初始化theta
theta=zeros(1,size(X,2));
end