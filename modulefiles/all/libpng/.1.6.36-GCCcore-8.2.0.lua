help([==[

Description
===========
libpng is the official PNG reference library


More information
================
 - Homepage: http://www.libpng.org/pub/png/libpng.html
]==])

whatis([==[Description: libpng is the official PNG reference library]==])
whatis([==[Homepage: http://www.libpng.org/pub/png/libpng.html]==])
whatis([==[URL: http://www.libpng.org/pub/png/libpng.html]==])

local root = "/software.el7/software/libpng/1.6.36-GCCcore-8.2.0"

conflict("libpng")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPNG", root)
setenv("EBVERSIONLIBPNG", "1.6.36")
setenv("EBDEVELLIBPNG", pathJoin(root, "easybuild/libpng-.1.6.36-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
