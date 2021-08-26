#!/bin/bash

svn log $1 | grep '^r[0-9]' | cut -d \| -f 2 | uniq | while read line ;
do
    ./svnstatsuser.sh $1 $line
done
