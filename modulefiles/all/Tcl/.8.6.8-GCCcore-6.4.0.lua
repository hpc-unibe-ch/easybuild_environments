help([==[

Description
===========
Tcl (Tool Command Language) is a very powerful but easy to learn dynamic
 programming language, suitable for a very wide range of uses, including web
 and desktop applications, networking, administration, testing and many more.


More information
================
 - Homepage: http://www.tcl.tk/
]==])

whatis([==[Description: 
 Tcl (Tool Command Language) is a very powerful but easy to learn dynamic
 programming language, suitable for a very wide range of uses, including web
 and desktop applications, networking, administration, testing and many more.
]==])
whatis([==[Homepage: http://www.tcl.tk/]==])

local root = "/software.el7/software/Tcl/8.6.8-GCCcore-6.4.0"

conflict("Tcl")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTCL", root)
setenv("EBVERSIONTCL", "8.6.8")
setenv("EBDEVELTCL", pathJoin(root, "easybuild/Tcl-.8.6.8-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
