help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.]==])
whatis([==[Homepage: (none)]==])

local root = "/software.el7/software/gompi/2017a"

conflict("gompi")

if not isloaded("GCC/6.3.0-2.27") then
    load("GCC/6.3.0-2.27")
end

if not isloaded("OpenMPI/2.0.2-GCC-6.3.0-2.27") then
    load("OpenMPI/2.0.2-GCC-6.3.0-2.27")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2017a")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/gompi-2017a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
