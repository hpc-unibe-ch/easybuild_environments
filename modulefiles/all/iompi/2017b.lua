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

local root = "/software.el7/software/iompi/2017b"

conflict("iompi")

if not isloaded("icc/.2017.4.196-GCC-6.4.0-2.28") then
    load("icc/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("ifort/.2017.4.196-GCC-6.4.0-2.28") then
    load("ifort/.2017.4.196-GCC-6.4.0-2.28")
end

if not isloaded("OpenMPI/2.1.1-iccifort-2017.4.196-GCC-6.4.0-2.28") then
    load("OpenMPI/2.1.1-iccifort-2017.4.196-GCC-6.4.0-2.28")
end

setenv("EBROOTIOMPI", root)
setenv("EBVERSIONIOMPI", "2017b")
setenv("EBDEVELIOMPI", pathJoin(root, "easybuild/iompi-2017b-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
