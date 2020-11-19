#! /bin/bash
read -p "Enter 3 numbers:" a b c
calc1=$(( $a +  ($b * $c)  ))
echo $calc1
