help([==[

Description
===========
Guppy software supports MinIT and MinION instruments from
 Nanopore Technologies


More information
================
 - Homepage: https://nanoporetech.com/products/minit
]==])

whatis([==[Description: Guppy software supports MinIT and MinION instruments from
 Nanopore Technologies]==])
whatis([==[Homepage: https://nanoporetech.com/products/minit]==])
whatis([==[URL: https://nanoporetech.com/products/minit]==])

local root = "/software.el7/software/ont-guppy-cpu/3.2.4"

conflict("ont-guppy-cpu")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTONTMINGUPPYMINCPU", root)
setenv("EBVERSIONONTMINGUPPYMINCPU", "3.2.4")
setenv("EBDEVELONTMINGUPPYMINCPU", pathJoin(root, "easybuild/ont-guppy-cpu-3.2.4-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
