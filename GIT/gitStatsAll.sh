#!/bin/bash

git shortlog $1 -s | cut -f 2 | while read name ;
do
    ./gitStatsUser.sh "$name" $1
done
