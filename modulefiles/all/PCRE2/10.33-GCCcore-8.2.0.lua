help([==[

Description
===========
The PCRE library is a set of functions that implement regular expression pattern matching using the same syntax
 and semantics as Perl 5.


More information
================
 - Homepage: http://www.pcre.org/
]==])

whatis([==[Description: 
 The PCRE library is a set of functions that implement regular expression pattern matching using the same syntax
 and semantics as Perl 5.
]==])
whatis([==[Homepage: http://www.pcre.org/]==])
whatis([==[URL: http://www.pcre.org/]==])

local root = "/software.el7/software/PCRE2/10.33-GCCcore-8.2.0"

conflict("PCRE2")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPCRE2", root)
setenv("EBVERSIONPCRE2", "10.33")
setenv("EBDEVELPCRE2", pathJoin(root, "easybuild/PCRE2-10.33-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
