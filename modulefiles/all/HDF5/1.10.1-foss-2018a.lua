help([==[

Description
===========
HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.


More information
================
 - Homepage: https://support.hdfgroup.org/HDF5/
]==])

whatis([==[Description: HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.]==])
whatis([==[Homepage: https://support.hdfgroup.org/HDF5/]==])

local root = "/software.el7/software/HDF5/1.10.1-foss-2018a"

conflict("HDF5")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("Szip/.2.1.1-GCCcore-6.4.0") then
    load("Szip/.2.1.1-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHDF5", root)
setenv("EBVERSIONHDF5", "1.10.1")
setenv("EBDEVELHDF5", pathJoin(root, "easybuild/HDF5-1.10.1-foss-2018a-easybuild-devel"))

setenv("HDF5_DIR", "/software.el7/software/HDF5/1.10.1-foss-2018a")
-- Built with EasyBuild version 3.6.1
