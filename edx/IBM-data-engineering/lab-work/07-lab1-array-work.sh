#! /usr/bin/bash

column1=($(cut -d "," -f 1 arrays_table.csv))
column2=($(cut -d "," -f 2 arrays_table.csv))
column3=($(cut -d "," -f 3 arrays_table.csv))

declare -a column4
column4+=("column_4")

N=4

for (( i=1; i<=$N; i++ )) ; do
  column4+=($((${column3[i]} - ${column2[i]})))
done

for ((i=0;i<=$N; i++)) ; do
    echo "${column1[i]} ${column2[i]} ${column3[i]} ${column4[i]} " >> output.csv
done

# Arrays_table.csv form:
#column_0,column_1,column_2
#1,2,3
#4,5,6
#7,8,9
#10,11,12