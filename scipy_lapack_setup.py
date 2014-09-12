from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
from numpy import get_include

ext_modules = [Extension(# Module name:
                         "scipy_lapack",
                         # Cython source files:
                         ["scipy_lapack.pyx"],
                         include_dirs=['.'])]

# Build the extension.
setup(name = 'scipy_lapack',
      cmdclass = {'build_ext': build_ext},
      ext_modules = ext_modules)
