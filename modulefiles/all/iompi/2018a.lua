help([==[

Description
===========
Intel C/C++ and Fortran compilers, alongside Open MPI.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel C/C++ and Fortran compilers, alongside Open MPI.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/software.el7/software/iompi/2018a"

conflict("iompi")

if not isloaded("icc/.2018.1.163-GCC-6.4.0-2.28") then
    load("icc/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2018.1.163-GCC-6.4.0-2.28") then
    load("ifort/.2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28")
end

setenv("EBROOTIOMPI", root)
setenv("EBVERSIONIOMPI", "2018a")
setenv("EBDEVELIOMPI", pathJoin(root, "easybuild/iompi-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
