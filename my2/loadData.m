function [theta,X,y]=loadData()
  %%load data 
  data=load('ex2data1.txt');
  x=data(:,1:2);
  y=data(:,3);
  m=length(y);
  X=[ones(m,1),x];
  theta=zeros(1,size(X,2));
end