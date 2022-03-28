#!/bin/bash -x
count=0
H=0
T=0
while [ $count  -lt  42 ]   
do
       flipCoin=$(( RANDOM%2 ))
 if [ $flipCoin -eq  1 ]
 then
            H=$(($H+1))
       if [ $H -eq 21 ]
       then
              echo "Heads won 21 times"
      break    
  fi
else
        T=$(($T+1))     
       if [ $T -eq 21 ]
       then
               echo "Tails won 21 times"
       break
      fi
fi

      ((count++))
done
              echo "head won " $H Times
              echo "Tail won " $T Times
       if [ $H -gt $T ]
       then
             won=$(($H-$T))
             echo "Heads won by: " $won
       else
              won=$(($T-$H))
              echo "Tails won by: " $won
        fi
