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

local root = "/software.el7/software/iompi/2018b"

conflict("iompi")

if not isloaded("icc/.2018.3.222-GCC-7.3.0-2.30") then
    load("icc/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("ifort/.2018.3.222-GCC-7.3.0-2.30") then
    load("ifort/.2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("OpenMPI/3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30") then
    load("OpenMPI/3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30")
end

setenv("EBROOTIOMPI", root)
setenv("EBVERSIONIOMPI", "2018b")
setenv("EBDEVELIOMPI", pathJoin(root, "easybuild/iompi-2018b-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
