function [eigvc, eigvl] = solve(A,n)
% Solves the eigenvectors and eigenvalues of the given matrix
%   Detailed explanation goes here
eigvc = [];
eigvl = [];
leng = length(A);
Ones = ones(leng, 1);
for i = 1:length(A)
    [lam,x] = powermethod(A,Ones,n);
    eigvl = [eigvl, lam(end)];
    eigvc = [eigvc, x(:,end)];
    A = deflate(A,lam(end),x(:,end));
end



