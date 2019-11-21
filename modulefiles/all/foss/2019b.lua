help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])
whatis([==[URL: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])

local root = "/software.el7/software/foss/2019b"

conflict("foss")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("OpenMPI/3.1.4-GCC-8.3.0") ) then
    load("OpenMPI/3.1.4-GCC-8.3.0")
end

if not ( isloaded("OpenBLAS/0.3.7-GCC-8.3.0") ) then
    load("OpenBLAS/0.3.7-GCC-8.3.0")
end

if not ( isloaded("FFTW/3.3.8-gompi-2019b") ) then
    load("FFTW/3.3.8-gompi-2019b")
end

if not ( isloaded("ScaLAPACK/2.0.2-gompi-2019b") ) then
    load("ScaLAPACK/2.0.2-gompi-2019b")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2019b")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
