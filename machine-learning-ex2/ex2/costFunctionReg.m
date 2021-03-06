function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

theta_nonz = theta(2:end); 
hTheta = sigmoid(X * theta);

J = - y' * log(hTheta) - (1-y)' * log(1 - hTheta) ...
    + lambda .* (theta_nonz' * theta_nonz) ./ 2;
J = J/m;

grad = zeros(size(theta));
grad(1) = X(:, 1)' * (hTheta - y) ./ m;
grad(2:end) = X(:, 2:end)' * (hTheta - y) ./ m + lambda .* theta_nonz ./ m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
