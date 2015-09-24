function plotData(X,y)
  data=load('ex2data1.txt');
  x=data(:,1:2);
  y=data(:,3);
  pos=find(y==1);
  neg=find(y==0);
  %%plot data
  plot(x(pos,1),x(pos,2),'k+','LineWidth',2,'MarkerSize',7);
  hold on;
  plot(x(neg,1),x(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);
end