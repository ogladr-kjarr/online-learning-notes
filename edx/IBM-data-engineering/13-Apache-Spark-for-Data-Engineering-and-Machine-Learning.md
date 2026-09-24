# EdX: IBM Data Engineering

## Apache Spark for Data Engineering and Machine Learning

### Module One: Get Started with Machine Learning

Machine learning is the sub-field of computer science that gives computers the ability to learn without being explicitly programmed. AI mimics human abilities like computer vision, language processing, creativity, and summarising. Machine learning is for classification, clustering, neural networks, by teaching the computer using training data to then create prediction data. Deep learning in ML is where computers can learn and make intelligent decisions independently. There are two categories of ML, supervised learning (regression, classification, labelled data) and unsupervised learning (unlabelled data, clustering).

Data collection process:
* step 1: establish data requirements, specifying the data needed, and the data sources
* step 2: establish sources, evaluate quality, relevance, reliability, accessibility, and cost
* step 3: collect data, ensuring consistency and structure

Raw data needs cleaning and prepossessing, this is important to ensure optimal data for modelling, the stages involved are:
* step 1, data exploration: examine data for anomalies, inconsistency, outliers
* step 2, data cleaning: correct or remove inconsistencies, duplicates, typos, missing values, outliers
* step 3, transformation: normalisation, scaling, feature engineering
* step 4. data integration: combine into unified dataset
* step 5. data formatting: converting text into dates, or numerical formats.

Data storage and management:
* step 1, data storage: identify correct storage type, configuring for scale and speed of ingestion
* step 2, data organisation: organise the data including schema, partition strategies, indexing mechanisms
* step 3, data security: implement security to avoid unauthorised access, access controls , encryption techniques and backup strategies
* step 4, data retrieval: implement mechanism for querying and accessing data, indexing caching and data distribution
* step 5, data backup: to prevent loss, regular backups are recovery mechanisms

Data transformations and feature extraction:
* step 1: feature selection (identify relevant features for analysis)
* step 2: feature scaling to a common scale so they are comparable
* step 3: feature engineering, create new features to enhance the dataset
* step 4: dimensional reduction, reduce features while maintaining characteristics
* step 5: encode categorical variables, into numerical representations
* step 6: data imputation: filling in missing values

### Module Two: Machine Learning with Apache Spark

Spark is used to intake large volumes of data, through data ingestion pipelines, to then transform it through cleaning, filtering, change, and aggregate data.

### Module Three: Data Engineering for Machine Learning using Apache Spark

SparkSQL provides a SQL like interface for querying data from sources such as hive tables, parquet files, JSON, and JDBC. Streaming data is continuously created, requiring incremental processing.




