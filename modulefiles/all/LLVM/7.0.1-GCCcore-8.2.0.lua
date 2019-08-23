help([==[

Description
===========
The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.


More information
================
 - Homepage: http://llvm.org/
]==])

whatis([==[Description: The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.]==])
whatis([==[Homepage: http://llvm.org/]==])
whatis([==[URL: http://llvm.org/]==])

local root = "/software.el7/software/LLVM/7.0.1-GCCcore-8.2.0"

conflict("LLVM")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("ncurses/.6.1-GCCcore-8.2.0") ) then
    load("ncurses/.6.1-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLLVM", root)
setenv("EBVERSIONLLVM", "7.0.1")
setenv("EBDEVELLLVM", pathJoin(root, "easybuild/LLVM-7.0.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
