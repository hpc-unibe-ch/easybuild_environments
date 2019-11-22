help([==[

Description
===========
Netscape Portable Runtime (NSPR) provides a platform-neutral API for system level
 and libc-like functions.


More information
================
 - Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSPR
]==])

whatis([==[Description: Netscape Portable Runtime (NSPR) provides a platform-neutral API for system level
 and libc-like functions.]==])
whatis([==[Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSPR]==])
whatis([==[URL: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSPR]==])

local root = "/software.el7/software/NSPR/4.21-GCCcore-8.2.0"

conflict("NSPR")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNSPR", root)
setenv("EBVERSIONNSPR", "4.21")
setenv("EBDEVELNSPR", pathJoin(root, "easybuild/NSPR-4.21-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
