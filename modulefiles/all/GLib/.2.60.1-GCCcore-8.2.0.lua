help([==[

Description
===========
GLib is one of the base libraries of the GTK+ project


More information
================
 - Homepage: http://www.gtk.org/
]==])

whatis([==[Description: GLib is one of the base libraries of the GTK+ project]==])
whatis([==[Homepage: http://www.gtk.org/]==])
whatis([==[URL: http://www.gtk.org/]==])

local root = "/software.el7/software/GLib/2.60.1-GCCcore-8.2.0"

conflict("GLib")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("libffi/.3.2.1-GCCcore-8.2.0") ) then
    load("libffi/.3.2.1-GCCcore-8.2.0")
end

if not ( isloaded("gettext/.0.19.8.1-GCCcore-8.2.0") ) then
    load("gettext/.0.19.8.1-GCCcore-8.2.0")
end

if not ( isloaded("libxml2/.2.9.8-GCCcore-8.2.0") ) then
    load("libxml2/.2.9.8-GCCcore-8.2.0")
end

if not ( isloaded("PCRE/.8.43-GCCcore-8.2.0") ) then
    load("PCRE/.8.43-GCCcore-8.2.0")
end

if not ( isloaded("util-linux/.2.33-GCCcore-8.2.0") ) then
    load("util-linux/.2.33-GCCcore-8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGLIB", root)
setenv("EBVERSIONGLIB", "2.60.1")
setenv("EBDEVELGLIB", pathJoin(root, "easybuild/GLib-.2.60.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
