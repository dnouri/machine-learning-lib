% computes the cost of using theta as the parameter for linear regression to
% fit the data points in X and y

function J = computeCostLinearRegressionSimple(X, y, theta)
  m = length(y);
  J = 1/(2*m) * sum((X * theta - y) .^ 2);
end

%!test
%! X = [1 1; 1 2; 1 3];
%! y = [5; 10; 15];
%! theta = [0; 5];
%! assert (computeCostLinearRegressionSimple(X, y, theta), 0);
