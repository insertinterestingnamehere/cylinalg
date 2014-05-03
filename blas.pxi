import scipy.linalg.fblas as fblas
from numpy cimport float32_t as s
from numpy cimport float64_t as d
from numpy cimport complex64_t as c
from numpy cimport complex128_t as z
# Since Scipy >= 0.12.0

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

ctypedef int caxpy_t(int *n, c *ca, c *cx, int *incx, c *cy, int *incy)
cdef caxpy_t *caxpy = <caxpy_t*>f2py_ptr(fblas.caxpy._cpointer)

ctypedef int ccopy_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef ccopy_t *ccopy = <ccopy_t*>f2py_ptr(fblas.ccopy._cpointer)

ctypedef int cdotc_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cdotc_t *cdotc = <cdotc_t*>f2py_ptr(fblas.cdotc._cpointer)

ctypedef int cdotu_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cdotu_t *cdotu = <cdotu_t*>f2py_ptr(fblas.cdotu._cpointer)

ctypedef int cgemm_t(char *transa, char *transb, int *m, int *n, int*k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef cgemm_t *cgemm = <cgemm_t*>f2py_ptr(fblas.cgemm._cpointer)

ctypedef int cgemv_t(char *trans, int *m, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy)
cdef cgemv_t *cgemv = <cgemv_t*>f2py_ptr(fblas.cgemv._cpointer)

ctypedef int cgerc_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda)
cdef cgerc_t *cgerc = <cgerc_t*>f2py_ptr(fblas.cgerc._cpointer)

ctypedef int cgeru_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda)
cdef cgeru_t *cgeru = <cgeru_t*>f2py_ptr(fblas.cgeru._cpointer)

ctypedef int chemm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef chemm_t *chemm = <chemm_t*>f2py_ptr(fblas.chemm._cpointer)

ctypedef int chemv_t(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy)
cdef chemv_t *chemv = <chemv_t*>f2py_ptr(fblas.chemv._cpointer)

ctypedef int cher2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, s *beta, c *c, int *ldc)
cdef cher2k_t *cher2k = <cher2k_t*>f2py_ptr(fblas.cher2k._cpointer)

ctypedef int cherk_t(char *uplo, char *trans, int *n, int *k, s *alpha, c *a, int *lda, s *beta, c *c, int *ldc)
cdef cherk_t *cherk = <cherk_t*>f2py_ptr(fblas.cherk._cpointer)

ctypedef int crotg_t(c *ca, c *cb, s *c, c *s)
cdef crotg_t *crotg = <crotg_t*>f2py_ptr(fblas.crotg._cpointer)

ctypedef int cscal_t(int *n, c *ca, c *cx, int *incx)
cdef cscal_t *cscal = <cscal_t*>f2py_ptr(fblas.cscal._cpointer)

ctypedef int csrot_t(int *n, c *cx, int *incx, c *cy, int *incy, s *c, s *s)
cdef csrot_t *csrot = <csrot_t*>f2py_ptr(fblas.cscal._cpointer)

ctypedef int csscal_t(int *n, s *sa, c *cx, int *incx)
cdef csscal_t *csscal = <csscal_t*>f2py_ptr(fblas.csscal._cpointer)

ctypedef int cswap_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cswap_t *cswap = <cswap_t*>f2py_ptr(fblas.cswap._cpointer)

ctypedef int csymm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef csymm_t *csymm = <csymm_t*>f2py_ptr(fblas.csymm._cpointer)

ctypedef int csyr2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef csyr2k_t *csyr2k = <csyr2k_t*>f2py_ptr(fblas.csyr2k._cpointer)

ctypedef int csyrk_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *beta, c *c, int *ldc)
cdef csyrk_t *csyrk = <csyrk_t*>f2py_ptr(fblas.csyrk._cpointer)

ctypedef int ctrmv_t(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx)
cdef ctrmv_t *ctrmv = <ctrmv_t*>f2py_ptr(fblas.ctrmv._cpointer)



ctypedef int dasum_t(int *n, d *dx, int *incx)
cdef dasum_t *dasum = <dasum_t*>f2py_ptr(fblas.dasum._cpointer)

ctypedef int daxpy_t(int *n, d *ca, d *cx, int *incx, d *cy, int *incy)
cdef daxpy_t *daxpy = <daxpy_t*>f2py_ptr(fblas.daxpy._cpointer)

ctypedef int dcopy_t(int *n, d *cx, int *incx, d *cy, int *incy)
cdef dcopy_t *dcopy = <dcopy_t*>f2py_ptr(fblas.dcopy._cpointer)

ctypedef int ddot_t(int *n, d *cx, int *incx, d *cy, int *incy)
cdef ddot_t *ddot = <ddot_t*>f2py_ptr(fblas.ddot._cpointer)

ctypedef int dgemm_t(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dgemm_t *dgemm = <dgemm_t*>f2py_ptr(fblas.dgemm._cpointer)

ctypedef int dgemv_t(char *trans, int *m, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy)
cdef dgemv_t *dgemv = <dgemv_t*>f2py_ptr(fblas.dgemv._cpointer)

ctypedef int dger_t(int *m, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda)
cdef dger_t *dger = <dger_t*>f2py_ptr(fblas.dger._cpointer)

ctypedef int dnrm2_t(int *n, d *x, int *incx)
cdef dnrm2_t *dnrm2 = <dnrm2_t*>f2py_ptr(fblas.dnrm2._cpointer)

ctypedef int drot_t(int *n, d *dx, int *incx, d *dy, int *incy, d *c, d *s)
cdef drot_t *drot = <drot_t*>f2py_ptr(fblas.drot._cpointer)

ctypedef int drotg_t(d *da, d *db, d *c ,d *s)
cdef drotg_t *drotg = <drotg_t*>f2py_ptr(fblas.drotg._cpointer)

ctypedef int drotm_t(int *n, d *dx, int *incx, d *dy, int *incy, d *dparam)
cdef drotm_t *drotm = <drotm_t*>f2py_ptr(fblas.drotm._cpointer)

ctypedef int drotmg_t(d *dd1, d *dd2, d *dx1, d *dy1, d *dparam)
cdef drotmg_t *drotmg = <drotmg_t*>f2py_ptr(fblas.drotmg._cpointer)

ctypedef int dscal_t(int *n, d *ca, d *cx, int *incx)
cdef dscal_t *dscal = <dscal_t*>f2py_ptr(fblas.dscal._cpointer)

ctypedef int dswap_t(int *n, d *cx, int *incx, d *cy, int *incy)
cdef dswap_t *dswap = <dswap_t*>f2py_ptr(fblas.dswap._cpointer)

ctypedef int dsymm_t(char *side, char *uplo, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dsymm_t *dsymm = <dsymm_t*>f2py_ptr(fblas.dsymm._cpointer)

ctypedef int dsymv_t(char *uplo, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy)
cdef dsymv_t *dsymv = <dsymv_t*>f2py_ptr(fblas.dsymv._cpointer)

ctypedef int dsyr2k_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dsyr2k_t *dsyr2k = <dsyr2k_t*>f2py_ptr(fblas.dsyr2k._cpointer)

ctypedef int dsyrk_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *beta, d *c, int *ldc)
cdef dsyrk_t *dsyrk = <dsyrk_t*>f2py_ptr(fblas.dsyrk._cpointer)

ctypedef int dtrmv_t(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx)
cdef dtrmv_t *dtrmv = <dtrmv_t*>f2py_ptr(fblas.dtrmv._cpointer)

ctypedef d dzasum_t(int *n, z *zx, int *incx)
cdef dzasum_t *dzasum = <dzasum_t*>f2py_ptr(fblas.dzasum._cpointer)

ctypedef d dznrm2_t(int *n, z *x, int *incx)
cdef dznrm2_t *dznrm2 = <dznrm2_t*>f2py_ptr(fblas.dznrm2._cpointer)

ctypedef int icamax_t(int *n, c *cx, int *incx)
cdef icamax_t *icamax = <icamax_t*>f2py_ptr(fblas.icamax._cpointer)

ctypedef int idamax_t(int *n, d *cx, int *incx)
cdef idamax_t *idamax = <idamax_t*>f2py_ptr(fblas.idamax._cpointer)

ctypedef int isamax_t(int *n, s *cx, int *incx)
cdef isamax_t *isamax = <isamax_t*>f2py_ptr(fblas.isamax._cpointer)

ctypedef int izamax_t(int *n, z *cx, int *incx)
cdef izamax_t *izamax = <izamax_t*>f2py_ptr(fblas.izamax._cpointer)
