function Anew=defalte(A,lambda,v)
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
Anew = a
