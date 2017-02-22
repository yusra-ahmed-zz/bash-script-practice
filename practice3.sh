#!/bin/bash
#sample data extraction

DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

#substring replacement
STRING="to be or not to be"
echo ${STRING[@]/be/eat} #replaces first occurrence:to eat or not to be

echo ${STRING[@]//be/eat} #replaces all occurrences:to eat or not to eat

echo ${STRING[@]// not/} #deletes all occurrences:to be or to be

echo ${STRING[@]/#to be/eat now} #replace occurrence of substring if at beginning

echo ${STRING[@]/%be/eat} #replace occurrence of substring if at end

echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} # to be or not to be on 2017-02-21


BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

    # write your code here
    ISAY=$BUFFETT
    change1=${ISAY[@]/snow/foot}
    change2=${change1[@]// snow/}
    change3=${change2[@]/finding/getting}
    loc=`expr index "$change3" 'w'`
    ISAY=${change3::$loc+2}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"