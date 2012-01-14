function theta = normalEquationLinearRegression(X, y)
  % Compute the closed-form solution to linear regression
  theta = inv(X' * X) * (X' * y);
end

%!test
%! X = [1 1; 1 2; 1 3];
%! y = [5; 10; 15];
%! theta = normalEquationLinearRegression(X, y);
%! assert (theta, [0; 5], 0.01);
