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

local root = "/software.el7/software/util-linux/2.31.1-GCCcore-6.4.0"

conflict("util-linux")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("ncurses/.6.0-GCCcore-6.4.0") then
    load("ncurses/.6.0-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTUTILMINLINUX", root)
setenv("EBVERSIONUTILMINLINUX", "2.31.1")
setenv("EBDEVELUTILMINLINUX", pathJoin(root, "easybuild/util-linux-.2.31.1-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
