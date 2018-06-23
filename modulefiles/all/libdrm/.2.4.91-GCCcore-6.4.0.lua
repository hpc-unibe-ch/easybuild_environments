help([==[

Description
===========
Direct Rendering Manager runtime library.


More information
================
 - Homepage: http://dri.freedesktop.org
]==])

whatis([==[Description: Direct Rendering Manager runtime library.]==])
whatis([==[Homepage: http://dri.freedesktop.org]==])

local root = "/software.el7/software/libdrm/2.4.91-GCCcore-6.4.0"

conflict("libdrm")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("X11/20180131-GCCcore-6.4.0") then
    load("X11/20180131-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBDRM", root)
setenv("EBVERSIONLIBDRM", "2.4.91")
setenv("EBDEVELLIBDRM", pathJoin(root, "easybuild/libdrm-.2.4.91-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
