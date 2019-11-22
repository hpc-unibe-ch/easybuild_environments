help([==[

Description
===========
Qt is a comprehensive cross-platform C++ application framework.


More information
================
 - Homepage: http://qt.io/
]==])

whatis([==[Description: Qt is a comprehensive cross-platform C++ application framework.]==])
whatis([==[Homepage: http://qt.io/]==])
whatis([==[URL: http://qt.io/]==])

local root = "/software.el7/software/Qt5/5.12.3-GCCcore-8.2.0"

conflict("Qt5")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("double-conversion/3.1.4-GCCcore-8.2.0") ) then
    load("double-conversion/3.1.4-GCCcore-8.2.0")
end

if not ( isloaded("GLib/.2.60.1-GCCcore-8.2.0") ) then
    load("GLib/.2.60.1-GCCcore-8.2.0")
end

if not ( isloaded("PCRE2/10.33-GCCcore-8.2.0") ) then
    load("PCRE2/10.33-GCCcore-8.2.0")
end

if not ( isloaded("libpng/.1.6.36-GCCcore-8.2.0") ) then
    load("libpng/.1.6.36-GCCcore-8.2.0")
end

if not ( isloaded("X11/20190311-GCCcore-8.2.0") ) then
    load("X11/20190311-GCCcore-8.2.0")
end

if not ( isloaded("DBus/.1.13.8-GCCcore-8.2.0") ) then
    load("DBus/.1.13.8-GCCcore-8.2.0")
end

if not ( isloaded("libevent/.2.1.8-GCCcore-8.2.0") ) then
    load("libevent/.2.1.8-GCCcore-8.2.0")
end

if not ( isloaded("libGLU/.9.0.0-GCCcore-8.2.0") ) then
    load("libGLU/.9.0.0-GCCcore-8.2.0")
end

if not ( isloaded("libjpeg-turbo/.2.0.2-GCCcore-8.2.0") ) then
    load("libjpeg-turbo/.2.0.2-GCCcore-8.2.0")
end

if not ( isloaded("NSS/3.42.1-GCCcore-8.2.0") ) then
    load("NSS/3.42.1-GCCcore-8.2.0")
end

if not ( isloaded("snappy/1.1.7-GCCcore-8.2.0") ) then
    load("snappy/1.1.7-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQT5", root)
setenv("EBVERSIONQT5", "5.12.3")
setenv("EBDEVELQT5", pathJoin(root, "easybuild/Qt5-5.12.3-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
