help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: (none)]==])

local root = "/software.el7/software/foss/2017a"

conflict("foss")

if not isloaded("GCC/6.3.0-2.27") then
    load("GCC/6.3.0-2.27")
end

if not isloaded("OpenMPI/2.0.2-GCC-6.3.0-2.27") then
    load("OpenMPI/2.0.2-GCC-6.3.0-2.27")
end

if not isloaded("OpenBLAS/0.2.19-GCC-6.3.0-2.27-LAPACK-3.7.0") then
    load("OpenBLAS/0.2.19-GCC-6.3.0-2.27-LAPACK-3.7.0")
end

if not isloaded("FFTW/3.3.6-gompi-2017a") then
    load("FFTW/3.3.6-gompi-2017a")
end

if not isloaded("ScaLAPACK/2.0.2-gompi-2017a-OpenBLAS-0.2.19-LAPACK-3.7.0") then
    load("ScaLAPACK/2.0.2-gompi-2017a-OpenBLAS-0.2.19-LAPACK-3.7.0")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2017a")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2017a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
