#!/bin/bash

USER=$1
BRANCH=$2
NUMBER=$(git shortlog $BRANCH -s | grep "$USER" | tr -dc '0-9')
echo Username: "$USER"
echo Number of commits: $NUMBER

INSERTIONS=0
DELETIONS=0
I=0
D=0

IFS=$'\n'       # make newlines the only separator
for line in $(git log $BRANCH --author="$USER" --oneline --shortstat  --format="%H" | grep changed);# | while read line ;
do
    I=$(echo "$line" | cut -d "," -f 2 | egrep -o '[0-9]+')
    D=$(echo "$line" | cut -d "," -f 3 | egrep -o '[0-9]+')
    INSERTIONS=$((INSERTIONS+I))
    DELETIONS=$((DELETIONS+D))
done

echo Added lines: $INSERTIONS
echo Deleted lines: $DELETIONS
echo --------------------------
