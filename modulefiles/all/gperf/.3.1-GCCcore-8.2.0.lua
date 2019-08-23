help([==[

Description
===========
GNU gperf is a perfect hash function generator. For a given list of strings,
 it produces a hash function and hash table, in form of C or C++ code, for
 looking up a value depending on the input string. The hash function is
 perfect, which means that the hash table has no collisions, and the hash
 table lookup needs a single string comparison only.


More information
================
 - Homepage: http://www.gnu.org/software/gperf/
]==])

whatis([==[Description: 
 GNU gperf is a perfect hash function generator. For a given list of strings,
 it produces a hash function and hash table, in form of C or C++ code, for
 looking up a value depending on the input string. The hash function is
 perfect, which means that the hash table has no collisions, and the hash
 table lookup needs a single string comparison only.
]==])
whatis([==[Homepage: http://www.gnu.org/software/gperf/]==])
whatis([==[URL: http://www.gnu.org/software/gperf/]==])

local root = "/software.el7/software/gperf/3.1-GCCcore-8.2.0"

conflict("gperf")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGPERF", root)
setenv("EBVERSIONGPERF", "3.1")
setenv("EBDEVELGPERF", pathJoin(root, "easybuild/gperf-.3.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
