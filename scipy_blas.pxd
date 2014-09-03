ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

# Single precision complex routines:
ctypedef int caxpy_t(int *n, c *ca, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int ccopy_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cdotc_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cdotu_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cgemm_t(char *transa, char *transb, int *m, int *n, int*k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int cgemv_t(char *trans, int *m, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
ctypedef int cgerc_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
ctypedef int cgeru_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
ctypedef int chemm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int chemv_t(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
ctypedef int cher2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, s *beta, c *c, int *ldc) nogil
ctypedef int cherk_t(char *uplo, char *trans, int *n, int *k, s *alpha, c *a, int *lda, s *beta, c *c, int *ldc) nogil
ctypedef int crotg_t(c *ca, c *cb, s *c, c *s) nogil
ctypedef int cscal_t(int *n, c *ca, c *cx, int *incx) nogil
ctypedef int csrot_t(int *n, c *cx, int *incx, c *cy, int *incy, s *c, s *s) nogil
ctypedef int csscal_t(int *n, s *sa, c *cx, int *incx) nogil
ctypedef int cswap_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int csymm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int csyr2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int csyrk_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *beta, c *c, int *ldc) nogil
ctypedef int ctrmv_t(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx) nogil
ctypedef int dasum_t(int *n, d *dx, int *incx) nogil
ctypedef int daxpy_t(int *n, d *da, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dcopy_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int ddot_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dgemm_t(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dgemv_t(char *trans, int *m, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
ctypedef int dger_t(int *m, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda) nogil
ctypedef int dnrm2_t(int *n, d *x, int *incx) nogil
ctypedef int drot_t(int *n, d *dx, int *incx, d *dy, int *incy, d *c, d *s) nogil
ctypedef int drotg_t(d *da, d *db, d *c ,d *s) nogil
ctypedef int drotm_t(int *n, d *dx, int *incx, d *dy, int *incy, d *dparam) nogil
ctypedef int drotmg_t(d *dd1, d *dd2, d *dx1, d *dy1, d *dparam) nogil
ctypedef int dscal_t(int *n, d *da, d *dx, int *incx) nogil
ctypedef int dswap_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dsymm_t(char *side, char *uplo, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dsymv_t(char *uplo, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
ctypedef int dsyr2k_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dsyrk_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *beta, d *c, int *ldc) nogil
ctypedef int dtrmv_t(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx) nogil
ctypedef d dzasum_t(int *n, z *zx, int *incx) nogil
ctypedef d dznrm2_t(int *n, z *x, int *incx) nogil
ctypedef int icamax_t(int *n, c *cx, int *incx) nogil
ctypedef int idamax_t(int *n, d *dx, int *incx) nogil
ctypedef int isamax_t(int *n, s *sx, int *incx) nogil
ctypedef int izamax_t(int *n, z *zx, int *incx) nogil
ctypedef int sasum_t(int *n, s *sx, int *incx) nogil
ctypedef int saxpy_t(int *n, s *sa, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int scasum_t(int *n, c *cx, int *incx) nogil
ctypedef int scnrm2_t(int *n, c *x, int *incx) nogil
ctypedef int scopy_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int sdot_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int sgemm_t(char *transa, char *transb, int *m, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int sgemv_t(char *trans, int *m, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
ctypedef int sger_t(int *m, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *a, int *lda) nogil
ctypedef int snrm2_t(int *n, s *x, int *incx) nogil
ctypedef int srot_t(int *n, s *sx, int *incx, s *sy, int *incy, s *c, s *s) nogil
ctypedef int srotg_t(s *sa, s *sb, s *c ,s *s) nogil
ctypedef int srotm_t(int *n, s *sx, int *incx, s *sy, int *incy, s *sparam) nogil
ctypedef int srotmg_t(s *sd1, s *sd2, s *sx1, s *sy1, s *sparam) nogil
ctypedef int sscal_t(int *n, s *sa, s *sx, int *incx) nogil
ctypedef int sswap_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int ssymm_t(char *side, char *uplo, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int ssymv_t(char *uplo, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
ctypedef int ssyr2k_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int ssyrk_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *beta, s *c, int *ldc) nogil
ctypedef int strmv_t(char *uplo, char *trans, char *diag, int *n, s *a, int *lda, s *x, int *incx) nogil
ctypedef int zaxpy_t(int *n, z *za, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zcopy_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdotc_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdotu_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdrot_t(int *n, z *cx, int *incx, z *cy, int *incy, d *c, d *s) nogil
ctypedef int zdscal_t(int *n, d *da, z *zx, int *incx) nogil
ctypedef int zgemm_t(char *transa, char *transb, int *m, int *n, int*k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zgemv_t(char *trans, int *m, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
ctypedef int zgerc_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
ctypedef int zgeru_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
ctypedef int zhemm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zhemv_t(char *uplo, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
ctypedef int zher2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, d *beta, z *c, int *ldc) nogil
ctypedef int zherk_t(char *uplo, char *trans, int *n, int *k, d *alpha, z *a, int *lda, d *beta, z *c, int *ldc) nogil
ctypedef int zrotg_t(z *ca, z *cb, d *c, z *s) nogil
ctypedef int zscal_t(int *n, z *za, z *zx, int *incx) nogil
ctypedef int zswap_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zsymm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zsyr2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zsyrk_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *beta, z *c, int *ldc) nogil
ctypedef int ztrmv_t(char *uplo, char *trans, char *diag, int *n, z *a, int *lda, z *x, int *incx) nogil

cdef struct blas_t:
    caxpy_t *caxpy
    ccopy_t *ccopy
    cdotc_t *cdotc
    cdotu_t *cdotu
    cgemm_t *cgemm
    cgemv_t *cgemv
    cgerc_t *cgerc
    cgeru_t *cgeru
    chemm_t *chemm
    chemv_t *chemv
    cher2k_t *cher2k
    cherk_t *cherk
    crotg_t *crotg
    cscal_t *cscal
    csrot_t *csrot
    csscal_t *csscal
    cswap_t *cswap
    csymm_t *csymm
    csyr2k_t *csyr2k
    csyrk_t *csyrk
    ctrmv_t *ctrmv
    dasum_t *dasum
    daxpy_t *daxpy
    dcopy_t *dcopy
    ddot_t *ddot
    dgemm_t *dgemm
    dgemv_t *dgemv
    dger_t *dger
    dnrm2_t *dnrm2
    drot_t *drot
    drotg_t *drotg
    drotm_t *drotm
    drotmg_t *drotmg
    dscal_t *dscal
    dswap_t *dswap
    dsymm_t *dsymm
    dsymv_t *dsymv
    dsyr2k_t *dsyr2k
    dsyrk_t *dsyrk
    dtrmv_t *dtrmv
    dzasum_t *dzasum
    dznrm2_t *dznrm2
    icamax_t *icamax
    idamax_t *idamax
    isamax_t *isamax
    izamax_t *izamax
    sasum_t *sasum
    saxpy_t *saxpy
    scasum_t *scasum
    scnrm2_t *scnrm2
    scopy_t *scopy
    sdot_t *sdot
    sgemm_t *sgemm
    sgemv_t *sgemv
    sger_t *sger
    snrm2_t *snrm2
    srot_t *srot
    srotg_t *srotg
    srotm_t *srotm
    srotmg_t *srotmg
    sscal_t *sscal
    sswap_t *sswap
    ssymm_t *ssymm
    ssymv_t *ssymv
    ssyr2k_t *ssyr2k
    ssyrk_t *ssyrk
    strmv_t *strmv
    zaxpy_t *zaxpy
    zcopy_t *zcopy
    zdotc_t *zdotc
    zdotu_t *zdotu
    zdrot_t *zdrot
    zdscal_t *zdscal
    zgemm_t *zgemm
    zgemv_t *zgemv
    zgerc_t *zgerc
    zgeru_t *zgeru
    zhemm_t *zhemm
    zhemv_t *zhemv
    zher2k_t *zher2k
    zherk_t *zherk
    zrotg_t *zrotg
    zscal_t *zscal
    zswap_t *zswap
    zsymm_t *zsymm
    zsyr2k_t *zsyr2k
    zsyrk_t *zsyrk
    ztrmv_t *ztrmv

cdef inline blas_t getblas(object blas_module):
    cdef blas_t blas
    blas.caxpy = <caxpy_t*>f2py_ptr(blas_module.caxpy._cpointer)
    blas.ccopy = <ccopy_t*>f2py_ptr(blas_module.ccopy._cpointer)
    blas.cdotc = <cdotc_t*>f2py_ptr(blas_module.cdotc._cpointer)
    blas.cdotu = <cdotu_t*>f2py_ptr(blas_module.cdotu._cpointer)
    blas.cgemm = <cgemm_t*>f2py_ptr(blas_module.cgemm._cpointer)
    blas.cgemv = <cgemv_t*>f2py_ptr(blas_module.cgemv._cpointer)
    blas.cgerc = <cgerc_t*>f2py_ptr(blas_module.cgerc._cpointer)
    blas.cgeru = <cgeru_t*>f2py_ptr(blas_module.cgeru._cpointer)
    blas.chemm = <chemm_t*>f2py_ptr(blas_module.chemm._cpointer)
    blas.chemv = <chemv_t*>f2py_ptr(blas_module.chemv._cpointer)
    blas.cher2k = <cher2k_t*>f2py_ptr(blas_module.cher2k._cpointer)
    blas.cherk = <cherk_t*>f2py_ptr(blas_module.cherk._cpointer)
    blas.crotg = <crotg_t*>f2py_ptr(blas_module.crotg._cpointer)
    blas.cscal = <cscal_t*>f2py_ptr(blas_module.cscal._cpointer)
    blas.csrot = <csrot_t*>f2py_ptr(blas_module.cscal._cpointer)
    blas.csscal = <csscal_t*>f2py_ptr(blas_module.csscal._cpointer)
    blas.cswap = <cswap_t*>f2py_ptr(blas_module.cswap._cpointer)
    blas.csymm = <csymm_t*>f2py_ptr(blas_module.csymm._cpointer)
    blas.csyr2k = <csyr2k_t*>f2py_ptr(blas_module.csyr2k._cpointer)
    blas.csyrk = <csyrk_t*>f2py_ptr(blas_module.csyrk._cpointer)
    blas.ctrmv = <ctrmv_t*>f2py_ptr(blas_module.ctrmv._cpointer)
    blas.dasum = <dasum_t*>f2py_ptr(blas_module.dasum._cpointer)
    blas.daxpy = <daxpy_t*>f2py_ptr(blas_module.daxpy._cpointer)
    blas.dcopy = <dcopy_t*>f2py_ptr(blas_module.dcopy._cpointer)
    blas.ddot = <ddot_t*>f2py_ptr(blas_module.ddot._cpointer)
    blas.dgemm = <dgemm_t*>f2py_ptr(blas_module.dgemm._cpointer)
    blas.dgemv = <dgemv_t*>f2py_ptr(blas_module.dgemv._cpointer)
    blas.dger = <dger_t*>f2py_ptr(blas_module.dger._cpointer)
    blas.dnrm2 = <dnrm2_t*>f2py_ptr(blas_module.dnrm2._cpointer)
    blas.drot = <drot_t*>f2py_ptr(blas_module.drot._cpointer)
    blas.drotg = <drotg_t*>f2py_ptr(blas_module.drotg._cpointer)
    blas.drotm = <drotm_t*>f2py_ptr(blas_module.drotm._cpointer)
    blas.drotmg = <drotmg_t*>f2py_ptr(blas_module.drotmg._cpointer)
    blas.dscal = <dscal_t*>f2py_ptr(blas_module.dscal._cpointer)
    blas.dswap = <dswap_t*>f2py_ptr(blas_module.dswap._cpointer)
    blas.dsymm = <dsymm_t*>f2py_ptr(blas_module.dsymm._cpointer)
    blas.dsymv = <dsymv_t*>f2py_ptr(blas_module.dsymv._cpointer)
    blas.dsyr2k = <dsyr2k_t*>f2py_ptr(blas_module.dsyr2k._cpointer)
    blas.dsyrk = <dsyrk_t*>f2py_ptr(blas_module.dsyrk._cpointer)
    blas.dtrmv = <dtrmv_t*>f2py_ptr(blas_module.dtrmv._cpointer)
    blas.dzasum = <dzasum_t*>f2py_ptr(blas_module.dzasum._cpointer)
    blas.dznrm2 = <dznrm2_t*>f2py_ptr(blas_module.dznrm2._cpointer)
    blas.icamax = <icamax_t*>f2py_ptr(blas_module.icamax._cpointer)
    blas.idamax = <idamax_t*>f2py_ptr(blas_module.idamax._cpointer)
    blas.isamax = <isamax_t*>f2py_ptr(blas_module.isamax._cpointer)
    blas.izamax = <izamax_t*>f2py_ptr(blas_module.izamax._cpointer)
    blas.sasum = <sasum_t*>f2py_ptr(blas_module.sasum._cpointer)
    blas.saxpy = <saxpy_t*>f2py_ptr(blas_module.saxpy._cpointer)
    blas.scasum = <scasum_t*>f2py_ptr(blas_module.scasum._cpointer)
    blas.scnrm2 = <scnrm2_t*>f2py_ptr(blas_module.scnrm2._cpointer)
    blas.scopy = <scopy_t*>f2py_ptr(blas_module.scopy._cpointer)
    blas.sdot = <sdot_t*>f2py_ptr(blas_module.sdot._cpointer)
    blas.sgemm = <sgemm_t*>f2py_ptr(blas_module.sgemm._cpointer)
    blas.sgemv = <sgemv_t*>f2py_ptr(blas_module.sgemv._cpointer)
    blas.sger = <sger_t*>f2py_ptr(blas_module.sger._cpointer)
    blas.snrm2 = <snrm2_t*>f2py_ptr(blas_module.snrm2._cpointer)
    blas.srot = <srot_t*>f2py_ptr(blas_module.srot._cpointer)
    blas.srotg = <srotg_t*>f2py_ptr(blas_module.srotg._cpointer)
    blas.srotm = <srotm_t*>f2py_ptr(blas_module.srotm._cpointer)
    blas.srotmg = <srotmg_t*>f2py_ptr(blas_module.srotmg._cpointer)
    blas.sscal = <sscal_t*>f2py_ptr(blas_module.sscal._cpointer)
    blas.sswap = <sswap_t*>f2py_ptr(blas_module.sswap._cpointer)
    blas.ssymm = <ssymm_t*>f2py_ptr(blas_module.ssymm._cpointer)
    blas.ssymv = <ssymv_t*>f2py_ptr(blas_module.ssymv._cpointer)
    blas.ssyr2k = <ssyr2k_t*>f2py_ptr(blas_module.ssyr2k._cpointer)
    blas.ssyrk = <ssyrk_t*>f2py_ptr(blas_module.ssyrk._cpointer)
    blas.strmv = <strmv_t*>f2py_ptr(blas_module.strmv._cpointer)
    blas.zaxpy = <zaxpy_t*>f2py_ptr(blas_module.zaxpy._cpointer)
    blas.zcopy = <zcopy_t*>f2py_ptr(blas_module.zcopy._cpointer)
    blas.zdotc = <zdotc_t*>f2py_ptr(blas_module.zdotc._cpointer)
    blas.zdotu = <zdotu_t*>f2py_ptr(blas_module.zdotu._cpointer)
    blas.zdrot = <zdrot_t*>f2py_ptr(blas_module.zdrot._cpointer)
    blas.zdscal = <zdscal_t*>f2py_ptr(blas_module.zdscal._cpointer)
    blas.zgemm = <zgemm_t*>f2py_ptr(blas_module.zgemm._cpointer)
    blas.zgemv = <zgemv_t*>f2py_ptr(blas_module.zgemv._cpointer)
    blas.zgerc = <zgerc_t*>f2py_ptr(blas_module.zgerc._cpointer)
    blas.zgeru = <zgeru_t*>f2py_ptr(blas_module.zgeru._cpointer)
    blas.zhemm = <zhemm_t*>f2py_ptr(blas_module.zhemm._cpointer)
    blas.zhemv = <zhemv_t*>f2py_ptr(blas_module.zhemv._cpointer)
    blas.zher2k = <zher2k_t*>f2py_ptr(blas_module.zher2k._cpointer)
    blas.zherk = <zherk_t*>f2py_ptr(blas_module.zherk._cpointer)
    blas.zrotg = <zrotg_t*>f2py_ptr(blas_module.zrotg._cpointer)
    blas.zscal = <zscal_t*>f2py_ptr(blas_module.zscal._cpointer)
    blas.zswap = <zswap_t*>f2py_ptr(blas_module.zswap._cpointer)
    blas.zsymm = <zsymm_t*>f2py_ptr(blas_module.zsymm._cpointer)
    blas.zsyr2k = <zsyr2k_t*>f2py_ptr(blas_module.zsyr2k._cpointer)
    blas.zsyrk = <zsyrk_t*>f2py_ptr(blas_module.zsyrk._cpointer)
    blas.ztrmv = <ztrmv_t*>f2py_ptr(blas_module.ztrmv._cpointer)
    return blas
