help([==[

Description
===========
Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB


More information
================
 - Homepage: http://cairographics.org
]==])

whatis([==[Description: Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB]==])
whatis([==[Homepage: http://cairographics.org]==])

local root = "/software.el7/software/cairo/1.14.12-GCCcore-6.4.0"

conflict("cairo")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("bzip2/.1.0.6-GCCcore-6.4.0") then
    load("bzip2/.1.0.6-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("libpng/.1.6.34-GCCcore-6.4.0") then
    load("libpng/.1.6.34-GCCcore-6.4.0")
end

if not isloaded("freetype/.2.9-GCCcore-6.4.0") then
    load("freetype/.2.9-GCCcore-6.4.0")
end

if not isloaded("pixman/.0.34.0-GCCcore-6.4.0") then
    load("pixman/.0.34.0-GCCcore-6.4.0")
end

if not isloaded("expat/.2.2.5-GCCcore-6.4.0") then
    load("expat/.2.2.5-GCCcore-6.4.0")
end

if not isloaded("GLib/.2.54.3-GCCcore-6.4.0") then
    load("GLib/.2.54.3-GCCcore-6.4.0")
end

if not isloaded("X11/20180131-GCCcore-6.4.0") then
    load("X11/20180131-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTCAIRO", root)
setenv("EBVERSIONCAIRO", "1.14.12")
setenv("EBDEVELCAIRO", pathJoin(root, "easybuild/cairo-.1.14.12-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
