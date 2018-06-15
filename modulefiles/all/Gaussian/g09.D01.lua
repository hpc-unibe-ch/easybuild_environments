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

local g09root    = "/software.el7/software/Gaussian"
local g09version = "g09.D01"
local g09base    = pathJoin(g09root, g09version)
local g09basis   = pathJoin(g09base, "basis")
local g09bsddir  = pathJoin(g09base, "bsd")

conflict("gaussian")

prepend_path("LD_LIBRARY64_PATH", g09base)
prepend_path("LD_LIBRARY64_PATH", g09bsddir)
prepend_path("LD_LIBRARY_PATH", g09base)
prepend_path("LD_LIBRARY_PATH", g09bsddir)
prepend_path("PATH", g09base)
prepend_path("PATH", g09bsddir)
setenv("g09root", g09root)
setenv("GAUSS_EXEDIR", g09bsddir..":"..g09base)
setenv("GAUSS_BSDDIR", g09bsddir)
setenv("G16BASIS", g09basis)
setenv("_DSM_BARRIER", "SHM")
set_alias("sl", pathJoin(g09base, "tests/searchlog.csh"))

