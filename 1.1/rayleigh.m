function [lambda,x]=rayleigh(A,x0,n)
% Implements the Power Method: Simple but effective way of finding the 
% dominant eigenvalue and eigenvector of a matrix A. It starts with a 
% non-zero estimate x0 for the dominant eigenvector, then iterates 
% according to x1 = A*x0
%              x2 = A*x1 ... for n interations.

% Inputs: A  - Matrix 
%         x0 - Column vector, nonzero estimate of dominant eigenvector
%         n  - No. of iterations of Power Method to be carried out
% Outputs: lambda - Eigenvalue iteration history
%               x - Eigenvector iteration history

% v1 updated 07/12/2016

%% For n iterations - do the power method 
for i=1:n
    % Find maximum of |x0| (stored as m) and its position in the vector (stored as j)
    [m,j] = max(abs(x0));
    
    % Scale vector so that the element of maximum absolute value is 1
    %x0 = x0/x0(j) ;
    x(:,i) = x0;         % Store eigenvector approximation (new column)
    r = (x0' * A * x0)/(x0' * x0);
    x0 = A*x0;           % Do power iteration, overwriting previous 
    
    lambda(1,i) = r; % Store eigenvalue approximation (new column)
end
