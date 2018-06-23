help([==[

Description
===========
The X Window System (X11) is a windowing system for bitmap displays


More information
================
 - Homepage: https://www.x.org
]==])

whatis([==[Description: The X Window System (X11) is a windowing system for bitmap displays]==])
whatis([==[Homepage: https://www.x.org]==])

local root = "/software.el7/software/X11/20180131-GCCcore-6.4.0"

conflict("X11")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("bzip2/.1.0.6-GCCcore-6.4.0") then
    load("bzip2/.1.0.6-GCCcore-6.4.0")
end

if not isloaded("fontconfig/.2.12.6-GCCcore-6.4.0") then
    load("fontconfig/.2.12.6-GCCcore-6.4.0")
end

if not isloaded("freetype/.2.9-GCCcore-6.4.0") then
    load("freetype/.2.9-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTX11", root)
setenv("EBVERSIONX11", "20180131")
setenv("EBDEVELX11", pathJoin(root, "easybuild/X11-20180131-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
