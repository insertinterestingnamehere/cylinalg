cimport scipy_blas
import numpy as np

def myfunc():
    cdef double[::1,:] a, b, c
    cdef int m, n, k, lda, ldb, ldc
    cdef double alpha, beta
    
    a = np.array([[1, 2], [3, 4]], float, order="F")
    b = np.array([[5, 6], [7, 8]], float, order="F")
    c = np.empty((2, 2), float, order="F")
 
    alpha = 1.0
    beta = 0.0
    lda = 2
    ldb = 2
    ldc = 2
    m = 2
    n = 2
    k = 2
    scipy_blas.dgemm("N", "N", &m, &n, &k, &alpha, &a[0,0], &lda, &b[0,0], &ldb, &beta, &c[0,0], &ldc)
    print(np.asarray(c))
    print(np.dot(a, b))
