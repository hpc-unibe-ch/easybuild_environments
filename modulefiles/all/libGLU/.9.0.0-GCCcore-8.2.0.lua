help([==[

Description
===========
The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL.


More information
================
 - Homepage: ftp://ftp.freedesktop.org/pub/mesa/glu/
]==])

whatis([==[Description: The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL. ]==])
whatis([==[Homepage: ftp://ftp.freedesktop.org/pub/mesa/glu/]==])
whatis([==[URL: ftp://ftp.freedesktop.org/pub/mesa/glu/]==])

local root = "/software.el7/software/libGLU/9.0.0-GCCcore-8.2.0"

conflict("libGLU")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Mesa/.19.0.1-GCCcore-8.2.0") ) then
    load("Mesa/.19.0.1-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.0")
setenv("EBDEVELLIBGLU", pathJoin(root, "easybuild/libGLU-.9.0.0-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
