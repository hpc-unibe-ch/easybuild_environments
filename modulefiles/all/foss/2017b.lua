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

local root = "/software.el7/software/foss/2017b"

conflict("foss")

if not isloaded("GCC/6.4.0-2.28") then
    load("GCC/6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.1-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.1-GCC-6.4.0-2.28")
end

if not isloaded("OpenBLAS/0.2.20-GCC-6.4.0-2.28") then
    load("OpenBLAS/0.2.20-GCC-6.4.0-2.28")
end

if not isloaded("FFTW/3.3.6-gompi-2017b") then
    load("FFTW/3.3.6-gompi-2017b")
end

if not isloaded("ScaLAPACK/2.0.2-gompi-2017b-OpenBLAS-0.2.20") then
    load("ScaLAPACK/2.0.2-gompi-2017b-OpenBLAS-0.2.20")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2017b")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2017b-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
