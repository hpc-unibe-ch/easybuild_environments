help([==[

Description
===========
Ninja is a small build system with a focus on speed.


More information
================
 - Homepage: https://ninja-build.org/
]==])

whatis([==[Description: Ninja is a small build system with a focus on speed.]==])
whatis([==[Homepage: https://ninja-build.org/]==])
whatis([==[URL: https://ninja-build.org/]==])

local root = "/software.el7/software/Ninja/1.9.0-GCCcore-8.2.0"

conflict("Ninja")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNINJA", root)
setenv("EBVERSIONNINJA", "1.9.0")
setenv("EBDEVELNINJA", pathJoin(root, "easybuild/Ninja-1.9.0-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
