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
whatis([==[URL: (none)]==])

local root = "/software.el7/software/gompic/2019b"

conflict("gompic")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("OpenMPI/3.1.4-gcccuda-2019b") ) then
    load("OpenMPI/3.1.4-gcccuda-2019b")
end

if not ( isloaded("CUDA/10.1.243") ) then
    load("CUDA/10.1.243")
end

setenv("EBROOTGOMPIC", root)
setenv("EBVERSIONGOMPIC", "2019b")
setenv("EBDEVELGOMPIC", pathJoin(root, "easybuild/gompic-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
