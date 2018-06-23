help([==[

Description
===========
CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.


More information
================
 - Homepage: http://www.cmake.org
]==])

whatis([==[Description: 
 CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.
]==])
whatis([==[Homepage: http://www.cmake.org]==])

local root = "/software.el7/software/CMake/3.9.1-GCCcore-6.4.0"

conflict("CMake")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("ncurses/.6.0-GCCcore-6.4.0") then
    load("ncurses/.6.0-GCCcore-6.4.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.9.1")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/CMake-3.9.1-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
