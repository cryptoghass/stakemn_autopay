#/bin/bash

echo "Running autopay check"
sleep 1
INITIAL=77777
CURRENT=$(/home/$USER/stake/src/staked getbalance)
PROFIT=$((CURRENT-INITIAL-SAFE))
SAFE=1

if [ $PROFIT > $PAY ]; then
  sudo /home/$USER/stake/src/staked sendtoaddress "$ADDR" $PROFIT
  sleep 2
  echo "Paid out $PROFIT"
  echo "Kept 1 coin for safe keepings above 77777"
else
  echo "Profit is below $PAY"
fi
