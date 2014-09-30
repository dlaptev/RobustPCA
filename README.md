RobustPCA
=========

Robust PCA (Robust Principal Component Analysis) implementation and examples (Matlab).

**Robust PCA** is a matrix factorization method that decomposes the input matrix X into the sum of two matrices L and S, where L is low-rank and S is sparse. This is done by solving the following optimization problem called Principal Component Pursuit (PCP):

> \min ||L||_* + \lambda ||S||_1

> s.t. L + S = X

where ||.||_* is a nuclear norm, ||.||_1 is L1-norm. For more information on Robust PCA please refer to the original paper "Robust principal component analysis?" Emmanuel J. Candès, Xiaodong Li, Yi Ma and John Wright, 2009. The optimization method is ADMM algorithm (Alternating Direction Method of Multipliers).

**Examples:**

  * Toy data example: small toy matrix decomposition into low-rank and sparse component.
![alt text](http://img-fotki.yandex.ru/get/5107/10605357.9/0_85836_f54be680_L.png "Toy data")

  * Inpainting: recovering corrupted images via low-rank representation learning.
![alt text](http://img-fotki.yandex.ru/get/4806/10605357.9/0_85837_18223bc3_L.png "Inpainting")

  * Video decomposition: separating foreground from background in the video.
![alt text](http://img-fotki.yandex.ru/get/4806/10605357.9/0_85838_472a4c65_L.png "Video decomposition")

