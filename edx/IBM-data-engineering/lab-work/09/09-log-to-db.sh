# Extract Data
wget "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/ETL%20using%20shell%20scripting/web-server-access-log.txt.gz"

gunzip -f web-server-access-log.txt.gz
tail -n +2  web-server-access-log.txt > web_extract.csv

# Transform Data
tr '#' ',' < web_extract.csv > web_transformed.csv

# Load Data
export PGPASSWORD=yVHFfSVDz158x6iHCxSeMXfz
echo "\c template1; \COPY access_log FROM '/home/project/web_transformed.csv' DELIMITERS ',' CSV;" | psql --username=postgres --host=postgres