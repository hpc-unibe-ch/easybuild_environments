help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.]==])
whatis([==[Homepage: (none)]==])

local root = "/software.el7/software/gcccuda/2019a"

conflict("gcccuda")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("CUDA/10.1.105-GCC-8.2.0-2.31.1") ) then
    load("CUDA/10.1.105-GCC-8.2.0-2.31.1")
end

setenv("EBROOTGCCCUDA", root)
setenv("EBVERSIONGCCCUDA", "2019a")
setenv("EBDEVELGCCCUDA", pathJoin(root, "easybuild/gcccuda-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
