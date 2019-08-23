help([==[

Description
===========
ImageMagick is a software suite to create, edit, compose, or convert bitmap images


More information
================
 - Homepage: http://www.imagemagick.org/
]==])

whatis([==[Description: ImageMagick is a software suite to create, edit, compose, or convert bitmap images]==])
whatis([==[Homepage: http://www.imagemagick.org/]==])
whatis([==[URL: http://www.imagemagick.org/]==])

local root = "/software.el7/software/ImageMagick/7.0.8-46-GCCcore-8.2.0"

conflict("ImageMagick")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("bzip2/.1.0.6-GCCcore-8.2.0") ) then
    load("bzip2/.1.0.6-GCCcore-8.2.0")
end

if not ( isloaded("X11/20190311-GCCcore-8.2.0") ) then
    load("X11/20190311-GCCcore-8.2.0")
end

if not ( isloaded("Ghostscript/.9.27-GCCcore-8.2.0") ) then
    load("Ghostscript/.9.27-GCCcore-8.2.0")
end

if not ( isloaded("JasPer/.2.0.14-GCCcore-8.2.0") ) then
    load("JasPer/.2.0.14-GCCcore-8.2.0")
end

if not ( isloaded("libjpeg-turbo/.2.0.2-GCCcore-8.2.0") ) then
    load("libjpeg-turbo/.2.0.2-GCCcore-8.2.0")
end

if not ( isloaded("LibTIFF/.4.0.10-GCCcore-8.2.0") ) then
    load("LibTIFF/.4.0.10-GCCcore-8.2.0")
end

if not ( isloaded("LittleCMS/2.9-GCCcore-8.2.0") ) then
    load("LittleCMS/2.9-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIMAGEMAGICK", root)
setenv("EBVERSIONIMAGEMAGICK", "7.0.8-46")
setenv("EBDEVELIMAGEMAGICK", pathJoin(root, "easybuild/ImageMagick-7.0.8-46-GCCcore-8.2.0-easybuild-devel"))

setenv("MAGICK_HOME", "/software.el7/software/ImageMagick/7.0.8-46-GCCcore-8.2.0")
-- Built with EasyBuild version 3.9.3
