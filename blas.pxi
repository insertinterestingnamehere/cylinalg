import scipy.linalg.blas as blas
from numpy cimport float32_t as s
from numpy cimport float64_t as d
from numpy cimport complex64_t as c
from numpy cimport complex128_t as z
# Since Scipy >= 0.12.0

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

ctypedef int caxpy_t(int *n, c *ca, c *cx, int *incx, c *cy, int *incy)
cdef caxpy_t *caxpy = <caxpy_t*>f2py_ptr(blas.caxpy._cpointer)

ctypedef int ccopy_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef ccopy_t *ccopy = <ccopy_t*>f2py_ptr(blas.ccopy._cpointer)

ctypedef int cdotc_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cdotc_t *cdotc = <cdotc_t*>f2py_ptr(blas.cdotc._cpointer)

ctypedef int cdotu_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cdotu_t *cdotu = <cdotu_t*>f2py_ptr(blas.cdotu._cpointer)

ctypedef int cgemm_t(char *transa, char *transb, int *m, int *n, int*k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef cgemm_t *cgemm = <cgemm_t*>f2py_ptr(blas.cgemm._cpointer)

ctypedef int cgemv_t(char *trans, int *m, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy)
cdef cgemv_t *cgemv = <cgemv_t*>f2py_ptr(blas.cgemv._cpointer)

ctypedef int cgerc_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda)
cdef cgerc_t *cgerc = <cgerc_t*>f2py_ptr(blas.cgerc._cpointer)

ctypedef int cgeru_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda)
cdef cgeru_t *cgeru = <cgeru_t*>f2py_ptr(blas.cgeru._cpointer)

ctypedef int chemm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef chemm_t *chemm = <chemm_t*>f2py_ptr(blas.chemm._cpointer)

ctypedef int chemv_t(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy)
cdef chemv_t *chemv = <chemv_t*>f2py_ptr(blas.chemv._cpointer)

ctypedef int cher2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, s *beta, c *c, int *ldc)
cdef cher2k_t *cher2k = <cher2k_t*>f2py_ptr(blas.cher2k._cpointer)

ctypedef int cherk_t(char *uplo, char *trans, int *n, int *k, s *alpha, c *a, int *lda, s *beta, c *c, int *ldc)
cdef cherk_t *cherk = <cherk_t*>f2py_ptr(blas.cherk._cpointer)

ctypedef int crotg_t(c *ca, c *cb, s *c, c *s)
cdef crotg_t *crotg = <crotg_t*>f2py_ptr(blas.crotg._cpointer)

ctypedef int cscal_t(int *n, c *ca, c *cx, int *incx)
cdef cscal_t *cscal = <cscal_t*>f2py_ptr(blas.cscal._cpointer)

ctypedef int csrot_t(int *n, c *cx, int *incx, c *cy, int *incy, s *c, s *s)
cdef csrot_t *csrot = <csrot_t*>f2py_ptr(blas.cscal._cpointer)

ctypedef int csscal_t(int *n, s *sa, c *cx, int *incx)
cdef csscal_t *csscal = <csscal_t*>f2py_ptr(blas.csscal._cpointer)

ctypedef int cswap_t(int *n, c *cx, int *incx, c *cy, int *incy)
cdef cswap_t *cswap = <cswap_t*>f2py_ptr(blas.cswap._cpointer)

ctypedef int csymm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef csymm_t *csymm = <csymm_t*>f2py_ptr(blas.csymm._cpointer)

ctypedef int csyr2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc)
cdef csyr2k_t *csyr2k = <csyr2k_t*>f2py_ptr(blas.csyr2k._cpointer)

ctypedef int csyrk_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *beta, c *c, int *ldc)
cdef csyrk_t *csyrk = <csyrk_t*>f2py_ptr(blas.csyrk._cpointer)

ctypedef int ctrmv_t(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx)
cdef ctrmv_t *ctrmv = <ctrmv_t*>f2py_ptr(blas.ctrmv._cpointer)



ctypedef int dasum_t(int *n, d *dx, int *incx)
cdef dasum_t *dasum = <dasum_t*>f2py_ptr(blas.dasum._cpointer)

ctypedef int daxpy_t(int *n, d *da, d *dx, int *incx, d *dy, int *incy)
cdef daxpy_t *daxpy = <daxpy_t*>f2py_ptr(blas.daxpy._cpointer)

ctypedef int dcopy_t(int *n, d *dx, int *incx, d *dy, int *incy)
cdef dcopy_t *dcopy = <dcopy_t*>f2py_ptr(blas.dcopy._cpointer)

ctypedef int ddot_t(int *n, d *dx, int *incx, d *dy, int *incy)
cdef ddot_t *ddot = <ddot_t*>f2py_ptr(blas.ddot._cpointer)

ctypedef int dgemm_t(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dgemm_t *dgemm = <dgemm_t*>f2py_ptr(blas.dgemm._cpointer)

ctypedef int dgemv_t(char *trans, int *m, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy)
cdef dgemv_t *dgemv = <dgemv_t*>f2py_ptr(blas.dgemv._cpointer)

ctypedef int dger_t(int *m, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda)
cdef dger_t *dger = <dger_t*>f2py_ptr(blas.dger._cpointer)

ctypedef int dnrm2_t(int *n, d *x, int *incx)
cdef dnrm2_t *dnrm2 = <dnrm2_t*>f2py_ptr(blas.dnrm2._cpointer)

ctypedef int drot_t(int *n, d *dx, int *incx, d *dy, int *incy, d *c, d *s)
cdef drot_t *drot = <drot_t*>f2py_ptr(blas.drot._cpointer)

ctypedef int drotg_t(d *da, d *db, d *c ,d *s)
cdef drotg_t *drotg = <drotg_t*>f2py_ptr(blas.drotg._cpointer)

ctypedef int drotm_t(int *n, d *dx, int *incx, d *dy, int *incy, d *dparam)
cdef drotm_t *drotm = <drotm_t*>f2py_ptr(blas.drotm._cpointer)

ctypedef int drotmg_t(d *dd1, d *dd2, d *dx1, d *dy1, d *dparam)
cdef drotmg_t *drotmg = <drotmg_t*>f2py_ptr(blas.drotmg._cpointer)

ctypedef int dscal_t(int *n, d *da, d *dx, int *incx)
cdef dscal_t *dscal = <dscal_t*>f2py_ptr(blas.dscal._cpointer)

ctypedef int dswap_t(int *n, d *dx, int *incx, d *dy, int *incy)
cdef dswap_t *dswap = <dswap_t*>f2py_ptr(blas.dswap._cpointer)

ctypedef int dsymm_t(char *side, char *uplo, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dsymm_t *dsymm = <dsymm_t*>f2py_ptr(blas.dsymm._cpointer)

ctypedef int dsymv_t(char *uplo, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy)
cdef dsymv_t *dsymv = <dsymv_t*>f2py_ptr(blas.dsymv._cpointer)

ctypedef int dsyr2k_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc)
cdef dsyr2k_t *dsyr2k = <dsyr2k_t*>f2py_ptr(blas.dsyr2k._cpointer)

ctypedef int dsyrk_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *beta, d *c, int *ldc)
cdef dsyrk_t *dsyrk = <dsyrk_t*>f2py_ptr(blas.dsyrk._cpointer)

ctypedef int dtrmv_t(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx)
cdef dtrmv_t *dtrmv = <dtrmv_t*>f2py_ptr(blas.dtrmv._cpointer)

ctypedef d dzasum_t(int *n, z *zx, int *incx)
cdef dzasum_t *dzasum = <dzasum_t*>f2py_ptr(blas.dzasum._cpointer)

ctypedef d dznrm2_t(int *n, z *x, int *incx)
cdef dznrm2_t *dznrm2 = <dznrm2_t*>f2py_ptr(blas.dznrm2._cpointer)



ctypedef int icamax_t(int *n, c *cx, int *incx)
cdef icamax_t *icamax = <icamax_t*>f2py_ptr(blas.icamax._cpointer)

ctypedef int idamax_t(int *n, d *dx, int *incx)
cdef idamax_t *idamax = <idamax_t*>f2py_ptr(blas.idamax._cpointer)

ctypedef int isamax_t(int *n, s *sx, int *incx)
cdef isamax_t *isamax = <isamax_t*>f2py_ptr(blas.isamax._cpointer)

ctypedef int izamax_t(int *n, z *zx, int *incx)
cdef izamax_t *izamax = <izamax_t*>f2py_ptr(blas.izamax._cpointer)



ctypedef int sasum_t(int *n, s *sx, int *incx)
cdef sasum_t *sasum = <sasum_t*>f2py_ptr(blas.sasum._cpointer)

ctypedef int saxpy_t(int *n, s *sa, s *sx, int *incx, s *sy, int *incy)
cdef saxpy_t *saxpy = <saxpy_t*>f2py_ptr(blas.saxpy._cpointer)

ctypedef int scasum_t(int *n, c *cx, int *incx)
cdef scasum_t *scasum = <scasum_t*>f2py_ptr(blas.scasum._cpointer)

ctypedef int scnrm2_t(int *n, c *x, int *incx)
cdef scnrm2_t *scnrm2 = <scnrm2_t*>f2py_ptr(blas.scnrm2._cpointer)

ctypedef int scopy_t(int *n, s *sx, int *incx, s *sy, int *incy)
cdef scopy_t *scopy = <scopy_t*>f2py_ptr(blas.scopy._cpointer)

ctypedef int sdot_t(int *n, s *sx, int *incx, s *sy, int *incy)
cdef sdot_t *sdot = <sdot_t*>f2py_ptr(blas.sdot._cpointer)

ctypedef int sgemm_t(char *transa, char *transb, int *m, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc)
cdef sgemm_t *sgemm = <sgemm_t*>f2py_ptr(blas.sgemm._cpointer)

ctypedef int sgemv_t(char *trans, int *m, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy)
cdef sgemv_t *sgemv = <sgemv_t*>f2py_ptr(blas.sgemv._cpointer)

ctypedef int sger_t(int *m, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *a, int *lda)
cdef sger_t *sger = <sger_t*>f2py_ptr(blas.sger._cpointer)

ctypedef int snrm2_t(int *n, s *x, int *incx)
cdef snrm2_t *snrm2 = <snrm2_t*>f2py_ptr(blas.snrm2._cpointer)

ctypedef int srot_t(int *n, s *sx, int *incx, s *sy, int *incy, s *c, s *s)
cdef srot_t *srot = <srot_t*>f2py_ptr(blas.srot._cpointer)

ctypedef int srotg_t(s *sa, s *sb, s *c ,s *s)
cdef srotg_t *srotg = <srotg_t*>f2py_ptr(blas.srotg._cpointer)

ctypedef int srotm_t(int *n, s *sx, int *incx, s *sy, int *incy, s *sparam)
cdef srotm_t *srotm = <srotm_t*>f2py_ptr(blas.srotm._cpointer)

ctypedef int srotmg_t(s *sd1, s *sd2, s *sx1, s *sy1, s *sparam)
cdef srotmg_t *srotmg = <srotmg_t*>f2py_ptr(blas.srotmg._cpointer)

ctypedef int sscal_t(int *n, s *sa, s *sx, int *incx)
cdef sscal_t *sscal = <sscal_t*>f2py_ptr(blas.sscal._cpointer)

ctypedef int sswap_t(int *n, s *sx, int *incx, s *sy, int *incy)
cdef sswap_t *sswap = <sswap_t*>f2py_ptr(blas.sswap._cpointer)

ctypedef int ssymm_t(char *side, char *uplo, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc)
cdef ssymm_t *ssymm = <ssymm_t*>f2py_ptr(blas.ssymm._cpointer)

ctypedef int ssymv_t(char *uplo, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy)
cdef ssymv_t *ssymv = <ssymv_t*>f2py_ptr(blas.ssymv._cpointer)

ctypedef int ssyr2k_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc)
cdef ssyr2k_t *ssyr2k = <ssyr2k_t*>f2py_ptr(blas.ssyr2k._cpointer)

ctypedef int ssyrk_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *beta, s *c, int *ldc)
cdef ssyrk_t *ssyrk = <ssyrk_t*>f2py_ptr(blas.ssyrk._cpointer)

ctypedef int strmv_t(char *uplo, char *trans, char *diag, int *n, s *a, int *lda, s *x, int *incx)
cdef strmv_t *strmv = <strmv_t*>f2py_ptr(blas.strmv._cpointer)



ctypedef int zaxpy_t(int *n, z *za, z *zx, int *incx, z *zy, int *incy)
cdef zaxpy_t *zaxpy = <zaxpy_t*>f2py_ptr(blas.zaxpy._cpointer)

ctypedef int zcopy_t(int *n, z *zx, int *incx, z *zy, int *incy)
cdef zcopy_t *zcopy = <zcopy_t*>f2py_ptr(blas.zcopy._cpointer)

ctypedef int zdotc_t(int *n, z *zx, int *incx, z *zy, int *incy)
cdef zdotc_t *zdotc = <zdotc_t*>f2py_ptr(blas.zdotc._cpointer)

ctypedef int zdotu_t(int *n, z *zx, int *incx, z *zy, int *incy)
cdef zdotu_t *zdotu = <zdotu_t*>f2py_ptr(blas.zdotu._cpointer)

ctypedef int zdrot_t(int *n, z *cx, int *incx, z *cy, int *incy, d *c, d *s)
cdef zdrot_t *zdrot = <zdrot_t*>f2py_ptr(blas.zdrot._cpointer)

ctypedef int zdscal_t(int *n, d *da, z *zx, int *incx)
cdef zdscal_t *zdscal = <zdscal_t*>f2py_ptr(blas.zdscal._cpointer)

ctypedef int zgemm_t(char *transa, char *transb, int *m, int *n, int*k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc)
cdef zgemm_t *zgemm = <zgemm_t*>f2py_ptr(blas.zgemm._cpointer)

ctypedef int zgemv_t(char *trans, int *m, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy)
cdef zgemv_t *zgemv = <zgemv_t*>f2py_ptr(blas.zgemv._cpointer)

ctypedef int zgerc_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda)
cdef zgerc_t *zgerc = <zgerc_t*>f2py_ptr(blas.zgerc._cpointer)

ctypedef int zgeru_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda)
cdef zgeru_t *zgeru = <zgeru_t*>f2py_ptr(blas.zgeru._cpointer)

ctypedef int zhemm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc)
cdef zhemm_t *zhemm = <zhemm_t*>f2py_ptr(blas.zhemm._cpointer)

ctypedef int zhemv_t(char *uplo, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy)
cdef zhemv_t *zhemv = <zhemv_t*>f2py_ptr(blas.zhemv._cpointer)

ctypedef int zher2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, d *beta, z *c, int *ldc)
cdef zher2k_t *zher2k = <zher2k_t*>f2py_ptr(blas.zher2k._cpointer)

ctypedef int zherk_t(char *uplo, char *trans, int *n, int *k, d *alpha, z *a, int *lda, d *beta, z *c, int *ldc)
cdef zherk_t *zherk = <zherk_t*>f2py_ptr(blas.zherk._cpointer)

ctypedef int zrotg_t(z *ca, z *cb, d *c, z *s)
cdef zrotg_t *zrotg = <zrotg_t*>f2py_ptr(blas.zrotg._cpointer)

ctypedef int zscal_t(int *n, z *za, z *zx, int *incx)
cdef zscal_t *zscal = <zscal_t*>f2py_ptr(blas.zscal._cpointer)

ctypedef int zswap_t(int *n, z *zx, int *incx, z *zy, int *incy)
cdef zswap_t *zswap = <zswap_t*>f2py_ptr(blas.zswap._cpointer)

ctypedef int zsymm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc)
cdef zsymm_t *zsymm = <zsymm_t*>f2py_ptr(blas.zsymm._cpointer)

ctypedef int zsyr2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc)
cdef zsyr2k_t *zsyr2k = <zsyr2k_t*>f2py_ptr(blas.zsyr2k._cpointer)

ctypedef int zsyrk_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *beta, z *c, int *ldc)
cdef zsyrk_t *zsyrk = <zsyrk_t*>f2py_ptr(blas.zsyrk._cpointer)

ctypedef int ztrmv_t(char *uplo, char *trans, char *diag, int *n, z *a, int *lda, z *x, int *incx)
cdef ztrmv_t *ztrmv = <ztrmv_t*>f2py_ptr(blas.ztrmv._cpointer)
