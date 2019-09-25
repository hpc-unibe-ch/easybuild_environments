help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: http://python.org/


Included extensions
===================
arff-2.1.0, bitstring-3.1.5, blist-1.3.6, cryptography-1.4, Cython-0.24,
dateutil-2.5.3, deap-1.0.2, decorator-4.0.10, ecdsa-0.13, enum34-1.1.6,
funcsigs-1.0.2, lockfile-0.12.2, mock-2.0.0, mpi4py-1.3.1, netaddr-0.7.18,
netifaces-0.10.4, nose-1.3.7, numpy-1.11.1, pandas-0.18.1, paramiko-2.0.1,
paycheck-1.0.2, pbr-1.10.0, pip-8.1.2, pycrypto-2.6.1, pyparsing-2.1.5,
pytz-2016.4, scipy-0.17.1, setuptools-23.1.0, six-1.10.0, virtualenv-15.0.2
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[URL: http://python.org/]==])
whatis([==[Extensions: arff-2.1.0, bitstring-3.1.5, blist-1.3.6, cryptography-1.4, Cython-0.24, dateutil-2.5.3, deap-1.0.2, decorator-4.0.10, ecdsa-0.13, enum34-1.1.6, funcsigs-1.0.2, lockfile-0.12.2, mock-2.0.0, mpi4py-1.3.1, netaddr-0.7.18, netifaces-0.10.4, nose-1.3.7, numpy-1.11.1, pandas-0.18.1, paramiko-2.0.1, paycheck-1.0.2, pbr-1.10.0, pip-8.1.2, pycrypto-2.6.1, pyparsing-2.1.5, pytz-2016.4, scipy-0.17.1, setuptools-23.1.0, six-1.10.0, virtualenv-15.0.2]==])

local root = "/software.el7/software/Python/2.7.12-foss-2016b"

conflict("Python")

if not ( isloaded("foss/2016b") ) then
    load("foss/2016b")
end

if not ( isloaded("bzip2/.1.0.6-foss-2016b") ) then
    load("bzip2/.1.0.6-foss-2016b")
end

if not ( isloaded("zlib/.1.2.8-GCCcore-5.4.0") ) then
    load("zlib/.1.2.8-GCCcore-5.4.0")
end

if not ( isloaded("libreadline/.6.3-foss-2016b") ) then
    load("libreadline/.6.3-foss-2016b")
end

if not ( isloaded("ncurses/.6.0-foss-2016b") ) then
    load("ncurses/.6.0-foss-2016b")
end

if not ( isloaded("SQLite/3.13.0-foss-2016b") ) then
    load("SQLite/3.13.0-foss-2016b")
end

if not ( isloaded("Tk/.8.6.5-foss-2016b") ) then
    load("Tk/.8.6.5-foss-2016b")
end

if not ( isloaded("GMP/6.1.1-foss-2016b") ) then
    load("GMP/6.1.1-foss-2016b")
end

if not ( isloaded("libffi/.3.2.1-foss-2016b") ) then
    load("libffi/.3.2.1-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.12")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Python-2.7.12-foss-2016b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 3.9.3
prepend_path("CPATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.11.1-py2.7-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.11.1-py2.7-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.11.1-py2.7-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTPYTHON", "setuptools-23.1.0,pip-8.1.2,nose-1.3.7,numpy-1.11.1,scipy-0.17.1,blist-1.3.6,mpi4py-1.3.1,paycheck-1.0.2,pbr-1.10.0,lockfile-0.12.2,Cython-0.24,six-1.10.0,dateutil-2.5.3,deap-1.0.2,decorator-4.0.10,arff-2.1.0,pycrypto-2.6.1,ecdsa-0.13,cryptography-1.4,paramiko-2.0.1,pyparsing-2.1.5,netifaces-0.10.4,netaddr-0.7.18,funcsigs-1.0.2,mock-2.0.0,pytz-2016.4,pandas-0.18.1,enum34-1.1.6,bitstring-3.1.5,virtualenv-15.0.2")
