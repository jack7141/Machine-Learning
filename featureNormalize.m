function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;%X=47x3
mu = zeros(1, size(X, 2));% 1x2 평균값을 의
sigma = zeros(1, size(X, 2));%1x2미 표준편차


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

%현재 이장에서 하고자 하는것은 normalization 즉 정규화! 정규화란 1~100으로 데이터를 설정하여 데이터군!에서 특정
%데이터가 가지는 위치를 볼때! 사용한다...현재 가우스의 분포도로 이해했음..
%mu=sum(X_norm)/size(X,1);%평균값을 구하고~47x3
%sigma=std(X);%1x3 표준편차를 구해준다
%X_norm=(X.-mu)./sigma;
%X_norm=[ones(size(X,1),1),result];
%mean(X)이렇게 해도 평균을 구해줌 mean은 평균값을 구해주는 함수 그래서 아래와 같이 풀이해도 풀림!
mu=mean(X);
sigma=std(X);
X_norm=(X.-mu)./sigma;

% ============================================================

end
