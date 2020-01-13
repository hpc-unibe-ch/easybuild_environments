help([==[

Description
===========
The checking compiler for improved code portability and detailed error reporting.


More information
================
 - Homepage: http://www.nag.co.uk
]==])

whatis([==[Description: The checking compiler for improved code portability and detailed error reporting.]==])
whatis([==[Homepage: http://www.nag.co.uk]==])
whatis([==[URL: http://www.nag.co.uk]==])

local root = "/software.el7/software/NAGfor/6.2.6223"

conflict("NAGfor")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNAGFOR", root)
setenv("EBVERSIONNAGFOR", "6.2.6223")
setenv("EBDEVELNAGFOR", pathJoin(root, "easybuild/NAGfor-6.2.6223-easybuild-devel"))

setenv("NAG_KUSARI_FILE", "license01.ubelix.unibe.ch:7733")
prepend_path("PATH", root)
-- Built with EasyBuild version 3.9.3
