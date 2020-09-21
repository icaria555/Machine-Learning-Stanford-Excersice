function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = ones(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1: size(X)
  b_distance = sum((X(i,:) - centroids(1,:)) .^ 2);
  for p = 2 : K 
    tmp_distance = sum((X(i,:) - centroids(p,:)) .^ 2);
    if(tmp_distance < b_distance)
      idx(i) = p;
      b_distance = tmp_distance;
    endif
  endfor
endfor
% =============================================================

end

