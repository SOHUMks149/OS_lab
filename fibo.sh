#!/bin/bash
echo "enter number of terms:"
read n
a=0
b=1
echo "fibonacci series:"
echo $a
echo $b
for(( i=2;i<n;i++ ))
do
c=$((a + b))
echo $c
a=$b
b=$c
done
