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

local root = "/software.el7/software/GCC/5.4.0-2.26"

conflict("GCC")

if not isloaded("GCCcore/.5.4.0") then
    load("GCCcore/.5.4.0")
end

if not isloaded("binutils/.2.26-GCCcore-5.4.0") then
    load("binutils/.2.26-GCCcore-5.4.0")
end

setenv("EBROOTGCC", "/software.el7/software/GCCcore/5.4.0")
setenv("EBVERSIONGCC", "5.4.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
