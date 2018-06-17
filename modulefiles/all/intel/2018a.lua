help([==[

Description
===========
Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/software.el7/software/intel/2018a"

conflict("intel")

if not isloaded("GCCcore/.6.4.0") then
    load("GCCcore/.6.4.0")
end

if not isloaded("binutils/.2.28-GCCcore-6.4.0") then
    load("binutils/.2.28-GCCcore-6.4.0")
end

if not isloaded("icc/.2018.1.163-GCC-6.4.0-2.28") then
    load("icc/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2018.1.163-GCC-6.4.0-2.28") then
    load("ifort/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("impi/2018.1.163-iccifort-2018.1.163-GCC-6.4.0-2.28") then
    load("impi/2018.1.163-iccifort-2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("imkl/2018.1.163-iimpi-2018a") then
    load("imkl/2018.1.163-iimpi-2018a")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2018a")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/intel-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
