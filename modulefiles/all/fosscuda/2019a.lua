help([==[

Description
===========
GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: (none)]==])

local root = "/software.el7/software/fosscuda/2019a"

conflict("fosscuda")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("CUDA/10.1.105-GCC-8.2.0-2.31.1") ) then
    load("CUDA/10.1.105-GCC-8.2.0-2.31.1")
end

if not ( isloaded("OpenMPI/3.1.3-gcccuda-2019a") ) then
    load("OpenMPI/3.1.3-gcccuda-2019a")
end

if not ( isloaded("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1") ) then
    load("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1")
end

if not ( isloaded("FFTW/3.3.8-gompic-2019a") ) then
    load("FFTW/3.3.8-gompic-2019a")
end

if not ( isloaded("ScaLAPACK/2.0.2-gompic-2019a-OpenBLAS-0.3.5") ) then
    load("ScaLAPACK/2.0.2-gompic-2019a-OpenBLAS-0.3.5")
end

setenv("EBROOTFOSSCUDA", root)
setenv("EBVERSIONFOSSCUDA", "2019a")
setenv("EBDEVELFOSSCUDA", pathJoin(root, "easybuild/fosscuda-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
