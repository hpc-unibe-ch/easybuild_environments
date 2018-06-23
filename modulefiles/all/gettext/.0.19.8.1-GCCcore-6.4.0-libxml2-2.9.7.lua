help([==[

Description
===========
GNU 'gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation


More information
================
 - Homepage: http://www.gnu.org/software/gettext/
]==])

whatis([==[Description: GNU 'gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation]==])
whatis([==[Homepage: http://www.gnu.org/software/gettext/]==])

local root = "/software.el7/software/gettext/0.19.8.1-GCCcore-6.4.0-libxml2-2.9.7"

conflict("gettext")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("libxml2/.2.9.7-GCCcore-6.4.0") then
    load("libxml2/.2.9.7-GCCcore-6.4.0")
end

if not isloaded("ncurses/.6.0-GCCcore-6.4.0") then
    load("ncurses/.6.0-GCCcore-6.4.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGETTEXT", root)
setenv("EBVERSIONGETTEXT", "0.19.8.1")
setenv("EBDEVELGETTEXT", pathJoin(root, "easybuild/gettext-.0.19.8.1-GCCcore-6.4.0-libxml2-2.9.7-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
