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
whatis([==[URL: http://www.cmake.org]==])

local root = "/software.el7/software/CMake/3.13.3-GCCcore-8.2.0"

conflict("CMake")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("ncurses/.6.1-GCCcore-8.2.0") ) then
    load("ncurses/.6.1-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

if not ( isloaded("bzip2/.1.0.6-GCCcore-8.2.0") ) then
    load("bzip2/.1.0.6-GCCcore-8.2.0")
end

if not ( isloaded("cURL/7.63.0-GCCcore-8.2.0") ) then
    load("cURL/7.63.0-GCCcore-8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.13.3")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/CMake-3.13.3-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
