help([==[

Description
===========
intltool is a set of tools to centralize translation of
 many different file formats using GNU gettext-compatible PO files.


More information
================
 - Homepage: http://freedesktop.org/wiki/Software/intltool/
]==])

whatis([==[Description: intltool is a set of tools to centralize translation of
 many different file formats using GNU gettext-compatible PO files.]==])
whatis([==[Homepage: http://freedesktop.org/wiki/Software/intltool/]==])

local root = "/software.el7/software/intltool/0.51.0-GCCcore-6.4.0-Perl-5.26.1"

conflict("intltool")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("XML-Parser/.2.44_01-GCCcore-6.4.0-Perl-5.26.1") then
    load("XML-Parser/.2.44_01-GCCcore-6.4.0-Perl-5.26.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTINTLTOOL", root)
setenv("EBVERSIONINTLTOOL", "0.51.0")
setenv("EBDEVELINTLTOOL", pathJoin(root, "easybuild/intltool-.0.51.0-GCCcore-6.4.0-Perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
