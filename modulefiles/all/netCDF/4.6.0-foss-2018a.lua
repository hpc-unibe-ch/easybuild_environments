help([==[

Description
===========
NetCDF (network Common Data Form) is a set of software libraries 
 and machine-independent data formats that support the creation, access, and sharing of array-oriented 
 scientific data.


More information
================
 - Homepage: http://www.unidata.ucar.edu/software/netcdf/
]==])

whatis([==[Description: NetCDF (network Common Data Form) is a set of software libraries 
 and machine-independent data formats that support the creation, access, and sharing of array-oriented 
 scientific data.]==])
whatis([==[Homepage: http://www.unidata.ucar.edu/software/netcdf/]==])

local root = "/software.el7/software/netCDF/4.6.0-foss-2018a"

conflict("netCDF")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("HDF5/1.10.1-foss-2018a") then
    load("HDF5/1.10.1-foss-2018a")
end

if not isloaded("cURL/7.58.0-GCCcore-6.4.0") then
    load("cURL/7.58.0-GCCcore-6.4.0")
end

if not isloaded("Szip/.2.1.1-GCCcore-6.4.0") then
    load("Szip/.2.1.1-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTNETCDF", root)
setenv("EBVERSIONNETCDF", "4.6.0")
setenv("EBDEVELNETCDF", pathJoin(root, "easybuild/netCDF-4.6.0-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
