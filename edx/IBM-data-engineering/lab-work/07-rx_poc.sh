#! /bin/bash

touch rx_poc.log
header=$(echo -e "year\tmonth\tday\tobs_temp\tfc_temp")
echo $header > rx_poc.log
cityname="Casablanca"
curl -s wttr.in/$cityname?T > weather.txt  

obs_temp=$(cat weather.txt | grep -E -o '[0-9]{1,2}(\(-?[0-9]{1,2}\))? °C' | grep -E -o '^[0-9]{1,2}' | head -n 1)
fc_temp=$(cat weather.txt | grep -E -o '[0-9]{1,2}(\(-?[0-9]{1,2}\))? °C' | grep -E -o '^[0-9]{1,2}' | head -n 7 | tail -n -1)
day=$(TZ='Morocco/Casablanca' date -u +%d)
month=$(TZ='Morocco/Casablanca' date +%m)
year=$(TZ='Morocco/Casablanca' date +%Y)
new_row=$(echo -e "$year\t$month\t$day\t$obs_temp\t$fc_temp")

echo $new_row >> rx_poc.log

# Crontab settings 13 as laptop time is ahead of UTC (date -u)
# m h  dom mon dow   command
# 0 13 * * * ./rx_poc.sh
