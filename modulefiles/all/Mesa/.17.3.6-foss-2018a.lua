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

local root = "/software.el7/software/Mesa/17.3.6-foss-2018a"

conflict("Mesa")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("nettle/3.4-foss-2018a") then
    load("nettle/3.4-foss-2018a")
end

if not isloaded("libdrm/.2.4.91-GCCcore-6.4.0") then
    load("libdrm/.2.4.91-GCCcore-6.4.0")
end

if not isloaded("LLVM/5.0.1-GCCcore-6.4.0") then
    load("LLVM/5.0.1-GCCcore-6.4.0")
end

if not isloaded("X11/20180131-GCCcore-6.4.0") then
    load("X11/20180131-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "17.3.6")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Mesa-.17.3.6-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
