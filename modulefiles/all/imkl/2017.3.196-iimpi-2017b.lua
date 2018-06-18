help([==[

Description
===========
Intel Math Kernel Library (MKL), a library of highly optimized,
 extensively threaded math functions, including BLAS, (Sca)LAPACK, Fast Fourier Transforms (FFT), etc.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-mkl/
]==])

whatis([==[Description: Intel Math Kernel Library (MKL), a library of highly optimized,
 extensively threaded math functions, including BLAS, (Sca)LAPACK, Fast Fourier Transforms (FFT), etc.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-mkl/]==])

local root = "/software.el7/software/imkl/2017.3.196-iimpi-2017b"

conflict("imkl")

if not isloaded("iimpi/2017b") then
    load("iimpi/2017b")
end

prepend_path("CPATH", pathJoin(root, "mkl/include"))
prepend_path("CPATH", pathJoin(root, "mkl/include/fftw"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mkl/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mkl/lib/intel64"))
prepend_path("MIC_LD_LIBRARY_PATH", pathJoin(root, "lib/intel64_lin_mic"))
prepend_path("MIC_LD_LIBRARY_PATH", pathJoin(root, "mkl/lib/mic"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "mkl/bin"))
setenv("EBROOTIMKL", root)
setenv("EBVERSIONIMKL", "2017.3.196")
setenv("EBDEVELIMKL", pathJoin(root, "easybuild/imkl-2017.3.196-iimpi-2017b-easybuild-devel"))

setenv("MKL_EXAMPLES", "/software.el7/software/imkl/2017.3.196-iimpi-2017b/mkl/examples/")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("MKLROOT", "/software.el7/software/imkl/2017.3.196-iimpi-2017b/mkl")
-- Built with EasyBuild version 3.6.1
