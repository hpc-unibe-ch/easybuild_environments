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

local root = "/software.el7/software/libGLU/9.0.0-foss-2018a"

conflict("libGLU")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("Mesa/.17.3.6-foss-2018a") then
    load("Mesa/.17.3.6-foss-2018a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.0")
setenv("EBDEVELLIBGLU", pathJoin(root, "easybuild/libGLU-.9.0.0-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
