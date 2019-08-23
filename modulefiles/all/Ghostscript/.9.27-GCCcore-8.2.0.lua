help([==[

Description
===========
Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.


More information
================
 - Homepage: http://ghostscript.com
]==])

whatis([==[Description: Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.]==])
whatis([==[Homepage: http://ghostscript.com]==])
whatis([==[URL: http://ghostscript.com]==])

local root = "/software.el7/software/Ghostscript/9.27-GCCcore-8.2.0"

conflict("Ghostscript")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

if not ( isloaded("libpng/.1.6.36-GCCcore-8.2.0") ) then
    load("libpng/.1.6.36-GCCcore-8.2.0")
end

if not ( isloaded("freetype/.2.9.1-GCCcore-8.2.0") ) then
    load("freetype/.2.9.1-GCCcore-8.2.0")
end

if not ( isloaded("libjpeg-turbo/.2.0.2-GCCcore-8.2.0") ) then
    load("libjpeg-turbo/.2.0.2-GCCcore-8.2.0")
end

if not ( isloaded("expat/.2.2.6-GCCcore-8.2.0") ) then
    load("expat/.2.2.6-GCCcore-8.2.0")
end

if not ( isloaded("GLib/.2.60.1-GCCcore-8.2.0") ) then
    load("GLib/.2.60.1-GCCcore-8.2.0")
end

if not ( isloaded("cairo/.1.16.0-GCCcore-8.2.0") ) then
    load("cairo/.1.16.0-GCCcore-8.2.0")
end

if not ( isloaded("LibTIFF/.4.0.10-GCCcore-8.2.0") ) then
    load("LibTIFF/.4.0.10-GCCcore-8.2.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "9.27")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "easybuild/Ghostscript-.9.27-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
