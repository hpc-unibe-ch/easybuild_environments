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

local root = "/software.el7/software/foss/2019a"

conflict("foss")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("OpenMPI/3.1.3-GCC-8.2.0-2.31.1") ) then
    load("OpenMPI/3.1.3-GCC-8.2.0-2.31.1")
end

if not ( isloaded("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1") ) then
    load("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1")
end

if not ( isloaded("FFTW/3.3.8-gompi-2019a") ) then
    load("FFTW/3.3.8-gompi-2019a")
end

if not ( isloaded("ScaLAPACK/2.0.2-gompi-2019a-OpenBLAS-0.3.5") ) then
    load("ScaLAPACK/2.0.2-gompi-2019a-OpenBLAS-0.3.5")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2019a")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
