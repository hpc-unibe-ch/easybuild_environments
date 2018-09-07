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

local root = "/software.el7/software/intel/2018b"

conflict("intel")

if not isloaded("GCCcore/.7.3.0") then
    load("GCCcore/.7.3.0")
end

if not isloaded("binutils/.2.30-GCCcore-7.3.0") then
    load("binutils/.2.30-GCCcore-7.3.0")
end

if not isloaded("icc/.2018.3.222-GCC-7.3.0-2.30") then
    load("icc/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("ifort/.2018.3.222-GCC-7.3.0-2.30") then
    load("ifort/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("impi/2018.3.222-iccifort-2018.3.222-GCC-7.3.0-2.30") then
    load("impi/2018.3.222-iccifort-2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("imkl/2018.3.222-iimpi-2018b") then
    load("imkl/2018.3.222-iimpi-2018b")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2018b")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/intel-2018b-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
