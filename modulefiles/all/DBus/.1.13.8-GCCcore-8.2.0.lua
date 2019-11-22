help([==[

Description
===========
D-Bus is a message bus system, a simple way for applications to talk
 to one another.  In addition to interprocess communication, D-Bus helps
 coordinate process lifecycle; it makes it simple and reliable to code
 a "single instance" application or daemon, and to launch applications
 and daemons on demand when their services are needed.


More information
================
 - Homepage: http://dbus.freedesktop.org/
]==])

whatis([==[Description: 
 D-Bus is a message bus system, a simple way for applications to talk
 to one another.  In addition to interprocess communication, D-Bus helps
 coordinate process lifecycle; it makes it simple and reliable to code
 a "single instance" application or daemon, and to launch applications
 and daemons on demand when their services are needed.
]==])
whatis([==[Homepage: http://dbus.freedesktop.org/]==])
whatis([==[URL: http://dbus.freedesktop.org/]==])

local root = "/software.el7/software/DBus/1.13.8-GCCcore-8.2.0"

conflict("DBus")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("expat/.2.2.6-GCCcore-8.2.0") ) then
    load("expat/.2.2.6-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTDBUS", root)
setenv("EBVERSIONDBUS", "1.13.8")
setenv("EBDEVELDBUS", pathJoin(root, "easybuild/DBus-.1.13.8-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
