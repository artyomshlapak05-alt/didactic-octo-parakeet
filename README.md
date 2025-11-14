#!/bin/bash

for a in $(ls $1)
do
    for b in $(cat $1$a)
    do
         name=$(echo $b | cut -d ":" -f1)
         age=$(echo $b | cut -d ":" -f2)
         email=$(echo $b | cut -d ":" -f3)
         echo "Name: $name | Age: $ age | Email: $email"
     done
done
