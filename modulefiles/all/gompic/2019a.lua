help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain along with CUDA toolkit,
 including OpenMPI for MPI support with CUDA features enabled.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain along with CUDA toolkit,
 including OpenMPI for MPI support with CUDA features enabled.]==])
whatis([==[Homepage: (none)]==])

local root = "/software.el7/software/gompic/2019a"

conflict("gompic")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("CUDA/10.1.105-GCC-8.2.0-2.31.1") ) then
    load("CUDA/10.1.105-GCC-8.2.0-2.31.1")
end

if not ( isloaded("OpenMPI/3.1.3-gcccuda-2019a") ) then
    load("OpenMPI/3.1.3-gcccuda-2019a")
end

setenv("EBROOTGOMPIC", root)
setenv("EBVERSIONGOMPIC", "2019a")
setenv("EBDEVELGOMPIC", pathJoin(root, "easybuild/gompic-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
