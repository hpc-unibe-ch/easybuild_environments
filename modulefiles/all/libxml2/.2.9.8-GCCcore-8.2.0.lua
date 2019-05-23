help([==[

Description
===========
Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform).


More information
================
 - Homepage: http://xmlsoft.org/
]==])

whatis([==[Description: 
 Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform).
]==])
whatis([==[Homepage: http://xmlsoft.org/]==])

local root = "/software.el7/software/libxml2/2.9.8-GCCcore-8.2.0"

conflict("libxml2")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("XZ/.5.2.4-GCCcore-8.2.0") ) then
    load("XZ/.5.2.4-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBXML2", root)
setenv("EBVERSIONLIBXML2", "2.9.8")
setenv("EBDEVELLIBXML2", pathJoin(root, "easybuild/libxml2-.2.9.8-GCCcore-8.2.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/libxml2"))
-- Built with EasyBuild version 3.9.1
