function plotConvergence(theta,J_history)
  [theta,J_history]=gradientDescent()
  figure;
  plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
  xlabel('Number of iterations');
  ylabel('Cost J');
  % Display gradient descent's result
  fprintf('Theta computed from gradient descent: \n');
  fprintf(' %f \n', theta);
  fprintf('\n');
end
