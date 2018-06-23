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
bitstring-3.1.5, blist-1.3.6, cryptography-2.1.4, Cython-0.27.3, deap-1.2.2,
decorator-4.1.2, docopt-0.6.2, ecdsa-0.13, enum34-1.1.6, funcsigs-1.0.2,
ipaddress-1.0.19, joblib-0.11, liac-arff-2.1.1, mock-2.0.0, mpi4py-3.0.0,
netaddr-0.7.19, netifaces-0.10.6, nose-1.3.7, numpy-1.14.0, pandas-0.22.0,
paramiko-2.4.0, paycheck-1.0.2, pbr-3.1.1, pip-9.0.1,
py_expression_eval-0.3.4, pycrypto-2.6.1, pyparsing-2.2.0, python-
dateutil-2.6.1, pytz-2017.3, requests-2.18.4, scipy-1.0.0, setuptools-38.4.0,
six-1.11.0, virtualenv-15.1.0, xlrd-1.1.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[Extensions: bitstring-3.1.5, blist-1.3.6, cryptography-2.1.4, Cython-0.27.3, deap-1.2.2, decorator-4.1.2, docopt-0.6.2, ecdsa-0.13, enum34-1.1.6, funcsigs-1.0.2, ipaddress-1.0.19, joblib-0.11, liac-arff-2.1.1, mock-2.0.0, mpi4py-3.0.0, netaddr-0.7.19, netifaces-0.10.6, nose-1.3.7, numpy-1.14.0, pandas-0.22.0, paramiko-2.4.0, paycheck-1.0.2, pbr-3.1.1, pip-9.0.1, py_expression_eval-0.3.4, pycrypto-2.6.1, pyparsing-2.2.0, python-dateutil-2.6.1, pytz-2017.3, requests-2.18.4, scipy-1.0.0, setuptools-38.4.0, six-1.11.0, virtualenv-15.1.0, xlrd-1.1.0]==])

local root = "/software.el7/software/Python/2.7.14-foss-2018a"

conflict("Python")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("bzip2/.1.0.6-GCCcore-6.4.0") then
    load("bzip2/.1.0.6-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("libreadline/.7.0-GCCcore-6.4.0") then
    load("libreadline/.7.0-GCCcore-6.4.0")
end

if not isloaded("ncurses/.6.0-GCCcore-6.4.0") then
    load("ncurses/.6.0-GCCcore-6.4.0")
end

if not isloaded("SQLite/3.21.0-GCCcore-6.4.0") then
    load("SQLite/3.21.0-GCCcore-6.4.0")
end

if not isloaded("GMP/6.1.2-GCCcore-6.4.0") then
    load("GMP/6.1.2-GCCcore-6.4.0")
end

if not isloaded("libffi/.3.2.1-GCCcore-6.4.0") then
    load("libffi/.3.2.1-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.14")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Python-2.7.14-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
prepend_path("CPATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.0-py2.7-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.0-py2.7-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.0-py2.7-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTPYTHON", "setuptools-38.4.0,pip-9.0.1,nose-1.3.7,numpy-1.14.0,scipy-1.0.0,blist-1.3.6,mpi4py-3.0.0,paycheck-1.0.2,pbr-3.1.1,Cython-0.27.3,six-1.11.0,python-dateutil-2.6.1,deap-1.2.2,decorator-4.1.2,liac-arff-2.1.1,pycrypto-2.6.1,ecdsa-0.13,ipaddress-1.0.19,enum34-1.1.6,cryptography-2.1.4,paramiko-2.4.0,pyparsing-2.2.0,netifaces-0.10.6,netaddr-0.7.19,funcsigs-1.0.2,mock-2.0.0,pytz-2017.3,pandas-0.22.0,bitstring-3.1.5,virtualenv-15.1.0,docopt-0.6.2,joblib-0.11,requests-2.18.4,xlrd-1.1.0,py_expression_eval-0.3.4")
