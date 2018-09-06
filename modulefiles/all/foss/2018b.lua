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

local root = "/software.el7/software/foss/2018b"

conflict("foss")

if not isloaded("GCC/7.3.0-2.30") then
    load("GCC/7.3.0-2.30")
end

if not isloaded("OpenMPI/3.1.1-GCC-7.3.0-2.30") then
    load("OpenMPI/3.1.1-GCC-7.3.0-2.30")
end

if not isloaded("OpenBLAS/0.3.1-GCC-7.3.0-2.30") then
    load("OpenBLAS/0.3.1-GCC-7.3.0-2.30")
end

if not isloaded("FFTW/3.3.8-gompi-2018b") then
    load("FFTW/3.3.8-gompi-2018b")
end

if not isloaded("ScaLAPACK/2.0.2-gompi-2018b-OpenBLAS-0.3.1") then
    load("ScaLAPACK/2.0.2-gompi-2018b-OpenBLAS-0.3.1")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2018b")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2018b-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
