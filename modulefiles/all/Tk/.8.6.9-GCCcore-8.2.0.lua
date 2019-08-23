help([==[

Description
===========
Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.


More information
================
 - Homepage: http://www.tcl.tk/
]==])

whatis([==[Description: Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.]==])
whatis([==[Homepage: http://www.tcl.tk/]==])
whatis([==[URL: http://www.tcl.tk/]==])

local root = "/software.el7/software/Tk/8.6.9-GCCcore-8.2.0"

conflict("Tk")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Tcl/.8.6.9-GCCcore-8.2.0") ) then
    load("Tcl/.8.6.9-GCCcore-8.2.0")
end

if not ( isloaded("X11/20190311-GCCcore-8.2.0") ) then
    load("X11/20190311-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTK", root)
setenv("EBVERSIONTK", "8.6.9")
setenv("EBDEVELTK", pathJoin(root, "easybuild/Tk-.8.6.9-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
