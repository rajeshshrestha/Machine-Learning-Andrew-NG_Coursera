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


Position_positive = find(y == 1);
Position_negative = find(y == 0);

plot(X(Position_positive,1), X(Position_positive, 2), 'g+', 'MarkerSize', 5, 'LineWidth', 2);
plot(X(Position_negative,1), X(Position_negative, 2), 'ko', 'MarkerSize', 5, 'LineWidth', 1, 'MarkerFaceColor', 'r');





% =========================================================================



hold off;

end
