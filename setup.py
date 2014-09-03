from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
from numpy import get_include

ext_modules = [Extension(# Module name:
                         "test_dgemm",
                         # Cython source files:
                         ["test_dgemm.pyx"])]

# Build the extension.
setup(name = 'test',
      cmdclass = {'build_ext': build_ext},
      include_dirs = [get_include()],
      ext_modules = ext_modules)
