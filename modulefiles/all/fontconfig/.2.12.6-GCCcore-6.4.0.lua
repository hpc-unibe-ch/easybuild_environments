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

local root = "/software.el7/software/fontconfig/2.12.6-GCCcore-6.4.0"

conflict("fontconfig")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("expat/.2.2.5-GCCcore-6.4.0") then
    load("expat/.2.2.5-GCCcore-6.4.0")
end

if not isloaded("freetype/.2.9-GCCcore-6.4.0") then
    load("freetype/.2.9-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFONTCONFIG", root)
setenv("EBVERSIONFONTCONFIG", "2.12.6")
setenv("EBDEVELFONTCONFIG", pathJoin(root, "easybuild/fontconfig-.2.12.6-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
