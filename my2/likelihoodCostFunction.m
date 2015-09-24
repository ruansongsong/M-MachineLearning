function [theta,cost]=likelihoodCostFunction()
  [theta,X,y]=loadData();
  [cost,grad]=costFunction(theta,X,y);
  alpha=0.1;
  threshold=0.1;
  num_iters=500;
  costs=[];
 for i=1:num_iters
    theta=theta-alpha*grad;
    [cost,grad]=costFunction(theta,X,y);
    costs=[costs cost];
    %i+=1
  end
end