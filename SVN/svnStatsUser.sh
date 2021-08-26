#!/bin/bash

URL=$1
USER=$2

COMMITS=$(svn log $URL | egrep "r[0-9]+ \| "$USER" \|" | wc -l)
echo ---------------------------
echo Username: $USER
echo ---------------------------
echo Number of commits: $COMMITS

REVISIONS=$(svn log $URL | egrep "r[0-9]+ \| $USER \|" | cut -d "|" -f 1 | egrep -o '[0-9]+')
#echo $REVISIONS

INSERTIONS=0
DELETIONS=0
I=0
D=0
for x in $REVISIONS ; do
    echo Processing revision: $x
    V=$(svn diff -c $x  $URL | diffstat | grep insertion)
    I=$(echo $V | cut -d "," -f 2 | egrep -o '[0-9]+')
    D=$(echo $V | cut -d "," -f 3 | egrep -o '[0-9]+')
    INSERTIONS=$((INSERTIONS+I))
    DELETIONS=$((DELETIONS+D))
done

echo Added lines: $INSERTIONS
echo Deleted lines: $DELETIONS
echo --------------------------
