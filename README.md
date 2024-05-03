The R package is designed for the BMI course and mainly implements RKSIR (Regularized Kernel Sliced Inverse Regression). This method maps the original data to a high-dimensional feature space using kernel tricks and then performs dimension reduction using sliced inverse regression. The main functions in this package and their functionalities are as follows:

**AGKernel, GKernel, PKernel**: Compute the Additive Gaussian Kernel, Radial Gaussian Kernel, and Polynomial Kernel, respectively.

**KX, KX2**: Compute the kernel matrix (Gram matrix) for a single dataset or between two datasets. Support various kernel functions, and allow setting the bandwidth parameter sigma and whether to centralize the matrix.
**Jy**: Compute the slice matrix J based on the response variable y. Support both continuous and categorical response variables. For continuous variables, the number of slices h can be specified.

**Ei**: Compute the eigenvalues and eigenvectors of RKSIR. The inputs are the kernel matrix Kx, slice matrix J, and regularization parameter s.

**Vtr, Vte**: Compute the effective dimension reduction (e.d.r.) directions for the training set and test set, respectively. Inputs include the data matrix, eigenvalues and eigenvectors, number of dimension reduction directions p, etc.

**split**: Randomly split the data into training and test sets based on the response variable. The number of samples for each class in the training set can be specified.

In addition, the package provides a Metropolis random walk sampler rw_MetropolisC implemented in C++, as well as a wine dataset wine.

With this package, it is convenient to perform dimension reduction on data. Taking the wine data as an example, the main steps are as follows:

Randomly split the data into training and test sets
Select an appropriate kernel function and bandwidth parameter, and compute the kernel matrix Kx for the training data
Compute the slice matrix J
Compute the eigenvalues and eigenvectors of RKSIR using Ei
Compute the effective dimension reduction directions for the training set and test set using Vtr and Vte, respectively
Utilize the obtained dimension reduction results to perform classification prediction on the test set in the low-dimensional space


Compared to other dimension reduction methods, the advantage of RKSIR lies in its ability to adaptively select nonlinear transformations and capture the intrinsic low-dimensional manifold structure of the data. The introduction of kernel tricks and regularization terms enhances the flexibility and robustness of the algorithm.

Overall, the package implements the RKSIR algorithm and its main components, providing an effective tool for nonlinear dimension reduction. The usage process is illustrated through examples, and although there are many functions, the calling method is concise and clear. For users with dimension reduction analysis needs, this package has a certain reference value.
