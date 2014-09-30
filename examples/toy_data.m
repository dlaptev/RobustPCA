%% toy RobustPCA example: artificial data
addpath('../');

M = 50; N = 100;  % data matrix size
toy_rank = 5;     % rank of the low-rank component
toy_card = 0.20;  % cardinality of the sparse component

% generate random basis vectors
r = {};
for i = (1:toy_rank)
    r{i} = rand(1,N);
end

% stack them into a matrix
X0 = zeros(M,N);
for i = (1:M)
    ind = floor(rand*toy_rank + 1);
    X0(i,:) = r{ind};
end
X0 = X0 - mean(X0(:));

% add some sparse noise
X1 = sign(rand(M,N) - 0.5);
X1 = X1 .* (rand(M,N) < toy_card);
X = X0 + X1;

% run Robust PCA and show results
[L, S] = RobustPCA(X);

figure;
subplot(2,3,1), imshow(X0), title('Original low-rank')
subplot(2,3,2), imshow(X1), title('Original sparse')
subplot(2,3,3), imshow(X), title('Original sum')
subplot(2,3,4), imshow(L), title('Reconstructed low-rank')
subplot(2,3,5), imshow(S), title('Reconstructed sparse')
subplot(2,3,6), imshow(L+S), title('Reconstructed sum')

fprintf(1, 'rank(L) = %d\n', rank(L));
fprintf(1, 'nnz(S)/(M*N) = %d%%\n', round(100*nnz(S)/length(S(:))));
