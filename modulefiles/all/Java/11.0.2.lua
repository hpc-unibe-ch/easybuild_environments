help([==[

Description
===========
Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.


More information
================
 - Homepage: http://openjdk.java.net
]==])

whatis([==[Description: Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.]==])
whatis([==[Homepage: http://openjdk.java.net]==])
whatis([==[URL: http://openjdk.java.net]==])

local root = "/software.el7/software/Java/11.0.2"

conflict("Java")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "11.0.2")
setenv("EBDEVELJAVA", pathJoin(root, "easybuild/Java-11.0.2-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/software.el7/software/Java/11.0.2")
-- Built with EasyBuild version 3.9.3
