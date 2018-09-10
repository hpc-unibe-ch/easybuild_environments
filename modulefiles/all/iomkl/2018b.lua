help([==[

Description
===========
Intel Cluster Toolchain Compiler Edition provides Intel C/C++ and Fortran compilers, Intel MKL &
 OpenMPI.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel Cluster Toolchain Compiler Edition provides Intel C/C++ and Fortran compilers, Intel MKL &
 OpenMPI.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/software.el7/software/iomkl/2018b"

conflict("iomkl")

if not isloaded("icc/.2018.3.222-GCC-7.3.0-2.30") then
    load("icc/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("ifort/.2018.3.222-GCC-7.3.0-2.30") then
    load("ifort/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("OpenMPI/3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30") then
    load("OpenMPI/3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("imkl/2018.3.222-iompi-2018b") then
    load("imkl/2018.3.222-iompi-2018b")
end

setenv("EBROOTIOMKL", root)
setenv("EBVERSIONIOMKL", "2018b")
setenv("EBDEVELIOMKL", pathJoin(root, "easybuild/iomkl-2018b-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
