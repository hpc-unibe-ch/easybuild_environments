help([==[

Description
===========
Bison is a general-purpose parser generator that converts an annotated context-free grammar
 into a deterministic LR or generalized LR (GLR) parser employing LALR(1) parser tables.


More information
================
 - Homepage: http://www.gnu.org/software/bison
]==])

whatis([==[Description: Bison is a general-purpose parser generator that converts an annotated context-free grammar
 into a deterministic LR or generalized LR (GLR) parser employing LALR(1) parser tables.]==])
whatis([==[Homepage: http://www.gnu.org/software/bison]==])

local root = "/software.el7/software/Bison/3.0.4-GCCcore-5.4.0"

conflict("Bison")

if not isloaded("GCCcore/5.4.0") then
    load("GCCcore/5.4.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBISON", root)
setenv("EBVERSIONBISON", "3.0.4")
setenv("EBDEVELBISON", pathJoin(root, "easybuild/Bison-.3.0.4-GCCcore-5.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
