help([==[

Description
===========
xz: XZ utilities


More information
================
 - Homepage: http://tukaani.org/xz/
]==])

whatis([==[Description: xz: XZ utilities]==])
whatis([==[Homepage: http://tukaani.org/xz/]==])

local root = "/software.el7/software/XZ/5.2.3-GCCcore-6.4.0"

conflict("XZ")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTXZ", root)
setenv("EBVERSIONXZ", "5.2.3")
setenv("EBDEVELXZ", pathJoin(root, "easybuild/XZ-.5.2.3-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
