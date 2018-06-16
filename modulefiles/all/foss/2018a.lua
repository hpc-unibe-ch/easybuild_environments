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

local root = "/software.el7/software/foss/2018a"

conflict("foss")

if not isloaded("GCC/6.4.0-2.28") then
    load("GCC/6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.2-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.2-GCC-6.4.0-2.28")
end

if not isloaded("OpenBLAS/0.2.20-GCC-6.4.0-2.28") then
    load("OpenBLAS/0.2.20-GCC-6.4.0-2.28")
end

if not isloaded("FFTW/3.3.7-gompi-2018a") then
    load("FFTW/3.3.7-gompi-2018a")
end

if not isloaded("ScaLAPACK/2.0.2-gompi-2018a-OpenBLAS-0.2.20") then
    load("ScaLAPACK/2.0.2-gompi-2018a-OpenBLAS-0.2.20")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2018a")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
