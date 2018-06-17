help([==[

Description
===========
Intel C, C++ & Fortran compilers


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel C, C++ & Fortran compilers]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/software.el7/software/iccifort/2018.1.163-GCC-6.4.0-2.28"

conflict("iccifort")

if not isloaded("icc/.2018.1.163-GCC-6.4.0-2.28") then
    load("icc/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2018.1.163-GCC-6.4.0-2.28") then
    load("ifort/.2018.1.163-GCC-6.4.0-2.28")
end

setenv("EBROOTICCIFORT", root)
setenv("EBVERSIONICCIFORT", "2018.1.163")
setenv("EBDEVELICCIFORT", pathJoin(root, "easybuild/iccifort-2018.1.163-GCC-6.4.0-2.28-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
