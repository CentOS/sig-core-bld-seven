#!/bin/sh
#
# Aim of this script is to look at all the rpms in the present directory
# and find multiarch pkgs, then to evaluate the md5's of each shared
# file between the multiarch rpms. The output will list all files
# where the md5 does not match.
#
# Some common sense required to parse the output.
# 
# Sep 13 2006 Karanbir Singh <kbsingh@karan.org>
# - initial hackup

for f in `rpm --qf "%{name}-%{version}-%{release}\n" -qp *.rpm | sort  | uniq -d `
do 
  echo -e "\n\n ------ \n Testing " $f
  rpm --qf "[%{=arch} %{filenames} :%{filemd5s}: \n]" -qp $f.x86_64.rpm > 64.lst
  rpm --qf "[%{=arch} %{filenames} :%{filemd5s}: \n]" -qp $f.i[356]86.rpm > 32.lst  
  
  cat *.lst | grep -v "::" | sort -k2 | uniq -u -f1
done

rm *.lst 
