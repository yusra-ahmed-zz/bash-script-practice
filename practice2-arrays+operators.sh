#!/bin/bash
NAMES=( John Eric Jessica )

# write your code here
NUMBERS=( 1 2 3 )
STRINGS=( hello world )
#get total number of elements
NumberOfNames=${#NAMES[@]}
#reference by index
second_name=${NAMES[1]}


COST_PINEAPPLE=50
COST_BANANA=4
COST_WATERMELON=23
COST_BASKET=1
TOTAL=$(($COST_PINEAPPLE + (($COST_BANANA * 2)) + (($COST_WATERMELON * 3)) + $COST_BASKET))
echo "Total Cost is $TOTAL"

#finished