#!/bin/bash

max=100; min=1
for a in $(ls 1$)
do
     for b in $(cat $1$i)
     do
          age=$(echo $b | cut -d ":" -f2)
           #echo $age
           if [ $age -lt $max ]
           then
                  max=$age
            elif [ $age -gt $max ]
            then
                     min=$age
            fi
     done
done
echo $max
echo $min
