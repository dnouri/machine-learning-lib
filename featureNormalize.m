function [X_norm, mu, sigma] = featureNormalize(X)
  mu = mean(X);
  X_norm = bsxfun(@minus, X, mu);

  sigma = std(X_norm);
  X_norm = bsxfun(@rdivide, X_norm, sigma);
end

%!test
%! X = [0  100  1;
%!      1  200 -1;
%!      2  300  0];
%! [X_norm, mu, sigma] = featureNormalize(X);
%! assert (X_norm, [-1 -1  1;
%!                   0  0 -1;
%!                   1  1  0]);
%! assert (mu, [1 200 0]);
%! assert (sigma, [1 100 1]);
%! assert ((X(1, :) - mu) ./ sigma, X_norm(1, :));
%! assert ((X_norm(1, :) .* sigma) + mu, X(1, :));
