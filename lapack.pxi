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


ctypedef int dgbsv_t(int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info)
cdef dgbsv_t *dgbsv = <dgbsv_t*>f2py_ptr(lapack.dgbsv._cpointer)

ctypedef int dgbtrf_t(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info)
cdef dgbtrf_t *dgbtrf = <dgbtrf_t*>f2py_ptr(lapack.dgbtrf._cpointer)

ctypedef int dgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info)
cdef dgbtrs_t *dgbtrs = <dgbtrs_t*>f2py_ptr(lapack.dgbtrs._cpointer)

ctypedef int dgebal_t(char *job, int *n, d *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
cdef dgebal_t *dgebal = <dgebal_t*>f2py_ptr(lapack.dgebal._cpointer)

# ctypedef int dgees_t(char *jobvs, char *sort, 
# cdef dgees_t *dgees = <dgees_t*>f2py_ptr(lapack.dgees._cpointer)

ctypedef int dgeev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *w, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
cdef dgeev_t *dgeev = <dgeev_t*>f2py_ptr(lapack.dgeev._cpointer)

ctypedef int dgegv_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
cdef dgegv_t *dgegv = <dgegv_t*>f2py_ptr(lapack.dgegv._cpointer)

ctypedef int dgehrd_t(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int* info)
cdef dgehrd_t *dgehrd = <dgehrd_t*>f2py_ptr(lapack.dgehrd._cpointer)

ctypedef int dgelss_t(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, s *s, s *rcond, int *rank, d *work, int *lwork, s *rwork, int *info)
cdef dgelss_t *dgelss = <dgelss_t*>f2py_ptr(lapack.dgelss._cpointer)

ctypedef int dgeqp3_t(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *lwork, s *rwork, int *info)
cdef dgeqp3_t *dgeqp3 = <dgeqp3_t*>f2py_ptr(lapack.dgeqp3._cpointer)

ctypedef int dgeqrf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
cdef dgeqrf_t *dgeqrf = <dgeqrf_t*>f2py_ptr(lapack.dgeqrf._cpointer)

ctypedef int dgerqf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
cdef dgeerqf_t *dgerqf = <dgerqf_t*>f2py_ptr(lapack.dgerqf._cpointer)

ctypedef int dgesdd_t(char *jobz, int *m, int *n, d *a, int *lda, s *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, s *rwork, int *iwork, int *info)
cdef dgesdd_t *dgesdd = <dgesdd_t*>f2py_ptr(lapack.dgesdd._cpointer)

ctypedef int dgesv_t(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info)
cdef dgesv_t *dgesv = <dgesv_t*>f2py_ptr(lapack.dgesv._cpointer)

ctypedef int dgetrf_t(int *m, int *n, d *a, int *lda, int *ipiv, int *info)
cdef dgetrf_t *dgetrf = <dgetrf_t*>f2py_ptr(lapack.dgetrf._cpointer)

ctypedef int dgetri_t(int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info)
cdef dgetri_t *dgetri = <dgetri_t*>f2py_ptr(lapack.dgetri._cpointer)

ctypedef int dgetrs_t(char *trans, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info)
cdef dgetrs_t *dgetrs = <dgetrs_t*>f2py_ptr(lapack.dgetrs._cpointer)

# ctypedef int dgges_t(char *jobvsl, char *jobvsr, char *sort, 
# cdef dgges_t *dgges = <dgges_t*>f2py_ptr(lapack.dgges._cpointer)

ctypedef int dggev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
cdef dggev_t *dggev = <dggev_t*>f2py_ptr(lapack.dggev._cpointer)

ctypedef int dhbevd_t(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef dhbevd_t *dhbevd = <dhbevd_t*>f2py_ptr(lapack.dhbevd._cpointer)

ctypedef int dhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, d *ab, int *ldab, d *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, s *rwork, int *iwork, int *ifail, int *info)
cdef dhebvx_t *dhebvx = <dhebvx_t*>f2py_ptr(lapack.dhebvx._cpointer)

ctypedef int dheev_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *info)
cdef dheev_t *dheev = <dheev_t*>f2py_ptr(lapack.dheev._cpointer)

ctypedef int dheevd_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef dheevd_t *dheevd = <dheevd_t*>f2py_ptr(lapack.dheevd._cpointer)

ctypedef int dheevr_t(char *jobz, char *range, char*uplo, int *n, d *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef dheevr_t *dheevr = <dheevr_t*>f2py_ptr(lapack.dheevr._cpointer)

ctypedef int dhegv_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *info)
cdef dhegv_t *dhegv = <dhegv_t*>f2py_ptr(lapack.dhegv._cpointer)

ctypedef int dhegvd_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef dhegvd_t *dhegvd = <dhegvd_t*>f2py_ptr(lapack.dhegvd._cpointer)

ctypedef int dhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
cdef dhegvx_t *dhegvx = <dhegvx_t*>f2py_ptr(lapack.dhegvx._cpointer)

ctypedef int dlaswp_t(int *n, d *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
cdef dlaswp_t *dlaswp = <dlaswp_t*>f2py_ptr(lapack.dlaswp._cpointer)

ctypedef int dlauum_t(char *uplo, int *n, d *a, int *lda, int *info)
cdef dlauum_t *dlauum = <dlauum_t*>f2py_ptr(lapack.dlauum._cpointer)

ctypedef int dpbsv_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info)
cdef dpbsv_t *dpbsv = <dpbsv_t*>f2py_ptr(lapack.dpbsv._cpointer)

ctypedef int dpbtrf_t(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info)
cdef dpbtrf_t *dpbtrf = <dpbtrf_t*>f2py_ptr(lapack.dpbtrf._cpointer)

ctypedef int dpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info)
cdef dpbtrs_t *dpbtrs = <dpbtrs_t*>f2py_ptr(lapack.dpbtrs._cpointer)

ctypedef int dposv_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
cdef dposv_t *dposv = <dposv_t*>f2py_ptr(lapack.dposv._cpointer)

ctypedef int dpotrf_t(char *uplo, int *n, d *a, int *lda, int *info)
cdef dpotrf_t *dpotrf = <dpotrf_t*>f2py_ptr(lapack.dpotrf._cpointer)

ctypedef int dpotri_t(char *uplo, int *n, d *a, int *lda, int *info)
cdef dpotri_t *dpotri = <dpotri_t*>f2py_ptr(lapack.dpotri._cpointer)

ctypedef int dpotrs_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
cdef dpotrs_t *dpotrs = <dpotrs_t*>f2py_ptr(lapack.dpotrs._cpointer)

ctypedef int dtrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, s *scale, int *info)
cdef dtrsyl_t *dtrsyl = <dtrsyl_t*>f2py_ptr(lapack.dtrsyl._cpointer)

ctypedef int dtrtri_t(char *uplo, char *diag, int *n, d *a, int *lda, int *info)
cdef dtrtri_t *dtrtri = <dtrtri_t*>f2py_ptr(lapack.dtrtri._cpointer)

ctypedef int dtrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
cdef dtrtrs_t *dtrtrs = <dtrtrs_t*>f2py_ptr(lapack.dtrtrs._cpointer)

ctypedef int dungqr_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
cdef dungqr_t *dungqr = <dungqr_t*>f2py_ptr(lapack.dungqr._cpointer)

ctypedef int dungrq_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
cdef dungrq_t *dungrq = <dungrq_t*>f2py_ptr(lapack.dungrq._cpointer)

ctypedef int dunmqr_t(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info)
cdef dunmqr_t *dunmqr = <dunmqr_t*>f2py_ptr(lapack.dunmqr._cpointer)



ctypedef int sgbsv_t(int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info)
cdef sgbsv_t *sgbsv = <sgbsv_t*>f2py_ptr(lapack.sgbsv._cpointer)

ctypedef int sgbtrf_t(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info)
cdef sgbtrf_t *sgbtrf = <sgbtrf_t*>f2py_ptr(lapack.sgbtrf._cpointer)

ctypedef int sgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info)
cdef sgbtrs_t *sgbtrs = <sgbtrs_t*>f2py_ptr(lapack.sgbtrs._cpointer)

ctypedef int sgebal_t(char *job, int *n, s *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
cdef sgebal_t *sgebal = <sgebal_t*>f2py_ptr(lapack.sgebal._cpointer)

# ctypedef int sgees_t(char *jobvs, char *sort, 
# cdef sgees_t *sgees = <sgees_t*>f2py_ptr(lapack.sgees._cpointer)

ctypedef int sgeev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *w, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
cdef sgeev_t *sgeev = <sgeev_t*>f2py_ptr(lapack.sgeev._cpointer)

ctypedef int sgegv_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
cdef sgegv_t *sgegv = <sgegv_t*>f2py_ptr(lapack.sgegv._cpointer)

ctypedef int sgehrd_t(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int* info)
cdef sgehrd_t *sgehrd = <sgehrd_t*>f2py_ptr(lapack.sgehrd._cpointer)

ctypedef int sgelss_t(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, s *rwork, int *info)
cdef sgelss_t *sgelss = <sgelss_t*>f2py_ptr(lapack.sgelss._cpointer)

ctypedef int sgeqp3_t(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *lwork, s *rwork, int *info)
cdef sgeqp3_t *sgeqp3 = <sgeqp3_t*>f2py_ptr(lapack.sgeqp3._cpointer)

ctypedef int sgeqrf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
cdef sgeqrf_t *sgeqrf = <sgeqrf_t*>f2py_ptr(lapack.sgeqrf._cpointer)

ctypedef int sgerqf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
cdef sgeerqf_t *sgerqf = <sgerqf_t*>f2py_ptr(lapack.sgerqf._cpointer)

ctypedef int sgesdd_t(char *jobz, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, s *rwork, int *iwork, int *info)
cdef sgesdd_t *sgesdd = <sgesdd_t*>f2py_ptr(lapack.sgesdd._cpointer)

ctypedef int sgesv_t(int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info)
cdef sgesv_t *sgesv = <sgesv_t*>f2py_ptr(lapack.sgesv._cpointer)

ctypedef int sgetrf_t(int *m, int *n, s *a, int *lda, int *ipiv, int *info)
cdef sgetrf_t *sgetrf = <sgetrf_t*>f2py_ptr(lapack.sgetrf._cpointer)

ctypedef int sgetri_t(int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info)
cdef sgetri_t *sgetri = <sgetri_t*>f2py_ptr(lapack.sgetri._cpointer)

ctypedef int sgetrs_t(char *trans, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info)
cdef sgetrs_t *sgetrs = <sgetrs_t*>f2py_ptr(lapack.sgetrs._cpointer)

# ctypedef int sgges_t(char *jobvsl, char *jobvsr, char *sort, 
# cdef sgges_t *sgges = <sgges_t*>f2py_ptr(lapack.sgges._cpointer)

ctypedef int sggev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
cdef sggev_t *sggev = <sggev_t*>f2py_ptr(lapack.sggev._cpointer)

ctypedef int shbevd_t(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef shbevd_t *shbevd = <shbevd_t*>f2py_ptr(lapack.shbevd._cpointer)

ctypedef int shbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, s *ab, int *ldab, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, s *rwork, int *iwork, int *ifail, int *info)
cdef shebvx_t *shebvx = <shebvx_t*>f2py_ptr(lapack.shebvx._cpointer)

ctypedef int sheev_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *info)
cdef sheev_t *sheev = <sheev_t*>f2py_ptr(lapack.sheev._cpointer)

ctypedef int sheevd_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef sheevd_t *sheevd = <sheevd_t*>f2py_ptr(lapack.sheevd._cpointer)

ctypedef int sheevr_t(char *jobz, char *range, char*uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef sheevr_t *sheevr = <sheevr_t*>f2py_ptr(lapack.sheevr._cpointer)

ctypedef int shegv_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *info)
cdef shegv_t *shegv = <shegv_t*>f2py_ptr(lapack.shegv._cpointer)

ctypedef int shegvd_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef shegvd_t *shegvd = <shegvd_t*>f2py_ptr(lapack.shegvd._cpointer)

ctypedef int shegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
cdef shegvx_t *shegvx = <shegvx_t*>f2py_ptr(lapack.shegvx._cpointer)

ctypedef int slaswp_t(int *n, s *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
cdef slaswp_t *slaswp = <slaswp_t*>f2py_ptr(lapack.slaswp._cpointer)

ctypedef int slauum_t(char *uplo, int *n, s *a, int *lda, int *info)
cdef slauum_t *slauum = <slauum_t*>f2py_ptr(lapack.slauum._cpointer)

ctypedef int spbsv_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info)
cdef spbsv_t *spbsv = <spbsv_t*>f2py_ptr(lapack.spbsv._cpointer)

ctypedef int spbtrf_t(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info)
cdef spbtrf_t *spbtrf = <spbtrf_t*>f2py_ptr(lapack.spbtrf._cpointer)

ctypedef int spbtrs_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info)
cdef spbtrs_t *spbtrs = <spbtrs_t*>f2py_ptr(lapack.spbtrs._cpointer)

ctypedef int sposv_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
cdef sposv_t *sposv = <sposv_t*>f2py_ptr(lapack.sposv._cpointer)

ctypedef int spotrf_t(char *uplo, int *n, s *a, int *lda, int *info)
cdef spotrf_t *spotrf = <spotrf_t*>f2py_ptr(lapack.spotrf._cpointer)

ctypedef int spotri_t(char *uplo, int *n, s *a, int *lda, int *info)
cdef spotri_t *spotri = <spotri_t*>f2py_ptr(lapack.spotri._cpointer)

ctypedef int spotrs_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
cdef spotrs_t *spotrs = <spotrs_t*>f2py_ptr(lapack.spotrs._cpointer)

ctypedef int strsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *scale, int *info)
cdef strsyl_t *strsyl = <strsyl_t*>f2py_ptr(lapack.strsyl._cpointer)

ctypedef int strtri_t(char *uplo, char *diag, int *n, s *a, int *lda, int *info)
cdef strtri_t *strtri = <strtri_t*>f2py_ptr(lapack.strtri._cpointer)

ctypedef int strtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
cdef strtrs_t *strtrs = <strtrs_t*>f2py_ptr(lapack.strtrs._cpointer)

ctypedef int sungqr_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
cdef sungqr_t *sungqr = <sungqr_t*>f2py_ptr(lapack.sungqr._cpointer)

ctypedef int sungrq_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
cdef sungrq_t *sungrq = <sungrq_t*>f2py_ptr(lapack.sungrq._cpointer)

ctypedef int sunmqr_t(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info)
cdef sunmqr_t *sunmqr = <sunmqr_t*>f2py_ptr(lapack.sunmqr._cpointer)



ctypedef int zgbsv_t(int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info)
cdef zgbsv_t *zgbsv = <zgbsv_t*>f2py_ptr(lapack.zgbsv._cpointer)

ctypedef int zgbtrf_t(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info)
cdef zgbtrf_t *zgbtrf = <zgbtrf_t*>f2py_ptr(lapack.zgbtrf._cpointer)

ctypedef int zgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info)
cdef zgbtrs_t *zgbtrs = <zgbtrs_t*>f2py_ptr(lapack.zgbtrs._cpointer)

ctypedef int zgebal_t(char *job, int *n, z *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
cdef zgebal_t *zgebal = <zgebal_t*>f2py_ptr(lapack.zgebal._cpointer)

# ctypedef int zgees_t(char *jobvs, char *sort, 
# cdef zgees_t *zgees = <zgees_t*>f2py_ptr(lapack.zgees._cpointer)

ctypedef int zgeev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
cdef zgeev_t *zgeev = <zgeev_t*>f2py_ptr(lapack.zgeev._cpointer)

ctypedef int zgegv_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
cdef zgegv_t *zgegv = <zgegv_t*>f2py_ptr(lapack.zgegv._cpointer)

ctypedef int zgehrd_t(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int* info)
cdef zgehrd_t *zgehrd = <zgehrd_t*>f2py_ptr(lapack.zgehrd._cpointer)

ctypedef int zgelss_t(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, s *s, s *rcond, int *rank, z *work, int *lwork, s *rwork, int *info)
cdef zgelss_t *zgelss = <zgelss_t*>f2py_ptr(lapack.zgelss._cpointer)

ctypedef int zgeqp3_t(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, int *lwork, s *rwork, int *info)
cdef zgeqp3_t *zgeqp3 = <zgeqp3_t*>f2py_ptr(lapack.zgeqp3._cpointer)

ctypedef int zgeqrf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
cdef zgeqrf_t *zgeqrf = <zgeqrf_t*>f2py_ptr(lapack.zgeqrf._cpointer)

ctypedef int zgerqf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
cdef zgeerqf_t *zgerqf = <zgerqf_t*>f2py_ptr(lapack.zgerqf._cpointer)

ctypedef int zgesdd_t(char *jobz, int *m, int *n, z *a, int *lda, s *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, s *rwork, int *iwork, int *info)
cdef zgesdd_t *zgesdd = <zgesdd_t*>f2py_ptr(lapack.zgesdd._cpointer)

ctypedef int zgesv_t(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info)
cdef zgesv_t *zgesv = <zgesv_t*>f2py_ptr(lapack.zgesv._cpointer)

ctypedef int zgetrf_t(int *m, int *n, z *a, int *lda, int *ipiv, int *info)
cdef zgetrf_t *zgetrf = <zgetrf_t*>f2py_ptr(lapack.zgetrf._cpointer)

ctypedef int zgetri_t(int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info)
cdef zgetri_t *zgetri = <zgetri_t*>f2py_ptr(lapack.zgetri._cpointer)

ctypedef int zgetrs_t(char *trans, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info)
cdef zgetrs_t *zgetrs = <zgetrs_t*>f2py_ptr(lapack.zgetrs._cpointer)

# ctypedef int zgges_t(char *jobvsl, char *jobvsr, char *sort, 
# cdef zgges_t *zgges = <zgges_t*>f2py_ptr(lapack.zgges._cpointer)

ctypedef int zggev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
cdef zggev_t *zggev = <zggev_t*>f2py_ptr(lapack.zggev._cpointer)

ctypedef int zhbevd_t(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef zhbevd_t *zhbevd = <zhbevd_t*>f2py_ptr(lapack.zhbevd._cpointer)

ctypedef int zhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, z *ab, int *ldab, z *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, s *rwork, int *iwork, int *ifail, int *info)
cdef zhebvx_t *zhebvx = <zhebvx_t*>f2py_ptr(lapack.zhebvx._cpointer)

ctypedef int zheev_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *info)
cdef zheev_t *zheev = <zheev_t*>f2py_ptr(lapack.zheev._cpointer)

ctypedef int zheevd_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef zheevd_t *zheevd = <zheevd_t*>f2py_ptr(lapack.zheevd._cpointer)

ctypedef int zheevr_t(char *jobz, char *range, char*uplo, int *n, z *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, int *isuppz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef zheevr_t *zheevr = <zheevr_t*>f2py_ptr(lapack.zheevr._cpointer)

ctypedef int zhegv_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *info)
cdef zhegv_t *zhegv = <zhegv_t*>f2py_ptr(lapack.zhegv._cpointer)

ctypedef int zhegvd_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
cdef zhegvd_t *zhegvd = <zhegvd_t*>f2py_ptr(lapack.zhegvd._cpointer)

ctypedef int zhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
cdef zhegvx_t *zhegvx = <zhegvx_t*>f2py_ptr(lapack.zhegvx._cpointer)

ctypedef int zlaswp_t(int *n, z *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
cdef zlaswp_t *zlaswp = <zlaswp_t*>f2py_ptr(lapack.zlaswp._cpointer)

ctypedef int zlauum_t(char *uplo, int *n, z *a, int *lda, int *info)
cdef zlauum_t *zlauum = <zlauum_t*>f2py_ptr(lapack.zlauum._cpointer)

ctypedef int zpbsv_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info)
cdef zpbsv_t *zpbsv = <zpbsv_t*>f2py_ptr(lapack.zpbsv._cpointer)

ctypedef int zpbtrf_t(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info)
cdef zpbtrf_t *zpbtrf = <zpbtrf_t*>f2py_ptr(lapack.zpbtrf._cpointer)

ctypedef int zpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info)
cdef zpbtrs_t *zpbtrs = <zpbtrs_t*>f2py_ptr(lapack.zpbtrs._cpointer)

ctypedef int zposv_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
cdef zposv_t *zposv = <zposv_t*>f2py_ptr(lapack.zposv._cpointer)

ctypedef int zpotrf_t(char *uplo, int *n, z *a, int *lda, int *info)
cdef zpotrf_t *zpotrf = <zpotrf_t*>f2py_ptr(lapack.zpotrf._cpointer)

ctypedef int zpotri_t(char *uplo, int *n, z *a, int *lda, int *info)
cdef zpotri_t *zpotri = <zpotri_t*>f2py_ptr(lapack.zpotri._cpointer)

ctypedef int zpotrs_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
cdef zpotrs_t *zpotrs = <zpotrs_t*>f2py_ptr(lapack.zpotrs._cpointer)

ctypedef int ztrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, s *scale, int *info)
cdef ztrsyl_t *ztrsyl = <ztrsyl_t*>f2py_ptr(lapack.ztrsyl._cpointer)

ctypedef int ztrtri_t(char *uplo, char *diag, int *n, z *a, int *lda, int *info)
cdef ztrtri_t *ztrtri = <ztrtri_t*>f2py_ptr(lapack.ztrtri._cpointer)

ctypedef int ztrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
cdef ztrtrs_t *ztrtrs = <ztrtrs_t*>f2py_ptr(lapack.ztrtrs._cpointer)

ctypedef int zungqr_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
cdef zungqr_t *zungqr = <zungqr_t*>f2py_ptr(lapack.zungqr._cpointer)

ctypedef int zungrq_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
cdef zungrq_t *zungrq = <zungrq_t*>f2py_ptr(lapack.zungrq._cpointer)

ctypedef int zunmqr_t(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info)
cdef zunmqr_t *zunmqr = <zunmqr_t*>f2py_ptr(lapack.zunmqr._cpointer)
