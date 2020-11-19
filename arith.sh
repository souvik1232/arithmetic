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
