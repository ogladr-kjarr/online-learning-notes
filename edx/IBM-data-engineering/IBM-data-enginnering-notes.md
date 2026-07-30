# EdX: IBM Data Engineering

## Data Engineering Basics for Everyone

### Module One: What is Data Engineering

The goal of a data engineer is to create an accurate data repository that is as efficient to access as needed by users such as data scientists and business analysts who have the permissions to access the data.

The pipeline runs from extracting raw data from varied data sources, cleaning, transforming, and preparing the data for storage in a designed repository. This pipeline needs to focus on data integrity, security, and reliability, while the repository needs to focus on reliability, security, backup, and recover-ability.

### Module Two: Data Engineering Ecosystem

Data, which can come in a variety of formats, e.g.observations facts, perceptions, anything that can be interpreted to have meaning, can come in three formats. These are structured (row and column based), semi-structured (consistent but not rigid like TCP/IP packets, JSON, XML data), and unstructured (photos, text files)

Data is sourced from locations including RDBS, flat files, APIs, web scraping, data streams. Once sourced data is stored in a data repository, where data is collected, organised, isolated, for reporting, analysis, insights. Repositories can be transactional like OLTP or analytical like OLAP. Within the latter category we have data warehouses, data marts, data lakes, and lake house. Data integration is the component between original data sources and the warehouse.

A data warehouse brings data from multiple sources into a comprehensive single source of truth. A data mart is a sub selection of data for a particular business function or community of users, which are either dependent (subsection), independent (not from a warehouse), or hybrid. Warehouses use the ETL pattern, making data formats consistent, remove duplicates, filter and enrich data, and model business relationships before being stored. ETL can be an initial loading of data, and incremental load, or a drop and replace.

A data lake holds raw data straight from the source, structured and unstructured, in their native format. There can be issues over quality, governance, and performance. This is where the ELT pattern is used, as it shortens time between extraction and delivery, transforming only the required data or particular analysis.

A lake house is between a data lake and a data warehouse, with the flexibility and cost of a data lake, but the performance and structure of a warehouse. This solves the problem of not being able to have the whole data lake massaged into a warehouse as the cost would be prohibitive.

Big data was five V's: Velocity, how fast data is created; Volume, scale of data; Variety, diversity of data; Veracity, quality and origin of data; Value, need to turn raw data to value like medical insights, satisfaction, money.

### Module Three: Data Engineering Lifecycle

There are four layers of a data platform architecture, these are:
* Data ingestion, or data collection layer. This connects to source systems and brings in data, while maintaining meta-data about the transfers.
* Data storage and integration layer. This is where data is stored for processing, transfering, merging.
* Data processing layer. This is where data wrangling occurs. The transformation can include change of schema, form, de/normalisation, joins and unions. The validation can include comparing against rules and constraints, detecting anomalies and quality issues like missing or duplicate data. Profiling can look at the source to get structure, content and relationships to detect anomalies and if fields in expected range.
* Analysis and user interface layer

When designing a data store or repository multiple points have to be taken into consideration. First, what kind of store best suits the data, is it relational, graph, document, key/value, or columnar based. Second, what is the volume of the data, do we need a OLAP, a data lake, or a big data store. Third is the data usage, is it to support high frequency updates and lots of transactions, does it require specific response times, need specific backup and recovery options, or high availability. There is finally the issue of privacy, security, and governance, where access control, multizone encryption, data-management, and monitoring systems need to be taken into account.

Expanding on the security topic mentioned above there are multiple layers to security considerations. First is physical security, access to facility and surveillance, multiple power feeds, heating and cooling. Then there is network security, including firewealls, network access control, network segmentation by virtual lan. Finally there is data security, at rest through encryption, in transit using HTTPS, SSL, TLS.

In regards to the performance of a data platform we can look at issues, metrics, troubleshooting, and design points to avoid some issues. Common types of issue are scalability and latency problems, application failure, awaiting data dependencies, tool incompatibilities and tasks running out of sequence. To monitor these we can use latency checks, failure indicators in monitoring software, resource utilization, and traffic to the platform. For diagnosing issues we can check the tools and source code versions are all ok, we can check logs and metrics to isolate if the issue is caused by infrastructure, software, or data, and we can try to reproduce in a test environment.

With database performance specifically we monitor for system outages, capacity utilization, query latency, conflicting activities, and large queries or batch activities causing resource constraints. We can improve on some of these by good capacity planning to make sure optimal hardware and software provisioned. Good indexing saves full table reads, partitioning for smaller scans, and monitoring and alerting systems to proactively deal with issues.

Data governance is a collection of practices, principles, and processes to maintin security, privacy and integrity which should be thought of from the very beginning of every project rather than be something tacked on at the end.

### Thoughts on the course

This course was a nice blend of short lecture videos intersperced with interviews of experienced data engineers to provide valuable insight. They explained the main components of a data pipeline and gave just the right amount of information for an introductory course.

This took five and a half hours to complete and write up my notes.

## Python Basics for Data Science

### Module One: Python Basics

This was an acceptable module to introduce someone to programming. There was nothing new for me here.

### Module Two: Python Data Structures

Another acceptable module to indroduce the basic data structures in Python. There was nothing new for me here.

### Module Three: Python Programming Fundamentals

Touching on classes, objects, exception handling, this was a good module to build on the previous. There was nothing new for me here.

### Module Four: Working with Data in Python

Having used Pandas a little in the past, this was still a good module for introducing how it works with .loc and .iloc, and I was surprised to find that Pandas can read CSV files from the internet.

video one dimensional numpy

### Module Five: APIs and Data Collection

### Thoughts on the course

The videos and text pages were comprehensive for the basics of Python, and the notebooks for learning and trying out what has been learned practically were well made. I feel there could have been more problems to work through, rather than examples in the practical notebooks, but that is the only improvement I would seek.

Time: 2 hours;4;