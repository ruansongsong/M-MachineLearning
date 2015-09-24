function [theta,X,y]=loadData2()
  %%load data and map features
  data=load('ex2data2.txt');
  x=data(:,[1,2]);
  y=data(:,3);
  X=mapFeature(x(:,1),x(:,2));
  %initial theta
  theta=zeros(1,size(X,2));
end