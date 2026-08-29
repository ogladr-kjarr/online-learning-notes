#! /usr/bin/bash

# touch fc_accuracy.sh
# echo -e "year\tmonth\tday\tobs_temp\tfc_temp\taccuracy\taccuracy_range" > historical_fc_accuracy.tsv

log_file="rx_poc.log"
accuracy_file="historical_fc_accuracy.tsv"

num_newlines=$(cat rx_poc.log| wc -l)

for (( i=2; i<=$num_newlines; i++ )) ; do
    fc_t=$(cat $log_file | head -n $i | tail -n 1 | cut -w -f5)
    obs_row=$(cat $log_file | head -n $(($i+1)) | tail -n 1)
    obs_t=$(echo $obs_row | cut -w -f4)
    day=$(echo $obs_row | cut -w -f3)
    month=$(echo $obs_row | cut -w -f2)
    year=$(echo $obs_row | cut -w -f1)

    difference=$((obs_t-fc_t))
    abs_diff=${difference#-}

    forecast="poor"

    if [[ abs_diff -le 1 ]]
    then 
        forecast="excellent"
    elif [[ abs_diff -le 2 ]]
    then 
        forecast="good"
    elif [[ abs_diff -le 3 ]]
    then 
        forecast="fair"
    fi

    output=$(echo -e "$year\t$month\t$day\t$obs_t\t$fc_t\t$difference\t$forecast")
    echo $output >> $accuracy_file

done