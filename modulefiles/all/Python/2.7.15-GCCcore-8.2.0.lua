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
alabaster-0.7.12, asn1crypto-0.24.0, atomicwrites-1.3.0, attrs-19.1.0,
Babel-2.6.0, bcrypt-3.1.6, bitstring-3.1.5, blist-1.3.6, certifi-2019.3.9,
cffi-1.12.2, chardet-3.0.4, Click-7.0, cryptography-2.6.1, Cython-0.29.6,
deap-1.2.2, decorator-4.3.2, docopt-0.6.2, docutils-0.14, ecdsa-0.13,
enum34-1.1.6, funcsigs-1.0.2, future-0.17.1, idna-2.8, imagesize-1.1.0,
ipaddress-1.0.22, Jinja2-2.10, joblib-0.13.2, liac-arff-2.4.0,
MarkupSafe-1.1.1, mock-2.0.0, more-itertools-5.0.0, netaddr-0.7.19,
netifaces-0.10.9, nose-1.3.7, packaging-19.0, paramiko-2.4.2, pathlib2-2.3.3,
paycheck-1.0.2, pbr-5.1.3, pip-19.0.3, pluggy-0.9.0, psutil-5.6.1, py-1.8.0,
py_expression_eval-0.3.6, pyasn1-0.4.5, pycparser-2.19, pycrypto-2.6.1,
Pygments-2.3.1, PyNaCl-1.3.0, pyparsing-2.3.1, pytest-4.3.1, python-
dateutil-2.8.0, pytz-2018.9, requests-2.21.0, scandir-1.10.0,
setuptools-40.8.0, setuptools_scm-3.2.0, singledispatch-3.4.0.3, six-1.12.0,
snowballstemmer-1.2.1, Sphinx-1.8.5, sphinxcontrib-websupport-1.1.0,
tabulate-0.8.3, typing-3.6.6, ujson-1.35, urllib3-1.24.1, virtualenv-16.4.3,
wheel-0.33.1, xlrd-1.2.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[URL: http://python.org/]==])
whatis([==[Extensions: alabaster-0.7.12, asn1crypto-0.24.0, atomicwrites-1.3.0, attrs-19.1.0, Babel-2.6.0, bcrypt-3.1.6, bitstring-3.1.5, blist-1.3.6, certifi-2019.3.9, cffi-1.12.2, chardet-3.0.4, Click-7.0, cryptography-2.6.1, Cython-0.29.6, deap-1.2.2, decorator-4.3.2, docopt-0.6.2, docutils-0.14, ecdsa-0.13, enum34-1.1.6, funcsigs-1.0.2, future-0.17.1, idna-2.8, imagesize-1.1.0, ipaddress-1.0.22, Jinja2-2.10, joblib-0.13.2, liac-arff-2.4.0, MarkupSafe-1.1.1, mock-2.0.0, more-itertools-5.0.0, netaddr-0.7.19, netifaces-0.10.9, nose-1.3.7, packaging-19.0, paramiko-2.4.2, pathlib2-2.3.3, paycheck-1.0.2, pbr-5.1.3, pip-19.0.3, pluggy-0.9.0, psutil-5.6.1, py-1.8.0, py_expression_eval-0.3.6, pyasn1-0.4.5, pycparser-2.19, pycrypto-2.6.1, Pygments-2.3.1, PyNaCl-1.3.0, pyparsing-2.3.1, pytest-4.3.1, python-dateutil-2.8.0, pytz-2018.9, requests-2.21.0, scandir-1.10.0, setuptools-40.8.0, setuptools_scm-3.2.0, singledispatch-3.4.0.3, six-1.12.0, snowballstemmer-1.2.1, Sphinx-1.8.5, sphinxcontrib-websupport-1.1.0, tabulate-0.8.3, typing-3.6.6, ujson-1.35, urllib3-1.24.1, virtualenv-16.4.3, wheel-0.33.1, xlrd-1.2.0]==])

local root = "/software.el7/software/Python/2.7.15-GCCcore-8.2.0"

conflict("Python")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("bzip2/.1.0.6-GCCcore-8.2.0") ) then
    load("bzip2/.1.0.6-GCCcore-8.2.0")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

if not ( isloaded("libreadline/.8.0-GCCcore-8.2.0") ) then
    load("libreadline/.8.0-GCCcore-8.2.0")
end

if not ( isloaded("ncurses/.6.1-GCCcore-8.2.0") ) then
    load("ncurses/.6.1-GCCcore-8.2.0")
end

if not ( isloaded("SQLite/3.27.2-GCCcore-8.2.0") ) then
    load("SQLite/3.27.2-GCCcore-8.2.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.2.0") ) then
    load("GMP/6.1.2-GCCcore-8.2.0")
end

if not ( isloaded("libffi/.3.2.1-GCCcore-8.2.0") ) then
    load("libffi/.3.2.1-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.15")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Python-2.7.15-GCCcore-8.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 3.9.3
setenv("EBEXTSLISTPYTHON", "setuptools-40.8.0,pip-19.0.3,wheel-0.33.1,nose-1.3.7,blist-1.3.6,paycheck-1.0.2,pbr-5.1.3,Cython-0.29.6,six-1.12.0,setuptools_scm-3.2.0,python-dateutil-2.8.0,deap-1.2.2,decorator-4.3.2,liac-arff-2.4.0,pycrypto-2.6.1,ecdsa-0.13,enum34-1.1.6,ipaddress-1.0.22,asn1crypto-0.24.0,idna-2.8,pycparser-2.19,cffi-1.12.2,cryptography-2.6.1,pyasn1-0.4.5,PyNaCl-1.3.0,bcrypt-3.1.6,paramiko-2.4.2,pyparsing-2.3.1,netifaces-0.10.9,netaddr-0.7.19,funcsigs-1.0.2,mock-2.0.0,pytz-2018.9,bitstring-3.1.5,virtualenv-16.4.3,docopt-0.6.2,joblib-0.13.2,chardet-3.0.4,certifi-2019.3.9,urllib3-1.24.1,requests-2.21.0,xlrd-1.2.0,py_expression_eval-0.3.6,tabulate-0.8.3,ujson-1.35,atomicwrites-1.3.0,py-1.8.0,scandir-1.10.0,pathlib2-2.3.3,pluggy-0.9.0,more-itertools-5.0.0,attrs-19.1.0,pytest-4.3.1,MarkupSafe-1.1.1,Jinja2-2.10,packaging-19.0,sphinxcontrib-websupport-1.1.0,Pygments-2.3.1,imagesize-1.1.0,docutils-0.14,snowballstemmer-1.2.1,Babel-2.6.0,alabaster-0.7.12,typing-3.6.6,Sphinx-1.8.5,Click-7.0,psutil-5.6.1,future-0.17.1,singledispatch-3.4.0.3")
