ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

ctypedef int cgbsv_t(int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil
ctypedef int cgbtrf_t(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info) nogil
ctypedef int cgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil
ctypedef int cgebal_t(char *job, int *n, c *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
# ctypedef int cgees_t(char *jobvs, char *sort,  nogil
ctypedef int cgeev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int cgegv_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int cgehrd_t(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int* info) nogil
ctypedef int cgelss_t(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int cgeqp3_t(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int cgeqrf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
ctypedef int cgerqf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
ctypedef int cgesdd_t(char *jobz, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *iwork, int *info) nogil
ctypedef int cgesv_t(int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil
ctypedef int cgetrf_t(int *m, int *n, c *a, int *lda, int *ipiv, int *info) nogil
ctypedef int cgetri_t(int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info) nogil
ctypedef int cgetrs_t(char *trans, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil
# ctypedef int cgges_t(char *jobvsl, char *jobvsr, char *sort,  nogil
ctypedef int cggev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int chbevd_t(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int chbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, c *ab, int *ldab, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int cheev_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int cheevd_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int cheevr_t(char *jobz, char *range, char*uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int chegv_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *info) nogil
ctypedef int chegvd_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int chegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int claswp_t(int *n, c *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
ctypedef int clauum_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
ctypedef int cpbsv_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil
ctypedef int cpbtrf_t(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info) nogil
ctypedef int cpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil
ctypedef int cposv_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
ctypedef int cpotrf_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
ctypedef int cpotri_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
ctypedef int cpotrs_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
ctypedef int ctrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, s *scale, int *info) nogil
ctypedef int ctrtri_t(char *uplo, char *diag, int *n, c *a, int *lda, int *info) nogil
ctypedef int ctrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
ctypedef int cungqr_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
ctypedef int cungrq_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
ctypedef int cunmqr_t(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil
ctypedef int dgbsv_t(int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil
ctypedef int dgbtrf_t(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info) nogil
ctypedef int dgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil
ctypedef int dgebal_t(char *job, int *n, d *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
# ctypedef int dgees_t(char *jobvs, char *sort,  nogil
ctypedef int dgeev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *w, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dgegv_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dgehrd_t(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int* info) nogil
ctypedef int dgelss_t(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, s *s, s *rcond, int *rank, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dgeqp3_t(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dgeqrf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
ctypedef int dgerqf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
ctypedef int dgesdd_t(char *jobz, int *m, int *n, d *a, int *lda, s *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, s *rwork, int *iwork, int *info) nogil
ctypedef int dgesv_t(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil
ctypedef int dgetrf_t(int *m, int *n, d *a, int *lda, int *ipiv, int *info) nogil
ctypedef int dgetri_t(int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info) nogil
ctypedef int dgetrs_t(char *trans, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil
# ctypedef int dgges_t(char *jobvsl, char *jobvsr, char *sort,  nogil
ctypedef int dggev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dhbevd_t(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int dhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, d *ab, int *ldab, d *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int dheev_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dheevd_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int dheevr_t(char *jobz, char *range, char*uplo, int *n, d *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int dhegv_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *info) nogil
ctypedef int dhegvd_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int dhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int dlaswp_t(int *n, d *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
ctypedef int dlauum_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
ctypedef int dpbsv_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil
ctypedef int dpbtrf_t(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info) nogil
ctypedef int dpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil
ctypedef int dposv_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
ctypedef int dpotrf_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
ctypedef int dpotri_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
ctypedef int dpotrs_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
ctypedef int dtrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, s *scale, int *info) nogil
ctypedef int dtrtri_t(char *uplo, char *diag, int *n, d *a, int *lda, int *info) nogil
ctypedef int dtrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
ctypedef int dungqr_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
ctypedef int dungrq_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
ctypedef int dunmqr_t(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil
ctypedef int sgbsv_t(int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil
ctypedef int sgbtrf_t(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info) nogil
ctypedef int sgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil
ctypedef int sgebal_t(char *job, int *n, s *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
# ctypedef int sgees_t(char *jobvs, char *sort,  nogil
ctypedef int sgeev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *w, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int sgegv_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int sgehrd_t(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int* info) nogil
ctypedef int sgelss_t(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int sgeqp3_t(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int sgeqrf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
ctypedef int sgerqf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
ctypedef int sgesdd_t(char *jobz, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, s *rwork, int *iwork, int *info) nogil
ctypedef int sgesv_t(int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil
ctypedef int sgetrf_t(int *m, int *n, s *a, int *lda, int *ipiv, int *info) nogil
ctypedef int sgetri_t(int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info) nogil
ctypedef int sgetrs_t(char *trans, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil
# ctypedef int sgges_t(char *jobvsl, char *jobvsr, char *sort,  nogil
ctypedef int sggev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int shbevd_t(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int shbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, s *ab, int *ldab, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int sheev_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int sheevd_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int sheevr_t(char *jobz, char *range, char*uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int shegv_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *info) nogil
ctypedef int shegvd_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int shegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int slaswp_t(int *n, s *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
ctypedef int slauum_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
ctypedef int spbsv_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil
ctypedef int spbtrf_t(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info) nogil
ctypedef int spbtrs_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil
ctypedef int sposv_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
ctypedef int spotrf_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
ctypedef int spotri_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
ctypedef int spotrs_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
ctypedef int strsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *scale, int *info) nogil
ctypedef int strtri_t(char *uplo, char *diag, int *n, s *a, int *lda, int *info) nogil
ctypedef int strtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
ctypedef int sungqr_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
ctypedef int sungrq_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
ctypedef int sunmqr_t(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil
ctypedef int zgbsv_t(int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil
ctypedef int zgbtrf_t(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info) nogil
ctypedef int zgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil
ctypedef int zgebal_t(char *job, int *n, z *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
# ctypedef int zgees_t(char *jobvs, char *sort,  nogil
ctypedef int zgeev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zgegv_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zgehrd_t(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int* info) nogil
ctypedef int zgelss_t(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, s *s, s *rcond, int *rank, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zgeqp3_t(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zgeqrf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
ctypedef int zgerqf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
ctypedef int zgesdd_t(char *jobz, int *m, int *n, z *a, int *lda, s *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, s *rwork, int *iwork, int *info) nogil
ctypedef int zgesv_t(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil
ctypedef int zgetrf_t(int *m, int *n, z *a, int *lda, int *ipiv, int *info) nogil
ctypedef int zgetri_t(int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info) nogil
ctypedef int zgetrs_t(char *trans, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil
# ctypedef int zgges_t(char *jobvsl, char *jobvsr, char *sort,  nogil
ctypedef int zggev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zhbevd_t(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int zhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, z *ab, int *ldab, z *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int zheev_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zheevd_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int zheevr_t(char *jobz, char *range, char*uplo, int *n, z *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, int *isuppz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int zhegv_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *info) nogil
ctypedef int zhegvd_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
ctypedef int zhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil
ctypedef int zlaswp_t(int *n, z *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
ctypedef int zlauum_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
ctypedef int zpbsv_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil
ctypedef int zpbtrf_t(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info) nogil
ctypedef int zpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil
ctypedef int zposv_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
ctypedef int zpotrf_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
ctypedef int zpotri_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
ctypedef int zpotrs_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
ctypedef int ztrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, s *scale, int *info) nogil
ctypedef int ztrtri_t(char *uplo, char *diag, int *n, z *a, int *lda, int *info) nogil
ctypedef int ztrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
ctypedef int zungqr_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
ctypedef int zungrq_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
ctypedef int zunmqr_t(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef:
    cgbsv_t *cgbsv
    cgbtrf_t *cgbtrf
    cgbtrs_t *cgbtrs
    cgebal_t *cgebal
    # cdef *cgees_t
    cgeev_t *cgeev
    cgegv_t *cgegv
    cgehrd_t *cgehrd
    cgelss_t *cgelss
    cgeqp3_t *cgeqp3
    cgeqrf_t *cgeqrf
    cgerqf_t *cgerqf
    cgesdd_t *cgesdd
    cgesv_t *cgesv
    cgetrf_t *cgetrf
    cgetri_t *cgetri
    cgetrs_t *cgetrs
    # cdef *cgges_t
    cggev_t *cggev
    chbevd_t *chbevd
    chbevx_t *chbevx
    cheev_t *cheev
    cheevd_t *cheevd
    cheevr_t *cheevr
    chegv_t *chegv
    chegvd_t *chegvd
    chegvx_t *chegvx
    claswp_t *claswp
    clauum_t *clauum
    cpbsv_t *cpbsv
    cpbtrf_t *cpbtrf
    cpbtrs_t *cpbtrs
    cposv_t *cposv
    cpotrf_t *cpotrf
    cpotri_t *cpotri
    cpotrs_t *cpotrs
    ctrsyl_t *ctrsyl
    ctrtri_t *ctrtri
    ctrtrs_t *ctrtrs
    cungqr_t *cungqr
    cungrq_t *cungrq
    cunmqr_t *cunmqr
    dgbsv_t *dgbsv
    dgbtrf_t *dgbtrf
    dgbtrs_t *dgbtrs
    dgebal_t *dgebal
    # cdef *dgees_t
    dgeev_t *dgeev
    dgegv_t *dgegv
    dgehrd_t *dgehrd
    dgelss_t *dgelss
    dgeqp3_t *dgeqp3
    dgeqrf_t *dgeqrf
    dgerqf_t *dgerqf
    dgesdd_t *dgesdd
    dgesv_t *dgesv
    dgetrf_t *dgetrf
    dgetri_t *dgetri
    dgetrs_t *dgetrs
    # cdef *dgges_t
    dggev_t *dggev
    dlaswp_t *dlaswp
    dlauum_t *dlauum
    dpbsv_t *dpbsv
    dpbtrf_t *dpbtrf
    dpbtrs_t *dpbtrs
    dposv_t *dposv
    dpotrf_t *dpotrf
    dpotri_t *dpotri
    dpotrs_t *dpotrs
    dtrsyl_t *dtrsyl
    dtrtri_t *dtrtri
    dtrtrs_t *dtrtrs
    sgbsv_t *sgbsv
    sgbtrf_t *sgbtrf
    sgbtrs_t *sgbtrs
    sgebal_t *sgebal
    # cdef *sgees_t
    sgeev_t *sgeev
    sgegv_t *sgegv
    sgehrd_t *sgehrd
    sgelss_t *sgelss
    sgeqp3_t *sgeqp3
    sgeqrf_t *sgeqrf
    sgerqf_t *sgerqf
    sgesdd_t *sgesdd
    sgesv_t *sgesv
    sgetrf_t *sgetrf
    sgetri_t *sgetri
    sgetrs_t *sgetrs
    # cdef *sgges_t
    sggev_t *sggev
    slaswp_t *slaswp
    slauum_t *slauum
    spbsv_t *spbsv
    spbtrf_t *spbtrf
    spbtrs_t *spbtrs
    sposv_t *sposv
    spotrf_t *spotrf
    spotri_t *spotri
    spotrs_t *spotrs
    strsyl_t *strsyl
    strtri_t *strtri
    strtrs_t *strtrs
    zgbsv_t *zgbsv
    zgbtrf_t *zgbtrf
    zgbtrs_t *zgbtrs
    zgebal_t *zgebal
    # cdef *zgees_t
    zgeev_t *zgeev
    zgegv_t *zgegv
    zgehrd_t *zgehrd
    zgelss_t *zgelss
    zgeqp3_t *zgeqp3
    zgeqrf_t *zgeqrf
    zgerqf_t *zgerqf
    zgesdd_t *zgesdd
    zgesv_t *zgesv
    zgetrf_t *zgetrf
    zgetri_t *zgetri
    zgetrs_t *zgetrs
    # cdef *zgges_t
    zggev_t *zggev
    zhbevd_t *zhbevd
    zhbevx_t *zhbevx
    zheev_t *zheev
    zheevd_t *zheevd
    zheevr_t *zheevr
    zhegv_t *zhegv
    zhegvd_t *zhegvd
    zhegvx_t *zhegvx
    zlaswp_t *zlaswp
    zlauum_t *zlauum
    zpbsv_t *zpbsv
    zpbtrf_t *zpbtrf
    zpbtrs_t *zpbtrs
    zposv_t *zposv
    zpotrf_t *zpotrf
    zpotri_t *zpotri
    zpotrs_t *zpotrs
    ztrsyl_t *ztrsyl
    ztrtri_t *ztrtri
    ztrtrs_t *ztrtrs
    zungqr_t *zungqr
    zungrq_t *zungrq
    zunmqr_t *zunmqr
