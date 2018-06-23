help([==[

Description
===========
Expat is an XML parser library written in C. It is a stream-oriented parser
 in which an application registers handlers for things the parser might find
 in the XML document (like start tags)


More information
================
 - Homepage: http://expat.sourceforge.net/
]==])

whatis([==[Description: 
 Expat is an XML parser library written in C. It is a stream-oriented parser
 in which an application registers handlers for things the parser might find
 in the XML document (like start tags)
]==])
whatis([==[Homepage: http://expat.sourceforge.net/]==])

local root = "/software.el7/software/expat/2.2.5-GCCcore-6.4.0"

conflict("expat")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTEXPAT", root)
setenv("EBVERSIONEXPAT", "2.2.5")
setenv("EBDEVELEXPAT", pathJoin(root, "easybuild/expat-.2.2.5-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
