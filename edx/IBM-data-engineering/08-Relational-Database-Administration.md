# EdX: IBM Data Engineering

## Relational Database Administration

### Module One: Introduction to Database Management

An average day for a DBA is given as: checking dashboards for any overnight issues, checking overnight batch jobs completion status, reviewing service requests from users which may include changes to the database, help with query performance, or designing a new database.

The life cycle of a database is: requirements analysis, design and plan, implementation, monitoring and maintenance. In the requirements analysis phase you work with users to establish what data is involved and how it will be accessed, e.g. dashboard, queries etc. Working with stakeholders is important, to analyse the need for the database, clarify the goals it fills. In design and plan stage a database model is created using ER diagrams, and capacity planning needs to think on the hardware necessary. In the implementation stage, the design is rolled out, creating the database, the access controls, the automation of tasks like backups, and populating the database. In the monitoring and maintenance phase the performance is monitored, upgrades and patches are applied, and logs are checked.

DB storage must be planned for the growth of the database. Physical storage is separate from the logical database design. Tablespaces and Containers contain DB objects such as tables, indexes etc. These define the mapping between the logical design and the physical storage. Using tablespaces you can increase performance, for example by putting a heavily used index on a fast SSD, while a table not used very much can be located on a slower HDD. 

### Module Two: Managing Databases

Backups, used to restore a database, are used to recover from loss events. These may include unplanned shutdowns, accidental deletion, or data corruption. There are logical and physical backups. Logical backups contain DDL and DML statements, and their creation can take a long time and cause the database to run slower. However they can be granular, backing up one or more tables to the full database. Physical backups copy the physical files of the database. Whichever backup is used it is essential to check backup are valid and that restore plans work.

There are four types of backup design: full, point in time, differential, and incremental. Full is self explanatory. Point in time uses logging of transactions, such that a previous full backup is used as an initial restore, then the transaction logs are played back up to a given point in time. Differential backs up data that has changed since a previous full backup. For example, a full backup on a Sunday can be followed by differential backups every other week day, and each subsequent day has all the previous days changes and its own, as the differential is the full backup. Incremental are similar to differential, except they only save changes that occur since the previous incremental backup.

Backups can be classed as hot or cold. Hot are taken when the database is in use and can reduce performance. Cold backups are taken when the database is off line.

Policies need decisions on:

* Physical or logical
* Full, differential, or incremental
* Hot or cold
* Compression
* Encryption
* Frequency/Schedule

Security is an important aspect of managing databases. The servers need to be secure physically, the OS should be regularly patched, have access monitoring, and the DB should be patched and secured, with the number of admins kept low. Encryption should be used when applicable, during rest and transmission. Symmetric or asymmetric can be used, with asymmetric being safer. Transparent encryption is where the DB handles encryption and decryption automatically. Also data access security must be maintained. The user must be authenticated to use the DB, and then only access the objects they have permission to access, which were assigned using the principle of least privilege. Monitoring of user activity can alert to issues or gaps in security.

### Module Three: Monitoring and Optimization

Monitoring is a critical part of database management. Watching of day to day database use and status to ensure its health and performance. Monitoring can provide information for forecasting future hardware needs based on usage patterns, analysing performance of queries and their use of tables and indexes, assessing the impact of optimisation activities, and root cause of performance degredation. There is reactive and proactive monitoring: reactive is reactionary, say to a security breach or critical performance level reached, whereas proactive seeks to prevent reactive issues. Proactive uses automated processes to check health metrics by having a baseline performance metric, then monitoring behaviour against this baseline. Work that may appear out of nominal against the baseline can include peak hours of operation, query and back command time to run, and time to backup and restore.

There are four levels of metrics that can be monitored: infrastructure, instance, query, and user levels. Infrastructure is the hardware the DB runs on, instance is the DB itself, query is query throughput, and user is any issues users may have. Metrics include: DB throughput (queries per second), DB resource usage, DB availability (up or down), DB responsiveness, DB contention (lock waits, long running queries), top consumers, and frequency queries.


As data and workloads change over time data can become fragmented, and performance can suffer. Optimisation can fix bottlenecks, fine tune queries, and reduce response times. PostgreSQL offers the Vacuum command to help with this.

Two other performance techniques are given as putting transaction logs on separate storage from where the DB tables are held, this also helps with recover-ability, and indexes. Indexes are an ordered copy of (a|multiple) columns data to enable efficient searches. They can be clustered, in that data stored in the table is in order of the clustered key, or can be non-clustered, null allowed, unique or not.

### Module Four: Troubleshooting and Automation

When troubleshooting there are a number of points to consider: what are the symptoms, where is it happening, when does it happen, under which conditions does it happen, is it reproducible? Common problems include performance issues, bad configuration, and poor connectivity. Performance issues are usually due to high latency for disk reads/writes, a poor network connection, or badly written queries. Bad configuration can lead to issues with most of the DB tasks.

Automation of checking DB health are an important aspect of DB administration, through reports, notifications, and alerts. A report is a temporal summary of metrics and data on the DB health automatically created and shared to a schedule. Notifications are a way of letting the DBA know something needs checked and observed but is not pressing. Alerts need urgent attention, like low drive space or memory, scheduled jobs that failed to complete, or error evens in the error log.
