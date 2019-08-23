help([==[

Description
===========
ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.


More information
================
 - Homepage: http://site.icu-project.org/home
]==])

whatis([==[Description: ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.]==])
whatis([==[Homepage: http://site.icu-project.org/home]==])
whatis([==[URL: http://site.icu-project.org/home]==])

local root = "/software.el7/software/ICU/64.2-GCCcore-8.2.0"

conflict("ICU")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTICU", root)
setenv("EBVERSIONICU", "64.2")
setenv("EBDEVELICU", pathJoin(root, "easybuild/ICU-64.2-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
