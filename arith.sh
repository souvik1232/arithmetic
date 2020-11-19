#! /bin/bash
read -p "Enter 3 numbers:" a b c
calc1=$(( $a + ($b * $c) ))
echo $calc1
calc2=$(( ($a * $b) + $c ))
echo $calc2
calc3=$(( $c + ($a / $b) ))
echo $calc3
