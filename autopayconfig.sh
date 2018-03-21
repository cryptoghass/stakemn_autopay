#/bin/bash

echo ""
echo "Please pay attention, and MAKE SURE YOU DON'T MESS THIS UP!"
echo "This script checks the balance hourly and will withdraw the amount you want to your wallet."
echo ""
echo "Paste your withdrawal address using the keys, Shift+Insert"
echo "Make sure there are no leading or trailing spaces!"

echo "Please enter your username that you created previously when installing the script: "
read USER
echo "Please enter the number of coins you want to automagically withdraw (no commas or periods): "
read PAY

echo ""
echo "Please paste your address you want to withdraw to: "
read ADDRESS

echo "PAY="$PAY"" >> pay.sh
echo "ADDR="$ADDRESS"" >> pay.sh
echo "USER="$USER"" >> pay.sh

echo ""
echo "If you want to remove this autopay, run: sudo bash stopautopay.sh"
