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
% create two empty matrix and add positive & negative examples to each matrix. Finally plot both of them.
kp = [];
kn = [];
for i=1:length(y)
if y(i) == 1
    kp= [kp; X(i, :)];
    %plot(X(i,1), X(i,2), 'k+')
else
    %plot(X(i,1), X(i,2), 'k-')
    kn=[kn; X(i, :)];
end
end
plot(kp(:,1), kp(:,2), 'k+', 'linewidth', 2, 'markersize', 7)
plot(kn(:,1), kn(:,2), 'ko', 'markerfacecolor', 'y', 'markersize', 7)



% =========================================================================



hold off;

end
