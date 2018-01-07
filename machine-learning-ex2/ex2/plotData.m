function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
j = 1;
m = 1;
for i= 1:length(y)
  if y(i) == 1
    X_pos(j,:) = X(i,:);
    j = j + 1;
  else
    X_neg(m,:) = X(i,:);
    m = m + 1;
  end;
end;

plot(X_neg(:,1),X_neg(:,2), 'ko');
hold on;
plot(X_pos(:,1),X_pos(:,2), 'k+');

% =========================================================================


hold off;

end
