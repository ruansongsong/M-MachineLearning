%% ============= Part 4: Visualizing J(theta_0, theta_1) =============
function visualJ()
fprintf('Visualizing J(theta_0, theta_1) ...\n')

%%load data from txt
data=load('ex1data1.txt');

%%initialize some useful values
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
% Grid over which we will calculate J
theta0_vals = linspace(-10, 20, 100);
theta1_vals = linspace(-1, 10, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
    J_vals(i,j)=computeCost(X,y,t');  
	  %J_vals(i,j) = computeCost(X, y, t);
    end
end


% Because of the way meshgrids work in the surf command, we need to 
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
[theta,J]=gradientDescent();
plot(theta(1),theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 1);
end