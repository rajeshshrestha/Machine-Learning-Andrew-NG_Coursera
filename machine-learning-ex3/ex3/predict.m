function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% adding the bias term for first layer
X = [ones(m,1) X];

Resultant_matrix = (sigmoid(X * Theta1'));


%adding the bias term for second layer
Resultant_matrix = [ones(size(Resultant_matrix ,1),1) Resultant_matrix];

Resultant_matrix = sigmoid(Resultant_matrix * Theta2');
[val p] = max(Resultant_matrix , [], 2);







% =========================================================================


end
