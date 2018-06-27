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

local root = "/software.el7/software/iomkl/2017b"

conflict("iomkl")

if not isloaded("icc/.2017.4.196-GCC-6.4.0-2.28") then
    load("icc/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2017.4.196-GCC-6.4.0-2.28") then
    load("ifort/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.1-iccifort-2017.4.196-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.1-iccifort-2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("imkl/2017.3.196-iompi-2017b") then
    load("imkl/2017.3.196-iompi-2017b")
end

setenv("EBROOTIOMKL", root)
setenv("EBVERSIONIOMKL", "2017b")
setenv("EBDEVELIOMKL", pathJoin(root, "easybuild/iomkl-2017b-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
