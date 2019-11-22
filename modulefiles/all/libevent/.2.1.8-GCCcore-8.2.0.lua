help([==[

Description
===========
The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.


More information
================
 - Homepage: https://libevent.org/
]==])

whatis([==[Description: 
 The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.
]==])
whatis([==[Homepage: https://libevent.org/]==])
whatis([==[URL: https://libevent.org/]==])

local root = "/software.el7/software/libevent/2.1.8-GCCcore-8.2.0"

conflict("libevent")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBEVENT", root)
setenv("EBVERSIONLIBEVENT", "2.1.8")
setenv("EBDEVELLIBEVENT", pathJoin(root, "easybuild/libevent-.2.1.8-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
