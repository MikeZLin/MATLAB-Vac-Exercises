function [eigvc, eigvl] = solve_rayleigh(A,n)
% Solves the eigenvectors and eigenvalues of the given matrix
%   Detailed explanation goes here
eigvc = [];
eigvl = [];
leng = length(A);
Ones = zeros(leng, 1);
Ones(1) = 1;
for i = 1:length(A)
    [lam,x] = rayleigh(A,Ones,n);
    eigvl = [eigvl, lam(end)];
    eigvc = [eigvc, normc(x(:,end))];
    A = deflate(A,lam(end),normc(x(:,end)));
end



