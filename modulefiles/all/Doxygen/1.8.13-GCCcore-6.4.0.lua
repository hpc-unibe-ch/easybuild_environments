help([==[

Description
===========
Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.


More information
================
 - Homepage: http://www.doxygen.org
]==])

whatis([==[Description: 
 Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.
]==])
whatis([==[Homepage: http://www.doxygen.org]==])

local root = "/software.el7/software/Doxygen/1.8.13-GCCcore-6.4.0"

conflict("Doxygen")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDOXYGEN", root)
setenv("EBVERSIONDOXYGEN", "1.8.13")
setenv("EBDEVELDOXYGEN", pathJoin(root, "easybuild/Doxygen-1.8.13-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
