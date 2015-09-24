function [X,theta,y]=featureScaling()
%%根据不同的特征值加载数据
data=load('ex1data2.txt');
x1=data(:,1);
x1=(x1-mean(x1))/(max(x1)-min(x1));
x2=data(:,2);
x2=(x2-mean(x2))/(max(x2)-min(x2));
y=data(:,3);
m=length(y);
%%加一列向量1，theta(0)
X=[ones(m,1),x1,x2];
%%初始化theta
theta=zeros(1,size(X,2));
end