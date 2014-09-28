RobustPCA
=========

Robust PCA (Robust Principal Component Analysis) implementation and examples (Matlab).

**Robust PCA** is a matrix factorization method that decomposes the input matrix X into the sum of two matrices L and S, where L is low-rank and S is sparse. This is done by solving the following optimization problem called Principal Component Pursuit (PCP):

\min ||L||_* + \lambda ||S||_1
s.t. L + S = X

where ||.||_* is a nuclear norm, ||.||_1 is L1-norm. For more information on Robust PCA please refer to the original paper "Robust principal component analysis?" Emmanuel J. Candès, Xiaodong Li, Yi Ma and John Wright, 2011. The optimization method is ADMM algorithm (Alternating Direction Method of Multipliers).

**Examples:**
  * toy_data: small artificial matrix decomposition.
