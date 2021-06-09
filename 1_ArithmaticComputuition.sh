#!/bin/bash -x


read -p "Enter a value :: "  a 

read -p "Enter b value :: "  b

read -p "Enter c value :: "  c 


echo " a value is : " $a
echo " b value is : " $b
echo " c value is : " $c

 result1=$(( a+b*c ))
 result2=$(( a*b+c ))
 result3=$(( c+a/b ))
 result4=$(( a%b+c ))
echo $result1;
echo $result2;
echo $result3;
echo $result4;

declare -A dict

dict[1]=$result1
dict[2]=$result2
dict[3]=$result3
dict[4]=$result4

echo "Dictionary Elemnts are :: " ${dict[@]}

array=(${dict[@]})


for (( i=0;i<${#array[@]};i++ ))
do
	for (( j=$i;j<${#array[@]};j++ ))
	do
		if [[ ${array[$i]} -lt ${array[$j]} ]]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Discending order: " ${array[@]}


for (( i=0;i<${#array[@]};i++ ))
do
	for (( j=$i;j<${#array[@]};j++ ))
	do
		if [[ ${array[$i]} -gt ${array[$j]} ]]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Ascending order: " ${array[@]}
