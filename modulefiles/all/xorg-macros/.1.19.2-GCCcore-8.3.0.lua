help([==[

Description
===========
X.org macros utilities.


More information
================
 - Homepage: http://cgit.freedesktop.org/xorg/util/macros
]==])

whatis([==[Description: X.org macros utilities.]==])
whatis([==[Homepage: http://cgit.freedesktop.org/xorg/util/macros]==])
whatis([==[URL: http://cgit.freedesktop.org/xorg/util/macros]==])

local root = "/software.el7/software/xorg-macros/1.19.2-GCCcore-8.3.0"

conflict("xorg-macros")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTXORGMINMACROS", root)
setenv("EBVERSIONXORGMINMACROS", "1.19.2")
setenv("EBDEVELXORGMINMACROS", pathJoin(root, "easybuild/xorg-macros-.1.19.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
