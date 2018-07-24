function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%  theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
%최적의 파라미터를 찾는것을 학습하는 것이 목표! 직접 코딩으로 알아보자!
%costfunction 말고도 optimization에 이용되는것이 일반적인 방법이다. 
%metrix로 통일.
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
  


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
J_fun = X'*(X*theta-y);
theta=theta-(alpha/m)*J_fun;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
 
end
