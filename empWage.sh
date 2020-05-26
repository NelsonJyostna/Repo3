#!/bin/bash -x

isPresent=1
randomcheck=$((RANDOM%2))

if [ $isPresent -eq $randomcheck ]
then
     empRatePerHr=20
     empHrs=8
     salery=$(($empHrs*$empRatePerHr))
else
    salery=0
fi
