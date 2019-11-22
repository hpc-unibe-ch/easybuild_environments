help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: http://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: http://gcc.gnu.org/]==])
whatis([==[URL: http://gcc.gnu.org/]==])

local root = "/software.el7/software/GCC/8.3.0"

conflict("GCC")

if not ( isloaded("GCCcore/.8.3.0") ) then
    load("GCCcore/.8.3.0")
end

if not ( isloaded("binutils/.2.32-GCCcore-8.3.0") ) then
    load("binutils/.2.32-GCCcore-8.3.0")
end

setenv("EBROOTGCC", "/software.el7/software/GCCcore/8.3.0")
setenv("EBVERSIONGCC", "8.3.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
