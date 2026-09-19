# EdX: IBM Data Engineering

## Big Data, Hadoop, and Spark Basics

### Module One: What is Big Data

Big data is generated in massive volume, structured and unstructured, and needs computing power and specialised applications to analyse and sift to allow a human to understand what the data is showing. The big data life-cycle is: collection -> storage -> map reduce and scripts to create a data-model for database -> processing (e.g. Spark) -> visualisation -> start again. The four v's are: velocity (speed at which data is created), volume (the increase in amount of data stored over time), variety (diversity of data), veracity (certainty of data, how will we know if accurate), value (making good decisions based on previous V's).

Parallel processing is important for big data as there is more data than will fit on a single computer. It offers advantages such as: reduced processing times, less memory and compute requirements, flexibility as nodes can be added and removed as required (reducing cost). This flexibility is horizontal scaling, adding new nodes into a compute cluster. Data locality is where the computation on partitions of the data is computed on the same node, no transferring of the data.

### Module Two: Introduction to the Hadoop Ecosystem

Hadoop is a open source framework used to process enormous data sets, in the terabyte or greater range. It is a set of programs and procedures, for processing data, and allows for running applications on clusters in parallel. Core components include: common, HDFS, MapReduce, YARN. Hive provides SQL and analytics on top of Hadoop. MapReduce is a programming model that enables massive scalability across thousands of servers in a cluster. Processing consists of the map and reduce tasks: map takes in an input file and processes data into key value pairs, also has further sorting and organising, while the reducer aggregates and computes a set of results for the final output. 

The ecosystem supports the path of data: Ingestion (Flume and Sqoop) -> Storage component (HDFS and HBase) -> Map reduce process and analyse (Pig and Hive) -> Access results (Impala and Hue). Hive is a data warehouse software for reading, writing, managing, and analysing tabular type datasets. Designed to work on petabytes of data it is suited for static data analysis. HBase is a column based DB, running on top of HDFS, and works well with real time data input and output and write heavy applications.

### Module Three: Apache Spark

Spark is an in-memory application framework for distributed data processing and iterative analysis on massive data volumes. Spark parallelised computations using the lambda calculus, all functional Spark programs are inherently parallelised. A RDD is Spark's primary data abstraction, a collection of fault-tolerant elements, partitioned around the clusters nodes, capable of accepting parallel operations, and are immutable. Every application has a driver program that runs the users main functions. RDD support text, sequence, Avro, Parquet, Hadoop input format, Cassandra, HBase, HDFS, Amazon S3 and more. New RDDs can be created by modifying a previous RDD. Parallel programming breaks problems into discrete parts that can be solved concurrently using multiple processors. RDD enable parallel programming by splitting a dataset into partitions, spark runs one task on each partition. RDD provide resilience through immutability and caching. 

SparkSQL is a module for structured data processing, used to query data inside Spark. DataFrames are collections of data organised into named columns, similar to a dataframe in R or Python, built on top of RDD API and use RDDs to perform relational queries. The primary goal of SparkSQL optimisation is to reduce time and memory consumption. It supports cost based and rule based query optimiser, the latter handled by Catalyst. Catalyst also measures cost based on the query, and calculates the cheapest query. Tungsten optimises cpu and memory performance, as a cost based optimiser also. Creating a table view is necessary to run SparkSQL on the data; a view is a temporary table. A view can have a local scope which is only visible in the current session on the current node, or it can have a global scope which is on the cluster and is accessible across different sessions. SparkSQL supports hive tables, parquet, and JSON datasets.

### Module Four: DataFrames and SparkSQL

RDD's are Spark's primary data abstraction and are partitioned across a clusters nodes. An RDD transformation create a new RDD from an existing one. Transactions are lazy, not evaluated until computed by actions. A DAG is used to represent a computation, where nodes are RDD's and edges are transformations/actions.

Datasets are the newest data abstraction, that has an API to access a distributed data collection. Datasets are type safe, and provides the benefits of RDDs and SparkSQL. Being statically typed they have compile time type safety, compute faster than RDDs (especially for agg. queries), enable improved memory usage and caching.



