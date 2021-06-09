#!/bin/bash -x


read -p "Enter a value :: "  a 

read -p "Enter b value :: "  b

read -p "Enter c value :: "  c 


echo " a value is : " $a
echo " b value is : " $b
echo " c value is : " $c

 result1=$(( $a+$b*$c ))

echo $result1;
