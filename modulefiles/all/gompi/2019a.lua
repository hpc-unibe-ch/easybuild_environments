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

local root = "/software.el7/software/gompi/2019a"

conflict("gompi")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("OpenMPI/3.1.3-GCC-8.2.0-2.31.1") ) then
    load("OpenMPI/3.1.3-GCC-8.2.0-2.31.1")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2019a")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/gompi-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
