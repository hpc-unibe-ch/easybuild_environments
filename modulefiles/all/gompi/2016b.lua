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

local root = "/software.el7/software/gompi/2016b"

conflict("gompi")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("OpenMPI/1.10.3-GCC-5.4.0-2.26") then
    load("OpenMPI/1.10.3-GCC-5.4.0-2.26")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2016b")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/gompi-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
