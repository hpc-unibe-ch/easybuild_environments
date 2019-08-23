help([==[

Description
===========
Szip compression software, providing lossless compression of scientific data


More information
================
 - Homepage: http://www.hdfgroup.org/doc_resource/SZIP/
]==])

whatis([==[Description: 
 Szip compression software, providing lossless compression of scientific data
]==])
whatis([==[Homepage: http://www.hdfgroup.org/doc_resource/SZIP/]==])
whatis([==[URL: http://www.hdfgroup.org/doc_resource/SZIP/]==])

local root = "/software.el7/software/Szip/2.1.1-GCCcore-8.2.0"

conflict("Szip")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSZIP", root)
setenv("EBVERSIONSZIP", "2.1.1")
setenv("EBDEVELSZIP", pathJoin(root, "easybuild/Szip-.2.1.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
