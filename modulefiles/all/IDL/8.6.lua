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
set_alias("harrislicense", pathJoin(idl_dir, "bin/harrislicense"))
set_alias("idl", pathJoin(idl_dir, "bin/idl"))
set_alias("idlde", pathJoin(idl_dir, "bin/idlde"))
set_alias("idlhelp", pathJoin(idl_dir, "bin/idlhelp"))
set_alias("idlrpc", pathJoin(idl_dir, "bin/idlrpc"))
set_alias("idltaskengine", pathJoin(idl_dir, "bin/idltaskengine"))


