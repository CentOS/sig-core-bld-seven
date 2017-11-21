#!/bin/bash

rpm="$1"

possible_dists=".el7.centos.plus .el6.centos.plus .el5.centos.plus .el7.centos .el6.centos .el5.centos .el7a .el7_0 .el7_10 .el7_11 .el7_12 .el7_13 .el7_1 .el7_2 .el7_3 .el7_4 .el7_5 .el7_6 .el7_7 .el7_8 .el7_9 .el7 .el6_0 .el6_10 .el6_11 .el6_12 .el6_13 .el6_1 .el6_2 .el6_3 .el6_4 .el6_5 .el6_6 .el6_7 .el6_8 .el6_9 .el6 .el5_0 .el5_10 .el5_11 .el5_1 .el5_2 .el5_3 .el5_4 .el5_5 .el5_6 .el5_7 .el5_8 .el5_9 .el5"

for dist in $possible_dists
  do
     found=$(echo $rpm | grep "$dist\.")
     if [ "$found" != "" ]; then
       echo $dist
       exit 0
     fi
  done


