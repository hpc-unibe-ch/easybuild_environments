help([==[

Description
===========
Generic PCI access library.


More information
================
 - Homepage: http://cgit.freedesktop.org/xorg/lib/libpciaccess/
]==])

whatis([==[Description: Generic PCI access library.]==])
whatis([==[Homepage: http://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])
whatis([==[URL: http://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])

local root = "/software.el7/software/libpciaccess/0.14-GCCcore-8.3.0"

conflict("libpciaccess")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPCIACCESS", root)
setenv("EBVERSIONLIBPCIACCESS", "0.14")
setenv("EBDEVELLIBPCIACCESS", pathJoin(root, "easybuild/libpciaccess-.0.14-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
