help([==[

Description
===========
The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.


More information
================
 - Homepage: http://sourceware.org/libffi/
]==])

whatis([==[Description: 
 The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.
]==])
whatis([==[Homepage: http://sourceware.org/libffi/]==])
whatis([==[URL: http://sourceware.org/libffi/]==])

local root = "/software.el7/software/libffi/3.2.1-GCCcore-8.2.0"

conflict("libffi")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBFFI", root)
setenv("EBVERSIONLIBFFI", "3.2.1")
setenv("EBDEVELLIBFFI", pathJoin(root, "easybuild/libffi-.3.2.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
