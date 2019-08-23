help([==[

Description
===========
Set of Linux utilities


More information
================
 - Homepage: http://www.kernel.org/pub/linux/utils/util-linux
]==])

whatis([==[Description: Set of Linux utilities]==])
whatis([==[Homepage: http://www.kernel.org/pub/linux/utils/util-linux]==])
whatis([==[URL: http://www.kernel.org/pub/linux/utils/util-linux]==])

local root = "/software.el7/software/util-linux/2.33-GCCcore-8.2.0"

conflict("util-linux")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("ncurses/.6.1-GCCcore-8.2.0") ) then
    load("ncurses/.6.1-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTUTILMINLINUX", root)
setenv("EBVERSIONUTILMINLINUX", "2.33")
setenv("EBDEVELUTILMINLINUX", pathJoin(root, "easybuild/util-linux-.2.33-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
