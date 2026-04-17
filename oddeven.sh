#!/bin/bash
echo "Enter a number:"
read n
if [ $((n % 2)) -eq 0 ];
then
echo "the number is even"
else
echo "the number is odd"
fi
