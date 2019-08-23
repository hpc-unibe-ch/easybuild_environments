help([==[

Description
===========
The PCRE library is a set of functions that implement regular expression
 pattern matching using the same syntax and semantics as Perl 5.


More information
================
 - Homepage: http://www.pcre.org/
]==])

whatis([==[Description: 
 The PCRE library is a set of functions that implement regular expression
 pattern matching using the same syntax and semantics as Perl 5.
]==])
whatis([==[Homepage: http://www.pcre.org/]==])
whatis([==[URL: http://www.pcre.org/]==])

local root = "/software.el7/software/PCRE/8.43-GCCcore-8.2.0"

conflict("PCRE")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("bzip2/.1.0.6-GCCcore-8.2.0") ) then
    load("bzip2/.1.0.6-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPCRE", root)
setenv("EBVERSIONPCRE", "8.43")
setenv("EBDEVELPCRE", pathJoin(root, "easybuild/PCRE-.8.43-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
