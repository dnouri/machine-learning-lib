function [J, gradient] = computeCostLinearRegression(X, y, theta)
  [m, n] = size(X);
  h = X * theta;
  J = 1/(2*m) * sum((h - y) .^ 2);
  gradient = X' * (h - y) ./ m;
end

%!test
%! X = [1 1; 1 2; 1 3];
%! y = [5; 10; 15];
%! options = optimset('GradObj', 'on', 'MaxIter', '10');
%! initial_theta = zeros(2, 1);
%! [theta, function_val, exit_flag] = fminunc(
%!    @(t)(computeCostLinearRegression(X, y, t)), initial_theta, options);
%! assert (computeCostLinearRegressionSimple(X, y, theta) < 0.01);
%! assert (theta, [0; 5], 0.01);
