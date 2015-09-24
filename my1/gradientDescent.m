function [theta,J]=gradientDescent(X,theta,y,alpha,num_iters)
  [X,theta,y]=loadData();
  %%预测函数prediction
  m=length(y);
  %%学习率alpha
  alpha=0.01;
  %%迭代次数 收敛
  num_iters=1500;
  %%特征个数features
  features=size(X,2);
  temp=theta;
  for i=1:num_iters
    for j=1:features
      temp(j)=theta(j)-(alpha/m)*sum((theta*X'-y').*(X'(j,:)));
    end
    for k=1:features
      theta(k)=temp(k);
    end
    J(i)=computeCost(X,y,theta);
    %%偏导数J_d
    %J_d=(alpha/m)*sum((theta*X'-y').*(X'(j,:)))
  end
end
