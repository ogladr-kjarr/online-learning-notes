#! /bin/bash

# This script extracts data from /etc/passwd into a csv

# The csv data file contains the username, id,
# and home directory

# Transforms the text delimiter from ":" to ","
# Loads the data from the csv file into a 
# table in postgres database.

echo "Extracting Data"

cut -d":" -f1,3,6 /etc/passwd > extracted-data.csv

echo "Transforming Data"

tr ":" "," < extracted-data.csv > transformed-data.csv

echo "Loading Data"

export PGPASSWORD=<password>;

echo "\c template1; \COPY users FROM '/home/project/transformed-data.csv' DELIMITERS ',' CSV;" | psql --username=postgres --host=postgres