help([==[

Description
===========
Automake: GNU Standards-compliant Makefile generator


More information
================
 - Homepage: http://www.gnu.org/software/automake/automake.html
]==])

whatis([==[Description: Automake: GNU Standards-compliant Makefile generator]==])
whatis([==[Homepage: http://www.gnu.org/software/automake/automake.html]==])

local root = "/software.el7/software/Automake/1.16.1-GCCcore-8.2.0"

conflict("Automake")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Autoconf/.2.69-GCCcore-8.2.0") ) then
    load("Autoconf/.2.69-GCCcore-8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.16.1")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "easybuild/Automake-.1.16.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
