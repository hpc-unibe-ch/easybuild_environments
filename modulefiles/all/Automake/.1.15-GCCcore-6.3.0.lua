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

local root = "/software.el7/software/Automake/1.15-GCCcore-6.3.0"

conflict("Automake")

if not isloaded("GCCcore/6.3.0") then
    load("GCCcore/6.3.0")
end

if not isloaded("Autoconf/.2.69-GCCcore-6.3.0") then
    load("Autoconf/.2.69-GCCcore-6.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.15")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "easybuild/Automake-.1.15-GCCcore-6.3.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
