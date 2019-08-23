help([==[

Description
===========
Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.


More information
================
 - Homepage: http://www.freedesktop.org/software/fontconfig
]==])

whatis([==[Description: 
 Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.
]==])
whatis([==[Homepage: http://www.freedesktop.org/software/fontconfig]==])
whatis([==[URL: http://www.freedesktop.org/software/fontconfig]==])

local root = "/software.el7/software/fontconfig/2.13.1-GCCcore-8.2.0"

conflict("fontconfig")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("expat/.2.2.6-GCCcore-8.2.0") ) then
    load("expat/.2.2.6-GCCcore-8.2.0")
end

if not ( isloaded("freetype/.2.9.1-GCCcore-8.2.0") ) then
    load("freetype/.2.9.1-GCCcore-8.2.0")
end

if not ( isloaded("util-linux/.2.33-GCCcore-8.2.0") ) then
    load("util-linux/.2.33-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFONTCONFIG", root)
setenv("EBVERSIONFONTCONFIG", "2.13.1")
setenv("EBDEVELFONTCONFIG", pathJoin(root, "easybuild/fontconfig-.2.13.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
