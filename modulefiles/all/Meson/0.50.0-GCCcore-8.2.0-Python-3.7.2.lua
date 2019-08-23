help([==[

Description
===========
Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.


More information
================
 - Homepage: https://mesonbuild.com
]==])

whatis([==[Description: Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.]==])
whatis([==[Homepage: https://mesonbuild.com]==])
whatis([==[URL: https://mesonbuild.com]==])

local root = "/software.el7/software/Meson/0.50.0-GCCcore-8.2.0-Python-3.7.2"

conflict("Meson")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Python/3.7.2-GCCcore-8.2.0") ) then
    load("Python/3.7.2-GCCcore-8.2.0")
end

if not ( isloaded("Ninja/1.9.0-GCCcore-8.2.0") ) then
    load("Ninja/1.9.0-GCCcore-8.2.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMESON", root)
setenv("EBVERSIONMESON", "0.50.0")
setenv("EBDEVELMESON", pathJoin(root, "easybuild/Meson-0.50.0-GCCcore-8.2.0-Python-3.7.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 3.9.3
