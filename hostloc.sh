#!/bin/bash
#. /etc/profile
#. ~/.bash_profile 
# By BlueSkyXN
python3 /root/hostloc.py > /tmp/hostloc.log
pushtg=`cat /tmp/hostloc.log`
tgid=xxxx
tgbotapi=xxxx
curl --data chat_id="$tgid" --data-urlencode "text=§Hostloc 签到报表§
$pushtg" "https://api.telegram.org/bot$tgbotapi/sendMessage?parse_mode=HTML"