 * The old style templates no longer work in the 7 buildsys
 * it now needs complete rendered files 

Add mock config files per package here; 
they can be either
 * <package name>-<version>-<releaese>.ARCH.conf
 * <package-name>-<version>.ARCH.conf 
 * <package>.ARCH.conf


If the builder does not find a match in this dir, it will 
use the conf file from one dir up ( and should be good
for most builds )


ARCH needs to be either i386 / x86_64 or noarch. In most cases
we will want to use the default mock configs from one dir up
and adapt those. 


In almost every case, we want the noarch.conf to be symlinked
to the x86_64 config file. Regular noarch files are built against
the x86_64 target, but if something has ExclusiveArch then it 
will be attempted against the noarch conf first.


If doing custom mock configs for the kernel, its always
going to need a noarch.cfg as well 


* * *

repo urls that contain /mirror/ point to pristine upstream
mirrors ( unmaintained, they will never change )


repo urls that contain /repo/<target> represent the actual
repositories that built content is being injected into


* * *

Some files that are part of the system:
* def.cfg
* logging.ini
* hints
* site-defaults.cfg
