add mock config files per package here; 
they can be either
- <package name>-<version>-<releaese>.ARCH.conf
- <package-name>-<version>.ARCH.conf 
- <package>.ARCH.conf

If the builder does not find a match in this dir, it will 
use the conf file from one dir up ( and should be good
for most builds )

ARCH needs to be either i386 / x86_64 or noarch. In most cases
we will want to use the default mock configs from one dir up
and adapt those. 

In almost every case, we want the noarch.conf to be symlinked
to the x86_64 config file.

note: if doing custom mock configs for the kernel, its always
going to need a noarch.cfg as well 
