function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);
%정규방정식에대해알아보자~
%X=47x3,y=47x1,theta=3x1
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------
theta=inv(X'*X)*X'*y%역행렬을 구할때는 inv함수를 사용한다.
%pinv,inv차이 1.오류를 막아준다. 뭐 요론게 있다~



% -------------------------------------------------------------


% ============================================================

end
