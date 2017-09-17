function Anew =deflate(A,lambda,v)

% Inputs: A  -  Matrix 
%               The Matrix to deflate  
%         lambda  - int 
%                   lambda is sepcific eigenvalue to deflate by
%         v  - Matrix
% Outputs: Anew  - The new deflated matrix
norm_v = normc(v);
norm_v_t = norm_v';
Anew = A - lambda * (norm_v * norm_v_t);
