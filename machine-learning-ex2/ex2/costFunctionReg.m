function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
theta_dim = size(theta,1)

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


s_theta = theta(2:size(theta,1));

J = - sum(log(Hytho(theta,X)).*y + (1-y).*log(1-Hytho(theta,X)))/m + lambda*(sum(s_theta.*s_theta))/(2*m) ;


grad(1) =  X(:,1)'*(Hytho(theta,X) - y)/m ; 
grad(2:theta_dim) = (X(:,2:theta_dim)'*(Hytho(theta,X) - y) + lambda*theta(2:theta_dim)) /m;






% =============================================================

end
