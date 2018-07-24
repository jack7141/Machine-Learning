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
hypo=X*theta;%h��(x)=��0x0+��1x1+��2x2+...+��nXn�̰� �ǹǷ� �ᱹ ��X�� ��İ��� �������� �����ִ�. Ʈ���������ؼ� ��İ��� ���� ����
                %�ǹ��� 1 ��Ÿ�� Ʈ������������ ����Ϸ��� ��� �ؾ��Ϸ���?...
Error=(hypo-y).^2;
J=1/(2*m)*sum(Error);
%J=(X*theta-y)'*(X*theta-y)./(2*m)  X�� theta�� ��ķ� ����ϱ� ������ x���� ������ �ٸ���.
%X�� 98x1�̿��� ������, ���� ones�� ����Ͽ� 98x2������ �ٲ㼭 ����Ͽ���.���ǿ��!
% =========================================================================

end
