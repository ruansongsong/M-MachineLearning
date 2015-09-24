function J=computeCost(X,y,theta)
J=0;
%[X,theta,y]=loadData();
%%预测函数prediction
%prediction=theta*X';
m=length(y);
%%cost functionn
J=(1/(2*m))*(theta*X'-y')*(theta*X'-y')';
end