help([==[

Description
===========
tiff: Library and tools for reading and writing TIFF data files


More information
================
 - Homepage: http://www.remotesensing.org/libtiff/
]==])

whatis([==[Description: tiff: Library and tools for reading and writing TIFF data files]==])
whatis([==[Homepage: http://www.remotesensing.org/libtiff/]==])
whatis([==[URL: http://www.remotesensing.org/libtiff/]==])

local root = "/software.el7/software/LibTIFF/4.0.10-GCCcore-8.2.0"

conflict("LibTIFF")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBTIFF", root)
setenv("EBVERSIONLIBTIFF", "4.0.10")
setenv("EBDEVELLIBTIFF", pathJoin(root, "easybuild/LibTIFF-.4.0.10-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
