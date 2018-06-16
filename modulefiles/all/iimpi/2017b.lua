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

local root = "/software.el7/software/iimpi/2017b"

conflict("iimpi")

if not isloaded("icc/.2017.4.196-GCC-6.4.0-2.28") then
    load("icc/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2017.4.196-GCC-6.4.0-2.28") then
    load("ifort/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("impi/2017.3.196-iccifort-2017.4.196-GCC-6.4.0-2.28") then
    load("impi/2017.3.196-iccifort-2017.4.196-GCC-6.4.0-2.28")
end

setenv("EBROOTIIMPI", root)
setenv("EBVERSIONIIMPI", "2017b")
setenv("EBDEVELIIMPI", pathJoin(root, "easybuild/iimpi-2017b-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
