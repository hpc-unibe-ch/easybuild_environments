help([==[

Description
===========
IDL is the trusted scientific programming language used across disciplines to extract meaningful visualizations from complex numerical data.

More information
================
 - Homepage: http://www.exelisvis.com/
]==])

whatis([==[IDL is the trusted scientific programming language used across disciplines to extract meaningful visualizations from complex numerical data.]==])
whatis([==[Homepage: http://www.exelisvis.com/]==])


local base    = "/software.el7/software/IDL"
local idl_ver = "idl86"
local idl_dir = pathJoin(base, idl_ver)

conflict("IDL")

setenv("EXELIS_DIR", base)
setenv("IDL_DIR", idl_dir)
setenv("LM_LICENSE_FILE", "/software.el7/software/IDL/license/license.dat")
prepend_path("PATH", pathJoin(idl_dir, "bin"))
