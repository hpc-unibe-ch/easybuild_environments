help([==[

Description
===========
FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.


More information
================
 - Homepage: http://freetype.org
]==])

whatis([==[Description: 
 FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.
]==])
whatis([==[Homepage: http://freetype.org]==])
whatis([==[URL: http://freetype.org]==])

local root = "/software.el7/software/freetype/2.9.1-GCCcore-8.2.0"

conflict("freetype")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("bzip2/.1.0.6-GCCcore-8.2.0") ) then
    load("bzip2/.1.0.6-GCCcore-8.2.0")
end

if not ( isloaded("libpng/.1.6.36-GCCcore-8.2.0") ) then
    load("libpng/.1.6.36-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include/freetype2"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFREETYPE", root)
setenv("EBVERSIONFREETYPE", "2.9.1")
setenv("EBDEVELFREETYPE", pathJoin(root, "easybuild/freetype-.2.9.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
