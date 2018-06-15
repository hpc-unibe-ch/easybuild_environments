help([==[

Description
===========
Gaussian is a general purpose computational chemistry software package written in Fortran.

More information
================
 - Homepage: http://gaussian.com/
]==])

whatis([==[Description: Gaussian is a general purpose computational chemistry software package written in Fortran.]==])
whatis([==[Homepage: http://gaussian.com/]==])

local g16root    = "/software.el7/software/Gaussian"
local g16version = "g16.A03"
local g16base    = pathJoin(g16root, g16version)
local g16basis   = pathJoin(g16base, "basis")
local g16bsddir  = pathJoin(g16base, "bsd")

conflict("gaussian")

prepend_path("LD_LIBRARY64_PATH", g16base)
prepend_path("LD_LIBRARY64_PATH", g16bsddir)
prepend_path("LD_LIBRARY_PATH", g16base)
prepend_path("LD_LIBRARY_PATH", g16bsddir)
prepend_path("PATH", g16base)
prepend_path("PATH", g16bsddir)
setenv("g16root", g16root)
setenv("GAUSS_EXEDIR", g16bsddir..":"..g16base)
setenv("GAUSS_BSDDIR", g16bsddir)
setenv("G16BASIS", g16basis)
setenv("_DSM_BARRIER", "SHM")
set_alias("sl", pathJoin(g16base, "tests/searchlog.csh"))

