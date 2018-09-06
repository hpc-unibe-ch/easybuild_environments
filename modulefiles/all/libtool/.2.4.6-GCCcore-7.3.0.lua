help([==[

Description
===========
GNU libtool is a generic library support script. Libtool hides the complexity
 of using shared libraries behind a consistent, portable interface.


More information
================
 - Homepage: http://www.gnu.org/software/libtool
]==])

whatis([==[Description: 
 GNU libtool is a generic library support script. Libtool hides the complexity
 of using shared libraries behind a consistent, portable interface.
]==])
whatis([==[Homepage: http://www.gnu.org/software/libtool]==])

local root = "/software.el7/software/libtool/2.4.6-GCCcore-7.3.0"

conflict("libtool")

if not isloaded("GCCcore/7.3.0") then
    load("GCCcore/7.3.0")
end

if not isloaded("M4/.1.4.18-GCCcore-7.3.0") then
    load("M4/.1.4.18-GCCcore-7.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBTOOL", root)
setenv("EBVERSIONLIBTOOL", "2.4.6")
setenv("EBDEVELLIBTOOL", pathJoin(root, "easybuild/libtool-.2.4.6-GCCcore-7.3.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
