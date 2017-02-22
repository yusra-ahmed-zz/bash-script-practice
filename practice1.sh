#!/bin/bash

BIRTHDATE="July 6 1987"
Presents=10
BIRTHDAY=`date -d "$BIRTHDATE" +%A`




if [ "$BIRTHDATE" == "July 6 1987" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Monday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi