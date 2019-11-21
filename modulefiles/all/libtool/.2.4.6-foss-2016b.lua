help([==[

Description
===========
GNU libtool is a generic library support script. Libtool hides the complexity of using shared libraries
 behind a consistent, portable interface.


More information
================
 - Homepage: http://www.gnu.org/software/libtool
]==])

whatis([==[Description: GNU libtool is a generic library support script. Libtool hides the complexity of using shared libraries
 behind a consistent, portable interface.]==])
whatis([==[Homepage: http://www.gnu.org/software/libtool]==])
whatis([==[URL: http://www.gnu.org/software/libtool]==])

local root = "/software.el7/software/libtool/2.4.6-foss-2016b"

conflict("libtool")

if not ( isloaded("foss/2016b") ) then
    load("foss/2016b")
end

if not ( isloaded("M4/.1.4.17-foss-2016b") ) then
    load("M4/.1.4.17-foss-2016b")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBTOOL", root)
setenv("EBVERSIONLIBTOOL", "2.4.6")
setenv("EBDEVELLIBTOOL", pathJoin(root, "easybuild/libtool-.2.4.6-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
