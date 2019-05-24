help([==[

Description
===========
xz: XZ utilities


More information
================
 - Homepage: https://tukaani.org/xz/
]==])

whatis([==[Description: xz: XZ utilities]==])
whatis([==[Homepage: https://tukaani.org/xz/]==])

local root = "/software.el7/software/XZ/5.2.4-GCCcore-8.2.0"

conflict("XZ")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTXZ", root)
setenv("EBVERSIONXZ", "5.2.4")
setenv("EBDEVELXZ", pathJoin(root, "easybuild/XZ-.5.2.4-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
