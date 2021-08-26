#!/bin/bash

VAR=$(git fsck --lost-found | grep dangling | cut -d " " -f 3)
IT=0
for x in $VAR ; do
    IT=$((IT+1))
    git branch newparent$IT $x
done
