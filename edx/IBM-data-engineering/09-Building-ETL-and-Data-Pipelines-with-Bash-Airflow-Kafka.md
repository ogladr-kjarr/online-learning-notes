# EdX: IBM Data Engineering

## Building ETL and Data Pipelines with Bash, Airflow and Kafka

### Module One: Data Processing Techniques

An ETL process is an automated data pipeline, starting with raw data and processing it all the way through to creating the data used for analysis. Extraction can be web scraping, API's, data archive, or live streaming data. Transformation is the processing of the data to make it conform to the target system and use cases, which can include cleaning (de duplicate and missing values), filtering, joining disparate sources, feature engineering, formatting/data typing (casting), data structuring (csv to json), and normalising (ensure units are comparable). Loading is moving data from the transform staging area to a data warehouse to allow end users to use the data for analytics, dashboards, etc. Loading has two strategies: full loading and incremental loading. Full loading is to load an initial history, or to overwrite old data with new. Incremental loads data that has changed since the full loading, appending not overwriting. Incremental can be stream or batch, stream for real time data, batch for periodic updates like a daily transactions list from a database.

ELT is emerging as a new paradigm as cloud resources become cheap and plentiful. As it stores the raw data before any transformation there is no data loss, e.g. via daily/monthly averages in ETL where the raw data is discarded. It allows for interactive and dynamic transform processes as it is schema on read, as opposed to schema on write. It is faster than ETL as processing happens in the data store where the data is located. It deals better with big data, streaming analytics, and integration of highly distributed data.

### Module Two: ETL & Data Pipelines: Tools and Techniqueso

A data pipeline is a number of sequential processes, where the output of one is the input of another. The purpose is to move data from one place to another or from one form to another. Performance metrics includes: latency, which is the total time for a single packet to go through the pipeline, and throughput, which refers to how much data can go through the pipeline  per unit of time.

Use cases include: backup up files to other source, integrating multiple data sources into a data lake, moving transactional records to a warehouse, streaming data from IoT to dashboards, preparing raw data for ML development.

Monitoring a pipe line is important, as there can be issues such as: high latency, low throughput, errors or failures in the network or source/destination system. Monitoring is also necessary for cost considerations, so keeping track of hardware utilisation rate. If there are issues with latency or throughput this means the pipeline is unbalanced, and may be addressed through parallelisation. IO buffers can also help synchronise pipelines by establishing a holding area.

Batch loading is used when data sets need to be extracted and operated on as one unit, run on a schedule based on periodic triggers. It is good when recency of data is not needed, and accuracy is. Stream loading is for ingesting packets of data for real time results being processed as they occur. The decision is a trade-off between accuracy and latency. A lambda architecture combines them. Batch use cases are periodic backups, transactional history, retrospective data analysis, while streaming use cases are social media feeds, fraud detection, recommender systems, credit card transactions.

### Module Three: Building Data Pipelines using Airflow

So what this taught me is that Airflow fails when Bash commands are not properly known. One lab was required to download data, process, then load data by creating a .zip file. First wget did not work, but curl did, I am not sure why this was the case. Secondly the zip command did not work, but gzip did the first time, then failed subsequently until I added the '-f' command.


### Module Four: Building Streaming Pipelines using Kafka

Event stream platform (ESP) takes events, which describes an entities observable state updates over time. These updates could be the gps of a moving car, temperature from a sensor, or the RAM usage of a server over time. Common event formats include: string primitive, key value pair, timestamped key value pair.

### Module Five: Assessment

The final assessment was both straightforward and difficult. The task as stated took no time at all, but there was an issue that took a fair bit of time to work out. There were three files that needed appended together using the paste command. However, the appending of one file overwrote the start of the line it was meant to be appending to. After investigation I found the file that caused the issue. Next I asked AI why this would happen, and it explained there is probably a phantom '\r' command alongside the '\n' command in the file. Running it outside of Airflow the command 'tr -d "\r"' worked, but inside a BashOperator it did not. Next I was recommended to use single quotes to make sure it was taken as a literal, this also didn't work. Finally AI suggested the "tr -d '\\r'" command, and this worked. I was wrong to assume that a Bash command in Airflow worked exactly as the same command straight in the shell.
