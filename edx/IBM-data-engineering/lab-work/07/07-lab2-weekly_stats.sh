#!/usr/bin/bash

accuracy=($(cut -f6 synthetic_historical_fc_accuracy.tsv | tail -n 7))

N=${#accuracy[@]}

initial_value=${accuracy[0]}
absolute_initial_value=${initial_value#-}

min=${absolute_initial_value}
max=${absolute_initial_value}

for (( i=0; i<$N; i++ )) ; do
    accuracy_el=${accuracy[i]}
    absolute_accuracy=${accuracy_el#-}
    
    if [[ $absolute_accuracy -lt $min ]]
    then
        min=$absolute_accuracy
    fi

    if [[ $absolute_accuracy -gt $max ]]
    then 
        max=$absolute_accuracy
    fi
done

echo "Min difference is: $min, Max difference is: $max"