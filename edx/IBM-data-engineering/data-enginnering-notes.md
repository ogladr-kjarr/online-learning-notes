# EdX: IBM Data Engineering

## Data Engineering Basics for Everyone

### Module One

The goal of a data engineer is to create an accurate data repository that is as efficient to access as needed by users such as data scientists and business analysts who have the permissions to access the data.

The pipeline runs from extracting raw data from varied data sources, cleaning, transforming, and preparing the data for storage in a designed repository. This pipeline needs to focus on data integrity, security, and reliability, while the repository needs to focus on reliability, security, backup, and recover-ability.

### Module Two

Data categories: 
    Structured: Rigid, forms defined rows and columns, e.g. spreadsheets, databases
    Semi-Structured: Consistent structure but not rigid, e.g. emails, xml data, TCP/IP packets, held in json maybe
    Unstructured: Complex and impossible to reduce to rows and columns, e.g. photos, text files, pdfs, social media content
    
Data is: 
    Facts, observations, perceptions, numbers, text, symbols, that can be interpreted to have meaning.
    
Repositories:
    Transactional: OLTP, designed for high volume day to day, e.g. airline booking, banking data, e.g. relational or no sql databases
    Analytical: OLAP, optimised for data analytics, relational, non relational, data warehouses, data marts, data lakes, big data stores
    
Standard file formats:
    Delimited text files
    XML 
    XLSX: Open XML format
    PDF
    JSON
    
Data Sources:
    Relational databases
    Flat files, Spreadsheets, XML datasets
    APIs/Web services
    Web scraping
    Data streams and feeds
    

Data repository is term used to refer to data that is collected, organized, and isolated, for reporting, analysis, deriving insights.

Data warehouse brings together data from multiple sources into one comprehensive database, single source of truth. Three tier architecture: database servers (extract data from different sources); OLAP server (process and analyze information ffrom other servers); client front end layer (querying , reporting, analyzing data).

A data mart is a sub section of the warehouse for particular business function, purpose, or community of users. There are three types:
    Dependent: Subsection of a warehouse
    Independent: created from other sources, not a warehouse
    Hybrid: combine the two

Data lake: can hold large amounts of different types (structured, unstructured) of data in their native format. No need to design schema or use cases for data. Its a repository of raw data straight from the source.

DataLake: Dump raw data as it comes into the organisation. Issues with quality and governance and performance
EnterpriseDataWarehouse: From Lake to specific analytical tasks. expensive though so cant put full lake into warehouse.
LakeHouse: best of both worlds. Flexibility and cost of lake, performance and structure of warehouse.

NoSQL:
    Key value store
    document based: 
    Column based
    graph based



ETL: Transform: e.g. make date formats consistent across all sources; remove duplicates, filter unnecessary data, enriching data, buisiness relationships.
    Load: initial load, incremental load, drop and replace. Verification also for missing or null values, performance, and load failures.

    ElT good for data lakes, helps process large unstructured and non relational data. Shortens time between extraction and delivery. Pared iwth a data lake, can get raw data as soon as available. greater flexibility for analysts to ecplore data. Transformas only data required or particular analysis

data pipelines:encompases whole journey of data, can be batch and streaming.

data integration is the component between original data sources and the warehouse.

big data V#s: 
    velicity: how fast data is created
    volume: Scale of data, increase in data stored
    variety: diversity of data, structured/unstructured, diff sources
    veracity: quality and origin of data
    value: need to turn data to value, e.g. medical, satisfaction, money


@module 3

















Nice blend of short lecture type videos and interviews with experienced data engineers providing valuable insight.








time: 4;
