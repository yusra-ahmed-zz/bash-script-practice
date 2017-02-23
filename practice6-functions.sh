#!/bin/bash
# enter your function code here

function ENGLISH_CALC {
  a=$1
  b=$3
  calc=$2
  if [ $calc == "plus" ]; then
    echo "$a + $b = $(($a+$b))"
  elif [ $calc == "minus" ]; then
    echo "$a - $b = $(($a-$b))"
  elif [ $calc == "times" ]; then
    echo "$a * $b = $(($a*$b))"
  fi
}

# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6