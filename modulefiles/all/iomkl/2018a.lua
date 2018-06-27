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

local root = "/software.el7/software/iomkl/2018a"

conflict("iomkl")

if not isloaded("icc/.2018.1.163-GCC-6.4.0-2.28") then
    load("icc/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2018.1.163-GCC-6.4.0-2.28") then
    load("ifort/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("imkl/2018.1.163-iompi-2018a") then
    load("imkl/2018.1.163-iompi-2018a")
end

setenv("EBROOTIOMKL", root)
setenv("EBVERSIONIOMKL", "2018a")
setenv("EBDEVELIOMKL", pathJoin(root, "easybuild/iomkl-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
