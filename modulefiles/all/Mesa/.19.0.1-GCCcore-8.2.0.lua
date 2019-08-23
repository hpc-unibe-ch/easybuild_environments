help([==[

Description
===========
Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.


More information
================
 - Homepage: http://www.mesa3d.org/
]==])

whatis([==[Description: Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.]==])
whatis([==[Homepage: http://www.mesa3d.org/]==])
whatis([==[URL: http://www.mesa3d.org/]==])

local root = "/software.el7/software/Mesa/19.0.1-GCCcore-8.2.0"

conflict("Mesa")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

if not ( isloaded("nettle/3.4.1-GCCcore-8.2.0") ) then
    load("nettle/3.4.1-GCCcore-8.2.0")
end

if not ( isloaded("libdrm/.2.4.97-GCCcore-8.2.0") ) then
    load("libdrm/.2.4.97-GCCcore-8.2.0")
end

if not ( isloaded("LLVM/7.0.1-GCCcore-8.2.0") ) then
    load("LLVM/7.0.1-GCCcore-8.2.0")
end

if not ( isloaded("X11/20190311-GCCcore-8.2.0") ) then
    load("X11/20190311-GCCcore-8.2.0")
end

if not ( isloaded("libunwind/.1.3.1-GCCcore-8.2.0") ) then
    load("libunwind/.1.3.1-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "19.0.1")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Mesa-.19.0.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
