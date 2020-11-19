#! /bin/bash
declare -A arith
read -p "Enter 3 numbers:" a b c
calc1=$(( $a + ($b * $c) ))
echo $calc1
calc2=$(( ($a * $b) + $c ))
echo $calc2
calc3=$(( $c + ($a / $b) ))
echo $calc3
calc4=$(( ($a % $b) + $c ))
echo $calc4
arith[0]=$calc1
arith[1]=$calc2
arith[2]=$calc3
arith[3]=$calc4
echo "Dictionary--->"${arith[@]}
i=3
while(( i >= 0 ))
do
	arr[i]=${arith[$i]}
	(( i-- ))
done
echo "Array--->"${arr[@]}
temp=0
for(( i = 0 ; i <= 3 ; i++ ))
do
	for(( j = $i ; j <= 3 ; j++ ))
	do
		if(( ${arr[$i]} < ${arr[$j]} ))
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "Desceding Order--->" ${arr[@]}
for(( k=3 ; k >= 0 ; k-- ))
do
	arr1[ (( l++ )) ]=${arr[$k]}
done
echo "Ascending Order--->" ${arr1[@]}
