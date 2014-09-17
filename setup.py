from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

ext_modules = [Extension("scipy_blas",["cylinalg/scipy_blas.pyx"],include_dirs=['cylinalg']),
               Extension("scipy_lapack", ["cylinalg/scipy_lapack.pyx"], include_dirs=['cylinalg']),
               Extension("test_dgemm", ["cylinalg/test_dgemm.pyx"])]

# Build the extension.
setup(name = 'cylinalg',
      packages = ['cylinalg'],
      package_data = {'cylinalg':['cylinalg/*.pxd']},
      include_dirs=['cylinalg'],
      cmdclass = {'build_ext': build_ext},
      ext_modules = ext_modules)
