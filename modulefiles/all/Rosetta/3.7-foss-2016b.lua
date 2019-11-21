help([==[

Description
===========
Rosetta is the premier software suite for modeling macromolecular structures. As a flexible,
multi-purpose application, it includes tools for structure prediction, design, and remodeling of proteins and
nucleic acids.


More information
================
 - Homepage: https://www.rosettacommons.org
]==])

whatis([==[Description: Rosetta is the premier software suite for modeling macromolecular structures. As a flexible,
multi-purpose application, it includes tools for structure prediction, design, and remodeling of proteins and
nucleic acids.]==])
whatis([==[Homepage: https://www.rosettacommons.org]==])
whatis([==[URL: https://www.rosettacommons.org]==])

local root = "/software.el7/software/Rosetta/3.7-foss-2016b"

conflict("Rosetta")

if not ( isloaded("foss/2016b") ) then
    load("foss/2016b")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTROSETTA", root)
setenv("EBVERSIONROSETTA", "3.7")
setenv("EBDEVELROSETTA", pathJoin(root, "easybuild/Rosetta-3.7-foss-2016b-easybuild-devel"))

setenv("ROSETTA3_DB", "/software.el7/software/Rosetta/3.7-foss-2016b/database")
-- Built with EasyBuild version 3.9.3
