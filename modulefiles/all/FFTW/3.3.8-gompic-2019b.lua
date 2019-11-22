help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: http://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: http://www.fftw.org]==])
whatis([==[URL: http://www.fftw.org]==])

local root = "/software.el7/software/FFTW/3.3.8-gompic-2019b"

conflict("FFTW")

if not ( isloaded("gompic/2019b") ) then
    load("gompic/2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "3.3.8")
setenv("EBDEVELFFTW", pathJoin(root, "easybuild/FFTW-3.3.8-gompic-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
