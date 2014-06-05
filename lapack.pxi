import scipy.linalg.lapack as lapack
ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z
# Since Scipy >= 0.12.0

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

# Single precision complex routines:
ctypedef int cgbsv_t(int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info)
cdef cgbsv_t *cgbsv = <cgbsv_t*>f2py_ptr(lapack.cgbsv._cpointer)

ctypedef int cgbtrf_t(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info)
cdef cgbtrf_t *cgbtrf = <cgbtrf_t*>f2py_ptr(lapack.cgbtrf._cpointer)

ctypedef int cgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info)
cdef cgbtrs_t *cgbtrs = <cgbtrs_t*>f2py_ptr(lapack.cgbtrs._cpointer)

ctypedef int cgebal_t(char *job, int *n, c *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
cdef cgebal_t *cgebal = <cgebal_t*>f2py_ptr(lapack.cgebal._cpointer)

# ctypedef int cgees_t(char *jobvs, char *sort, 
# cdef cgees_t *cgees = <cgees_t*>f2py_ptr(lapack.cgees._cpointer)

ctypedef int cgeev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
cdef cgeev_t *cgeev = <cgeev_t*>f2py_ptr(lapack.cgeev._cpointer)

ctypedef int cgegv_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
cdef cgegv_t *cgegv = <cgegv_t*>f2py_ptr(lapack.cgegv._cpointer)

ctypedef int cgehrd_t(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int* info)
cdef cgehrd_t *cgehrd = <cgehrd_t*>f2py_ptr(lapack.cgehrd._cpointer)

ctypedef int cgelss_t(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info)
cdef cgelss_t *cgelss = <cgelss_t*>f2py_ptr(lapack.cgelss._cpointer)

ctypedef int cgeqp3_t(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, int *lwork, s *rwork, int *info)
cdef cgeqp3_t *cgeqp3 = <cgeqp3_t*>f2py_ptr(lapack.cgeqp3._cpointer)

ctypedef int cgeqrf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
cdef cgeqrf_t *cgeqrf = <cgeqrf_t*>f2py_ptr(lapack.cgeqrf._cpointer)

ctypedef int cgerqf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
cdef cgeerqf_t *cgerqf = <cgerqf_t*>f2py_ptr(lapack.cgerqf._cpointer)

ctypedef int cgesdd_t(char *jobz, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *iwork, int *info)
cdef cgesdd_t *cgesdd = <cgesdd_t*>f2py_ptr(lapack.cgesdd._cpointer)

ctypedef int cgesv_t(int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info)
cdef cgesv_t *cgesv = <cgesv_t*>f2py_ptr(lapack.cgesv._cpointer)

ctypedef int cgetrf_t(int *m, int *n, c *a, int *lda, int *ipiv, int *info)
cdef cgetrf_t *cgetrf = <cgetrf_t*>f2py_ptr(lapack.cgetrf._cpointer)

ctypedef int cgetri_t(int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info)
cdef cgetri_t *cgetri = <cgetri_t*>f2py_ptr(lapack.cgetri._cpointer)

ctypedef int cgetrs_t(char *trans, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info)
cdef cgetrs_t *cgetrs = <cgetrs_t*>f2py_ptr(lapack.cgetrs._cpointer)

# ctypedef int cgges_t(char *jobvsl, char *jobvsr, char *sort, 
# cdef cgges_t *cgges = <cgges_t*>f2py_ptr(lapack.cgges._cpointer)

ctypedef int cggev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
cdef cggev_t *cggev = <cggev_t*>f2py_ptr(lapack.cggev._cpointer)

ctypedef int chbevd_t(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef chbevd_t *chbevd = <chbevd_t*>f2py_ptr(lapack.chbevd._cpointer)

ctypedef int chbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, c *ab, int *ldab, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info)
cdef chebvx_t *chebvx = <chebvx_t*>f2py_ptr(lapack.chebvx._cpointer)

ctypedef int cheev_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *info)
cdef cheev_t *cheev = <cheev_t*>f2py_ptr(lapack.cheev._cpointer)

ctypedef int cheevd_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef cheevd_t *cheevd = <cheevd_t*>f2py_ptr(lapack.cheevd._cpointer)

ctypedef int cheevr_t(char *jobz, char *range, char*uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef cheevr_t *cheevr = <cheevr_t*>f2py_ptr(lapack.cheevr._cpointer)

ctypedef int chegv_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *info)
cdef chegv_t *chegv = <chegv_t*>f2py_ptr(lapack.chegv._cpointer)

ctypedef int chegvd_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef chegvd_t *chegvd = <chegvd_t*>f2py_ptr(lapack.chegvd._cpointer)

ctypedef int chegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
cdef chegvx_t *chegvx = <chegvx_t*>f2py_ptr(lapack.chegvx._cpointer)

ctypedef int claswp_t(int *n, c *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
cdef claswp_t *claswp = <claswp_t*>f2py_ptr(lapack.claswp._cpointer)

ctypedef int clauum_t(char *uplo, int *n, c *a, int *lda, int *info)
cdef clauum_t *clauum = <clauum_t*>f2py_ptr(lapack.clauum._cpointer)

ctypedef int cpbsv_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info)
cdef cpbsv_t *cpbsv = <cpbsv_t*>f2py_ptr(lapack.cpbsv._cpointer)

ctypedef int cpbtrf_t(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info)
cdef cpbtrf_t *cpbtrf = <cpbtrf_t*>f2py_ptr(lapack.cpbtrf._cpointer)

ctypedef int cpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info)
cdef cpbtrs_t *cpbtrs = <cpbtrs_t*>f2py_ptr(lapack.cpbtrs._cpointer)

ctypedef int cposv_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
cdef cposv_t *cposv = <cposv_t*>f2py_ptr(lapack.cposv._cpointer)

ctypedef int cpotrf_t(char *uplo, int *n, c *a, int *lda, int *info)
cdef cpotrf_t *cpotrf = <cpotrf_t*>f2py_ptr(lapack.cpotrf._cpointer)

ctypedef int cpotri_t(char *uplo, int *n, c *a, int *lda, int *info)
cdef cpotri_t *cpotri = <cpotri_t*>f2py_ptr(lapack.cpotri._cpointer)

ctypedef int cpotrs_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
cdef cpotrs_t *cpotrs = <cpotrs_t*>f2py_ptr(lapack.cpotrs._cpointer)

ctypedef int ctrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, s *scale, int *info)
cdef ctrsyl_t *ctrsyl = <ctrsyl_t*>f2py_ptr(lapack.ctrsyl._cpointer)

ctypedef int ctrtri_t(char *uplo, char *diag, int *n, c *a, int *lda, int *info)
cdef ctrtri_t *ctrtri = <ctrtri_t*>f2py_ptr(lapack.ctrtri._cpointer)

ctypedef int ctrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
cdef ctrtrs_t *ctrtrs = <ctrtrs_t*>f2py_ptr(lapack.ctrtrs._cpointer)

ctypedef int cungqr_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
cdef cungqr_t *cungqr = <cungqr_t*>f2py_ptr(lapack.cungqr._cpointer)

ctypedef int cungrq_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
cdef cungrq_t *cungrq = <cungrq_t*>f2py_ptr(lapack.cungrq._cpointer)

ctypedef int cunmqr_t(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info)
cdef cunmqr_t *cunmqr = <cunmqr_t*>f2py_ptr(lapack.cunmqr._cpointer)
