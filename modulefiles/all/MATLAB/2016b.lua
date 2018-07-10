help([==[

Description
===========
MATLAB is a high-level language and interactive environment
 that enables you to perform computationally intensive tasks faster than with
 traditional programming languages such as C, C++, and Fortran.


More information
================
 - Homepage: http://www.mathworks.com/products/matlab
]==])

whatis([==[Description: MATLAB is a high-level language and interactive environment
 that enables you to perform computationally intensive tasks faster than with
 traditional programming languages such as C, C++, and Fortran.]==])
whatis([==[Homepage: http://www.mathworks.com/products/matlab]==])

local root = "/software.el7/software/MATLAB/2016b"

conflict("MATLAB")

if not isloaded("Java/1.7.0_60") then
    load("Java/1.7.0_60")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATLAB", root)
setenv("EBVERSIONMATLAB", "2016b")
setenv("EBDEVELMATLAB", pathJoin(root, "easybuild/MATLAB-2016b-easybuild-devel"))

prepend_path("PATH", root)
setenv("_JAVA_OPTIONS", "-Xmx256m")
-- Built with EasyBuild version 3.6.1
