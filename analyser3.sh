#!/bin/bash

for a in $(ls $1)
do
      for b in $(cat $1$a)
      do
           age=$(echo $b | cut -d ":" -f2)
           if [ $age -ge 18]
           then 
                   teen=$((teen+1))
                    #echo $teen
                    #echo $age
           else
                  notteen=$((notteen+1))
            fi
             #echo $teen
       done
 
done
echo $teen
echo $notteen
