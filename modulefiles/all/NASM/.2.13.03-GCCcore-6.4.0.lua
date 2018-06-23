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

local root = "/software.el7/software/NASM/2.13.03-GCCcore-6.4.0"

conflict("NASM")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNASM", root)
setenv("EBVERSIONNASM", "2.13.03")
setenv("EBDEVELNASM", pathJoin(root, "easybuild/NASM-.2.13.03-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
