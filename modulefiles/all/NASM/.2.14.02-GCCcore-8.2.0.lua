help([==[

Description
===========
NASM: General-purpose x86 assembler


More information
================
 - Homepage: http://www.nasm.us/
]==])

whatis([==[Description: NASM: General-purpose x86 assembler]==])
whatis([==[Homepage: http://www.nasm.us/]==])
whatis([==[URL: http://www.nasm.us/]==])

local root = "/software.el7/software/NASM/2.14.02-GCCcore-8.2.0"

conflict("NASM")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNASM", root)
setenv("EBVERSIONNASM", "2.14.02")
setenv("EBDEVELNASM", pathJoin(root, "easybuild/NASM-.2.14.02-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
