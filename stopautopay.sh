#/bin/bash

echo "This script will now remove the automagic payment script from running hourly.  To setup again, just restart the entire process"

sleep 2
sudo rm /etc/cron.hourly/pay.sh
sleep 2
sudo rm -r ../stakemn_autopay
sleep 2

echo "All done - Thanks for playing!"
