function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
%size(X)%97x2
%size(y)%97x1
%size(theta)%2x1
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
hypo=X*theta;%hΘ(x)=Θ0x0+Θ1x1+Θ2x2+...+ΘnXn이게 되므로 결국 ΘX로 행렬간의 곱셈으로 볼수있다. 트랜스포짓해서 행렬간의 곱도 가능
                %의문점 1 셋타의 트랜스포짓으로 계산하려면 어떻게 해야하려나?...
Error=(hypo-y).^2;
J=1/(2*m)*sum(Error);
%J=(X*theta-y)'*(X*theta-y)./(2*m)  X와 theta은 행렬로 계산하기 때문에 x와의 개념이 다르다.
%X가 98x1이였기 때문에, 따로 ones를 사용하여 98x2행으로 바꿔서 계산하였다.주의요망!
% =========================================================================

end
