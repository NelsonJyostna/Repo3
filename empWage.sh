#!/bin/bash -x

isPresent=1
randomcheck=$((RANDOM%2))

if [ $isPresent -eq $randomcheck ]
then
    echo "Employ is Present"
else
    echo "Employ is not Present"
fi
