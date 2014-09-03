ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

ctypedef int cgbsv_t(int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info)
ctypedef int cgbtrf_t(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info)
ctypedef int cgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info)
ctypedef int cgebal_t(char *job, int *n, c *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
# ctypedef int cgees_t(char *jobvs, char *sort, 
ctypedef int cgeev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
ctypedef int cgegv_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
ctypedef int cgehrd_t(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int* info)
ctypedef int cgelss_t(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info)
ctypedef int cgeqp3_t(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, int *lwork, s *rwork, int *info)
ctypedef int cgeqrf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
ctypedef int cgerqf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
ctypedef int cgesdd_t(char *jobz, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *iwork, int *info)
ctypedef int cgesv_t(int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info)
ctypedef int cgetrf_t(int *m, int *n, c *a, int *lda, int *ipiv, int *info)
ctypedef int cgetri_t(int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info)
ctypedef int cgetrs_t(char *trans, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info)
# ctypedef int cgges_t(char *jobvsl, char *jobvsr, char *sort, 
ctypedef int cggev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info)
ctypedef int chbevd_t(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int chbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, c *ab, int *ldab, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int cheev_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *info)
ctypedef int cheevd_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int cheevr_t(char *jobz, char *range, char*uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int chegv_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *info)
ctypedef int chegvd_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int chegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int claswp_t(int *n, c *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
ctypedef int clauum_t(char *uplo, int *n, c *a, int *lda, int *info)
ctypedef int cpbsv_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info)
ctypedef int cpbtrf_t(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info)
ctypedef int cpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info)
ctypedef int cposv_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
ctypedef int cpotrf_t(char *uplo, int *n, c *a, int *lda, int *info)
ctypedef int cpotri_t(char *uplo, int *n, c *a, int *lda, int *info)
ctypedef int cpotrs_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
ctypedef int ctrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, s *scale, int *info)
ctypedef int ctrtri_t(char *uplo, char *diag, int *n, c *a, int *lda, int *info)
ctypedef int ctrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info)
ctypedef int cungqr_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
ctypedef int cungrq_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info)
ctypedef int cunmqr_t(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info)
ctypedef int dgbsv_t(int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info)
ctypedef int dgbtrf_t(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info)
ctypedef int dgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info)
ctypedef int dgebal_t(char *job, int *n, d *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
# ctypedef int dgees_t(char *jobvs, char *sort, 
ctypedef int dgeev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *w, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
ctypedef int dgegv_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
ctypedef int dgehrd_t(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int* info)
ctypedef int dgelss_t(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, s *s, s *rcond, int *rank, d *work, int *lwork, s *rwork, int *info)
ctypedef int dgeqp3_t(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *lwork, s *rwork, int *info)
ctypedef int dgeqrf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
ctypedef int dgerqf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
ctypedef int dgesdd_t(char *jobz, int *m, int *n, d *a, int *lda, s *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, s *rwork, int *iwork, int *info)
ctypedef int dgesv_t(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info)
ctypedef int dgetrf_t(int *m, int *n, d *a, int *lda, int *ipiv, int *info)
ctypedef int dgetri_t(int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info)
ctypedef int dgetrs_t(char *trans, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info)
# ctypedef int dgges_t(char *jobvsl, char *jobvsr, char *sort, 
ctypedef int dggev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info)
ctypedef int dhbevd_t(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int dhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, d *ab, int *ldab, d *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int dheev_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *info)
ctypedef int dheevd_t(char *jobz, char *uplo, int *n, d *a, int *lda, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int dheevr_t(char *jobz, char *range, char*uplo, int *n, d *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int dhegv_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *info)
ctypedef int dhegvd_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *w, d *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int dhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, d *z, int *ldz, d *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int dlaswp_t(int *n, d *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
ctypedef int dlauum_t(char *uplo, int *n, d *a, int *lda, int *info)
ctypedef int dpbsv_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info)
ctypedef int dpbtrf_t(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info)
ctypedef int dpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info)
ctypedef int dposv_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
ctypedef int dpotrf_t(char *uplo, int *n, d *a, int *lda, int *info)
ctypedef int dpotri_t(char *uplo, int *n, d *a, int *lda, int *info)
ctypedef int dpotrs_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
ctypedef int dtrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, s *scale, int *info)
ctypedef int dtrtri_t(char *uplo, char *diag, int *n, d *a, int *lda, int *info)
ctypedef int dtrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info)
ctypedef int dungqr_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
ctypedef int dungrq_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info)
ctypedef int dunmqr_t(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info)
ctypedef int sgbsv_t(int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info)
ctypedef int sgbtrf_t(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info)
ctypedef int sgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info)
ctypedef int sgebal_t(char *job, int *n, s *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
# ctypedef int sgees_t(char *jobvs, char *sort, 
ctypedef int sgeev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *w, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
ctypedef int sgegv_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
ctypedef int sgehrd_t(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int* info)
ctypedef int sgelss_t(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, s *rwork, int *info)
ctypedef int sgeqp3_t(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *lwork, s *rwork, int *info)
ctypedef int sgeqrf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
ctypedef int sgerqf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
ctypedef int sgesdd_t(char *jobz, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, s *rwork, int *iwork, int *info)
ctypedef int sgesv_t(int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info)
ctypedef int sgetrf_t(int *m, int *n, s *a, int *lda, int *ipiv, int *info)
ctypedef int sgetri_t(int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info)
ctypedef int sgetrs_t(char *trans, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info)
# ctypedef int sgges_t(char *jobvsl, char *jobvsr, char *sort, 
ctypedef int sggev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info)
ctypedef int shbevd_t(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int shbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, s *ab, int *ldab, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int sheev_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *info)
ctypedef int sheevd_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int sheevr_t(char *jobz, char *range, char*uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int shegv_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *info)
ctypedef int shegvd_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int shegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int slaswp_t(int *n, s *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
ctypedef int slauum_t(char *uplo, int *n, s *a, int *lda, int *info)
ctypedef int spbsv_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info)
ctypedef int spbtrf_t(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info)
ctypedef int spbtrs_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info)
ctypedef int sposv_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
ctypedef int spotrf_t(char *uplo, int *n, s *a, int *lda, int *info)
ctypedef int spotri_t(char *uplo, int *n, s *a, int *lda, int *info)
ctypedef int spotrs_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
ctypedef int strsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *scale, int *info)
ctypedef int strtri_t(char *uplo, char *diag, int *n, s *a, int *lda, int *info)
ctypedef int strtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info)
ctypedef int sungqr_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
ctypedef int sungrq_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info)
ctypedef int sunmqr_t(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info)
ctypedef int zgbsv_t(int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info)
ctypedef int zgbtrf_t(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info)
ctypedef int zgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info)
ctypedef int zgebal_t(char *job, int *n, z *a, int *lda, int *ilo, int *ihi, s *scale, int *info)
# ctypedef int zgees_t(char *jobvs, char *sort, 
ctypedef int zgeev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
ctypedef int zgegv_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
ctypedef int zgehrd_t(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int* info)
ctypedef int zgelss_t(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, s *s, s *rcond, int *rank, z *work, int *lwork, s *rwork, int *info)
ctypedef int zgeqp3_t(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, int *lwork, s *rwork, int *info)
ctypedef int zgeqrf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
ctypedef int zgerqf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
ctypedef int zgesdd_t(char *jobz, int *m, int *n, z *a, int *lda, s *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, s *rwork, int *iwork, int *info)
ctypedef int zgesv_t(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info)
ctypedef int zgetrf_t(int *m, int *n, z *a, int *lda, int *ipiv, int *info)
ctypedef int zgetri_t(int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info)
ctypedef int zgetrs_t(char *trans, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info)
# ctypedef int zgges_t(char *jobvsl, char *jobvsr, char *sort, 
ctypedef int zggev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info)
ctypedef int zhbevd_t(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int zhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, z *ab, int *ldab, z *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int zheev_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *info)
ctypedef int zheevd_t(char *jobz, char *uplo, int *n, z *a, int *lda, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int zheevr_t(char *jobz, char *range, char*uplo, int *n, z *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, int *isuppz, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int zhegv_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *info)
ctypedef int zhegvd_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *w, z *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info)
ctypedef int zhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, z *z, int *ldz, z *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info)
ctypedef int zlaswp_t(int *n, z *a, int *lda, int *k1, int *k2, int *ipiv, int *incx)
ctypedef int zlauum_t(char *uplo, int *n, z *a, int *lda, int *info)
ctypedef int zpbsv_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info)
ctypedef int zpbtrf_t(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info)
ctypedef int zpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info)
ctypedef int zposv_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
ctypedef int zpotrf_t(char *uplo, int *n, z *a, int *lda, int *info)
ctypedef int zpotri_t(char *uplo, int *n, z *a, int *lda, int *info)
ctypedef int zpotrs_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
ctypedef int ztrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, s *scale, int *info)
ctypedef int ztrtri_t(char *uplo, char *diag, int *n, z *a, int *lda, int *info)
ctypedef int ztrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info)
ctypedef int zungqr_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
ctypedef int zungrq_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info)
ctypedef int zunmqr_t(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info)

ctypedef int dgemm_t(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil

cdef struct lapack_t:
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
    dhbevd_t *dhbevd
    dhbevx_t *dhbevx
    dheev_t *dheev
    dheevd_t *dheevd
    dheevr_t *dheevr
    dhegv_t *dhegv
    dhegvd_t *dhegvd
    dhegvx_t *dhegvx
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
    dungqr_t *dungqr
    dungrq_t *dungrq
    dunmqr_t *dunmqr
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
    shbevd_t *shbevd
    shbevx_t *shbevx
    sheev_t *sheev
    sheevd_t *sheevd
    sheevr_t *sheevr
    shegv_t *shegv
    shegvd_t *shegvd
    shegvx_t *shegvx
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
    sungqr_t *sungqr
    sungrq_t *sungrq
    sunmqr_t *sunmqr
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
    
    dgemm_t *dgemm

cdef inline lapack_t getlapack(object lapack_module):
    cdef lapack_t lapack
    lapack.cgbsv = <cgbsv_t*>f2py_ptr(lapack_module.cgbsv._cpointer)
    lapack.cgbtrf = <cgbtrf_t*>f2py_ptr(lapack_module.cgbtrf._cpointer)
    lapack.cgbtrs = <cgbtrs_t*>f2py_ptr(lapack_module.cgbtrs._cpointer)
    lapack.cgebal = <cgebal_t*>f2py_ptr(lapack_module.cgebal._cpointer)
    # lapack.cgees = <cgees_t*>f2py_ptr(lapack_module.cgees._cpointer)
    lapack.cgeev = <cgeev_t*>f2py_ptr(lapack_module.cgeev._cpointer)
    lapack.cgegv = <cgegv_t*>f2py_ptr(lapack_module.cgegv._cpointer)
    lapack.cgehrd = <cgehrd_t*>f2py_ptr(lapack_module.cgehrd._cpointer)
    lapack.cgelss = <cgelss_t*>f2py_ptr(lapack_module.cgelss._cpointer)
    lapack.cgeqp3 = <cgeqp3_t*>f2py_ptr(lapack_module.cgeqp3._cpointer)
    lapack.cgeqrf = <cgeqrf_t*>f2py_ptr(lapack_module.cgeqrf._cpointer)
    lapack.cgerqf = <cgerqf_t*>f2py_ptr(lapack_module.cgerqf._cpointer)
    lapack.cgesdd = <cgesdd_t*>f2py_ptr(lapack_module.cgesdd._cpointer)
    lapack.cgesv = <cgesv_t*>f2py_ptr(lapack_module.cgesv._cpointer)
    lapack.cgetrf = <cgetrf_t*>f2py_ptr(lapack_module.cgetrf._cpointer)
    lapack.cgetri = <cgetri_t*>f2py_ptr(lapack_module.cgetri._cpointer)
    lapack.cgetrs = <cgetrs_t*>f2py_ptr(lapack_module.cgetrs._cpointer)
    # lapack.cgges = <cgges_t*>f2py_ptr(lapack_module.cgges._cpointer)
    lapack.cggev = <cggev_t*>f2py_ptr(lapack_module.cggev._cpointer)
    lapack.chbevd = <chbevd_t*>f2py_ptr(lapack_module.chbevd._cpointer)
    lapack.chbevx = <chbevx_t*>f2py_ptr(lapack_module.chbevx._cpointer)
    lapack.cheev = <cheev_t*>f2py_ptr(lapack_module.cheev._cpointer)
    lapack.cheevd = <cheevd_t*>f2py_ptr(lapack_module.cheevd._cpointer)
    lapack.cheevr = <cheevr_t*>f2py_ptr(lapack_module.cheevr._cpointer)
    lapack.chegv = <chegv_t*>f2py_ptr(lapack_module.chegv._cpointer)
    lapack.chegvd = <chegvd_t*>f2py_ptr(lapack_module.chegvd._cpointer)
    lapack.chegvx = <chegvx_t*>f2py_ptr(lapack_module.chegvx._cpointer)
    lapack.claswp = <claswp_t*>f2py_ptr(lapack_module.claswp._cpointer)
    lapack.clauum = <clauum_t*>f2py_ptr(lapack_module.clauum._cpointer)
    lapack.cpbsv = <cpbsv_t*>f2py_ptr(lapack_module.cpbsv._cpointer)
    lapack.cpbtrf = <cpbtrf_t*>f2py_ptr(lapack_module.cpbtrf._cpointer)
    lapack.cpbtrs = <cpbtrs_t*>f2py_ptr(lapack_module.cpbtrs._cpointer)
    lapack.cposv = <cposv_t*>f2py_ptr(lapack_module.cposv._cpointer)
    lapack.cpotrf = <cpotrf_t*>f2py_ptr(lapack_module.cpotrf._cpointer)
    lapack.cpotri = <cpotri_t*>f2py_ptr(lapack_module.cpotri._cpointer)
    lapack.cpotrs = <cpotrs_t*>f2py_ptr(lapack_module.cpotrs._cpointer)
    lapack.ctrsyl = <ctrsyl_t*>f2py_ptr(lapack_module.ctrsyl._cpointer)
    lapack.ctrtri = <ctrtri_t*>f2py_ptr(lapack_module.ctrtri._cpointer)
    lapack.ctrtrs = <ctrtrs_t*>f2py_ptr(lapack_module.ctrtrs._cpointer)
    lapack.cungqr = <cungqr_t*>f2py_ptr(lapack_module.cungqr._cpointer)
    lapack.cungrq = <cungrq_t*>f2py_ptr(lapack_module.cungrq._cpointer)
    lapack.cunmqr = <cunmqr_t*>f2py_ptr(lapack_module.cunmqr._cpointer)
    lapack.dgbsv = <dgbsv_t*>f2py_ptr(lapack_module.dgbsv._cpointer)
    lapack.dgbtrf = <dgbtrf_t*>f2py_ptr(lapack_module.dgbtrf._cpointer)
    lapack.dgbtrs = <dgbtrs_t*>f2py_ptr(lapack_module.dgbtrs._cpointer)
    lapack.dgebal = <dgebal_t*>f2py_ptr(lapack_module.dgebal._cpointer)
    # lapack.dgees = <dgees_t*>f2py_ptr(lapack_module.dgees._cpointer)
    lapack.dgeev = <dgeev_t*>f2py_ptr(lapack_module.dgeev._cpointer)
    lapack.dgegv = <dgegv_t*>f2py_ptr(lapack_module.dgegv._cpointer)
    lapack.dgehrd = <dgehrd_t*>f2py_ptr(lapack_module.dgehrd._cpointer)
    lapack.dgelss = <dgelss_t*>f2py_ptr(lapack_module.dgelss._cpointer)
    lapack.dgeqp3 = <dgeqp3_t*>f2py_ptr(lapack_module.dgeqp3._cpointer)
    lapack.dgeqrf = <dgeqrf_t*>f2py_ptr(lapack_module.dgeqrf._cpointer)
    lapack.dgerqf = <dgerqf_t*>f2py_ptr(lapack_module.dgerqf._cpointer)
    lapack.dgesdd = <dgesdd_t*>f2py_ptr(lapack_module.dgesdd._cpointer)
    lapack.dgesv = <dgesv_t*>f2py_ptr(lapack_module.dgesv._cpointer)
    lapack.dgetrf = <dgetrf_t*>f2py_ptr(lapack_module.dgetrf._cpointer)
    lapack.dgetri = <dgetri_t*>f2py_ptr(lapack_module.dgetri._cpointer)
    lapack.dgetrs = <dgetrs_t*>f2py_ptr(lapack_module.dgetrs._cpointer)
    # lapack.dgges = <dgges_t*>f2py_ptr(lapack_module.dgges._cpointer)
    lapack.dggev = <dggev_t*>f2py_ptr(lapack_module.dggev._cpointer)
    lapack.dhbevd = <dhbevd_t*>f2py_ptr(lapack_module.dhbevd._cpointer)
    lapack.dhbevx = <dhbevx_t*>f2py_ptr(lapack_module.dhbevx._cpointer)
    lapack.dheev = <dheev_t*>f2py_ptr(lapack_module.dheev._cpointer)
    lapack.dheevd = <dheevd_t*>f2py_ptr(lapack_module.dheevd._cpointer)
    lapack.dheevr = <dheevr_t*>f2py_ptr(lapack_module.dheevr._cpointer)
    lapack.dhegv = <dhegv_t*>f2py_ptr(lapack_module.dhegv._cpointer)
    lapack.dhegvd = <dhegvd_t*>f2py_ptr(lapack_module.dhegvd._cpointer)
    lapack.dhegvx = <dhegvx_t*>f2py_ptr(lapack_module.dhegvx._cpointer)
    lapack.dlaswp = <dlaswp_t*>f2py_ptr(lapack_module.dlaswp._cpointer)
    lapack.dlauum = <dlauum_t*>f2py_ptr(lapack_module.dlauum._cpointer)
    lapack.dpbsv = <dpbsv_t*>f2py_ptr(lapack_module.dpbsv._cpointer)
    lapack.dpbtrf = <dpbtrf_t*>f2py_ptr(lapack_module.dpbtrf._cpointer)
    lapack.dpbtrs = <dpbtrs_t*>f2py_ptr(lapack_module.dpbtrs._cpointer)
    lapack.dposv = <dposv_t*>f2py_ptr(lapack_module.dposv._cpointer)
    lapack.dpotrf = <dpotrf_t*>f2py_ptr(lapack_module.dpotrf._cpointer)
    lapack.dpotri = <dpotri_t*>f2py_ptr(lapack_module.dpotri._cpointer)
    lapack.dpotrs = <dpotrs_t*>f2py_ptr(lapack_module.dpotrs._cpointer)
    lapack.dtrsyl = <dtrsyl_t*>f2py_ptr(lapack_module.dtrsyl._cpointer)
    lapack.dtrtri = <dtrtri_t*>f2py_ptr(lapack_module.dtrtri._cpointer)
    lapack.dtrtrs = <dtrtrs_t*>f2py_ptr(lapack_module.dtrtrs._cpointer)
    lapack.dungqr = <dungqr_t*>f2py_ptr(lapack_module.dungqr._cpointer)
    lapack.dungrq = <dungrq_t*>f2py_ptr(lapack_module.dungrq._cpointer)
    lapack.dunmqr = <dunmqr_t*>f2py_ptr(lapack_module.dunmqr._cpointer)
    lapack.sgbsv = <sgbsv_t*>f2py_ptr(lapack_module.sgbsv._cpointer)
    lapack.sgbtrf = <sgbtrf_t*>f2py_ptr(lapack_module.sgbtrf._cpointer)
    lapack.sgbtrs = <sgbtrs_t*>f2py_ptr(lapack_module.sgbtrs._cpointer)
    lapack.sgebal = <sgebal_t*>f2py_ptr(lapack_module.sgebal._cpointer)
    # lapack.sgees = <sgees_t*>f2py_ptr(lapack_module.sgees._cpointer)
    lapack.sgeev = <sgeev_t*>f2py_ptr(lapack_module.sgeev._cpointer)
    lapack.sgegv = <sgegv_t*>f2py_ptr(lapack_module.sgegv._cpointer)
    lapack.sgehrd = <sgehrd_t*>f2py_ptr(lapack_module.sgehrd._cpointer)
    lapack.sgelss = <sgelss_t*>f2py_ptr(lapack_module.sgelss._cpointer)
    lapack.sgeqp3 = <sgeqp3_t*>f2py_ptr(lapack_module.sgeqp3._cpointer)
    lapack.sgeqrf = <sgeqrf_t*>f2py_ptr(lapack_module.sgeqrf._cpointer)
    lapack.sgerqf = <sgerqf_t*>f2py_ptr(lapack_module.sgerqf._cpointer)
    lapack.sgesdd = <sgesdd_t*>f2py_ptr(lapack_module.sgesdd._cpointer)
    lapack.sgesv = <sgesv_t*>f2py_ptr(lapack_module.sgesv._cpointer)
    lapack.sgetrf = <sgetrf_t*>f2py_ptr(lapack_module.sgetrf._cpointer)
    lapack.sgetri = <sgetri_t*>f2py_ptr(lapack_module.sgetri._cpointer)
    lapack.sgetrs = <sgetrs_t*>f2py_ptr(lapack_module.sgetrs._cpointer)
    # lapack.sgges = <sgges_t*>f2py_ptr(lapack_module.sgges._cpointer)
    lapack.sggev = <sggev_t*>f2py_ptr(lapack_module.sggev._cpointer)
    lapack.shbevd = <shbevd_t*>f2py_ptr(lapack_module.shbevd._cpointer)
    lapack.shbevx = <shbevx_t*>f2py_ptr(lapack_module.shbevx._cpointer)
    lapack.sheev = <sheev_t*>f2py_ptr(lapack_module.sheev._cpointer)
    lapack.sheevd = <sheevd_t*>f2py_ptr(lapack_module.sheevd._cpointer)
    lapack.sheevr = <sheevr_t*>f2py_ptr(lapack_module.sheevr._cpointer)
    lapack.shegv = <shegv_t*>f2py_ptr(lapack_module.shegv._cpointer)
    lapack.shegvd = <shegvd_t*>f2py_ptr(lapack_module.shegvd._cpointer)
    lapack.shegvx = <shegvx_t*>f2py_ptr(lapack_module.shegvx._cpointer)
    lapack.slaswp = <slaswp_t*>f2py_ptr(lapack_module.slaswp._cpointer)
    lapack.slauum = <slauum_t*>f2py_ptr(lapack_module.slauum._cpointer)
    lapack.spbsv = <spbsv_t*>f2py_ptr(lapack_module.spbsv._cpointer)
    lapack.spbtrf = <spbtrf_t*>f2py_ptr(lapack_module.spbtrf._cpointer)
    lapack.spbtrs = <spbtrs_t*>f2py_ptr(lapack_module.spbtrs._cpointer)
    lapack.sposv = <sposv_t*>f2py_ptr(lapack_module.sposv._cpointer)
    lapack.spotrf = <spotrf_t*>f2py_ptr(lapack_module.spotrf._cpointer)
    lapack.spotri = <spotri_t*>f2py_ptr(lapack_module.spotri._cpointer)
    lapack.spotrs = <spotrs_t*>f2py_ptr(lapack_module.spotrs._cpointer)
    lapack.strsyl = <strsyl_t*>f2py_ptr(lapack_module.strsyl._cpointer)
    lapack.strtri = <strtri_t*>f2py_ptr(lapack_module.strtri._cpointer)
    lapack.strtrs = <strtrs_t*>f2py_ptr(lapack_module.strtrs._cpointer)
    lapack.sungqr = <sungqr_t*>f2py_ptr(lapack_module.sungqr._cpointer)
    lapack.sungrq = <sungrq_t*>f2py_ptr(lapack_module.sungrq._cpointer)
    lapack.sunmqr = <sunmqr_t*>f2py_ptr(lapack_module.sunmqr._cpointer)
    lapack.zgbsv = <zgbsv_t*>f2py_ptr(lapack_module.zgbsv._cpointer)
    lapack.zgbtrf = <zgbtrf_t*>f2py_ptr(lapack_module.zgbtrf._cpointer)
    lapack.zgbtrs = <zgbtrs_t*>f2py_ptr(lapack_module.zgbtrs._cpointer)
    lapack.zgebal = <zgebal_t*>f2py_ptr(lapack_module.zgebal._cpointer)
    # lapack.zgees = <zgees_t*>f2py_ptr(lapack_module.zgees._cpointer)
    lapack.zgeev = <zgeev_t*>f2py_ptr(lapack_module.zgeev._cpointer)
    lapack.zgegv = <zgegv_t*>f2py_ptr(lapack_module.zgegv._cpointer)
    lapack.zgehrd = <zgehrd_t*>f2py_ptr(lapack_module.zgehrd._cpointer)
    lapack.zgelss = <zgelss_t*>f2py_ptr(lapack_module.zgelss._cpointer)
    lapack.zgeqp3 = <zgeqp3_t*>f2py_ptr(lapack_module.zgeqp3._cpointer)
    lapack.zgeqrf = <zgeqrf_t*>f2py_ptr(lapack_module.zgeqrf._cpointer)
    lapack.zgerqf = <zgerqf_t*>f2py_ptr(lapack_module.zgerqf._cpointer)
    lapack.zgesdd = <zgesdd_t*>f2py_ptr(lapack_module.zgesdd._cpointer)
    lapack.zgesv = <zgesv_t*>f2py_ptr(lapack_module.zgesv._cpointer)
    lapack.zgetrf = <zgetrf_t*>f2py_ptr(lapack_module.zgetrf._cpointer)
    lapack.zgetri = <zgetri_t*>f2py_ptr(lapack_module.zgetri._cpointer)
    lapack.zgetrs = <zgetrs_t*>f2py_ptr(lapack_module.zgetrs._cpointer)
    # lapack.zgges = <zgges_t*>f2py_ptr(lapack_module.zgges._cpointer)
    lapack.zggev = <zggev_t*>f2py_ptr(lapack_module.zggev._cpointer)
    lapack.zhbevd = <zhbevd_t*>f2py_ptr(lapack_module.zhbevd._cpointer)
    lapack.zhbevx = <zhbevx_t*>f2py_ptr(lapack_module.zhbevx._cpointer)
    lapack.zheev = <zheev_t*>f2py_ptr(lapack_module.zheev._cpointer)
    lapack.zheevd = <zheevd_t*>f2py_ptr(lapack_module.zheevd._cpointer)
    lapack.zheevr = <zheevr_t*>f2py_ptr(lapack_module.zheevr._cpointer)
    lapack.zhegv = <zhegv_t*>f2py_ptr(lapack_module.zhegv._cpointer)
    lapack.zhegvd = <zhegvd_t*>f2py_ptr(lapack_module.zhegvd._cpointer)
    lapack.zhegvx = <zhegvx_t*>f2py_ptr(lapack_module.zhegvx._cpointer)
    lapack.zlaswp = <zlaswp_t*>f2py_ptr(lapack_module.zlaswp._cpointer)
    lapack.zlauum = <zlauum_t*>f2py_ptr(lapack_module.zlauum._cpointer)
    lapack.zpbsv = <zpbsv_t*>f2py_ptr(lapack_module.zpbsv._cpointer)
    lapack.zpbtrf = <zpbtrf_t*>f2py_ptr(lapack_module.zpbtrf._cpointer)
    lapack.zpbtrs = <zpbtrs_t*>f2py_ptr(lapack_module.zpbtrs._cpointer)
    lapack.zposv = <zposv_t*>f2py_ptr(lapack_module.zposv._cpointer)
    lapack.zpotrf = <zpotrf_t*>f2py_ptr(lapack_module.zpotrf._cpointer)
    lapack.zpotri = <zpotri_t*>f2py_ptr(lapack_module.zpotri._cpointer)
    lapack.zpotrs = <zpotrs_t*>f2py_ptr(lapack_module.zpotrs._cpointer)
    lapack.ztrsyl = <ztrsyl_t*>f2py_ptr(lapack_module.ztrsyl._cpointer)
    lapack.ztrtri = <ztrtri_t*>f2py_ptr(lapack_module.ztrtri._cpointer)
    lapack.ztrtrs = <ztrtrs_t*>f2py_ptr(lapack_module.ztrtrs._cpointer)
    lapack.zungqr = <zungqr_t*>f2py_ptr(lapack_module.zungqr._cpointer)
    lapack.zungrq = <zungrq_t*>f2py_ptr(lapack_module.zungrq._cpointer)
    lapack.zunmqr = <zunmqr_t*>f2py_ptr(lapack_module.zunmqr._cpointer)
    
    lapack.dgemm = <dgemm_t*>f2py_ptr(lapack_module.dgemm._cpointer)
    
    return lapack
