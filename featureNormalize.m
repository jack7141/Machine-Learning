function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;%X=47x3
mu = zeros(1, size(X, 2));% 1x2 ��հ��� ��
sigma = zeros(1, size(X, 2));%1x2�� ǥ������


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%  

%���� ���忡�� �ϰ��� �ϴ°��� normalization �� ����ȭ! ����ȭ�� 1~100���� �����͸� �����Ͽ� �����ͱ�!���� Ư��
%�����Ͱ� ������ ��ġ�� ����! ����Ѵ�...���� ���콺�� �������� ��������..
%mu=sum(X_norm)/size(X,1);%��հ��� ���ϰ�~47x3
%sigma=std(X);%1x3 ǥ�������� �����ش�
%X_norm=(X.-mu)./sigma;
%X_norm=[ones(size(X,1),1),result];
%mean(X)�̷��� �ص� ����� ������ mean�� ��հ��� �����ִ� �Լ� �׷��� �Ʒ��� ���� Ǯ���ص� Ǯ��!
mu=mean(X);
sigma=std(X);
X_norm=(X.-mu)./sigma;

% ============================================================

end
