help([==[

Description
===========
Intel C/C++ and Fortran compilers, alongside Intel MPI.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel C/C++ and Fortran compilers, alongside Intel MPI.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/software.el7/software/iimpi/2018b"

conflict("iimpi")

if not isloaded("icc/.2018.3.222-GCC-7.3.0-2.30") then
    load("icc/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("ifort/.2018.3.222-GCC-7.3.0-2.30") then
    load("ifort/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("impi/2018.3.222-iccifort-2018.3.222-GCC-7.3.0-2.30") then
    load("impi/2018.3.222-iccifort-2018.3.222-GCC-7.3.0-2.30")
end

setenv("EBROOTIIMPI", root)
setenv("EBVERSIONIIMPI", "2018b")
setenv("EBDEVELIIMPI", pathJoin(root, "easybuild/iimpi-2018b-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
