# EdX: IBM Data Engineering

## Relational Database Administration

### Module One: Introduction to Database Management

Describing an average day for a DBA it lists activities such as the following: chech DB dashboards for any overnight issues, check overnight batch jobs for completion. Then review service requests in email and support tickets, which can include changes to the database, help with query performance, or designing new databases.

The lifecycle of a database is: requirements analysis, design and plan, implementation, monitoring and maintenance. In the requirements analysis work with users to establish what data is involved, talk to the users and producers of the data, and how it will be accessed, e.g. dashboard, queries etc. Working with stakeholders is important, to analyze the need for the database, clarify the goals it fills. In design and plan stage a database model is created using ER diagrams, and capacity planning needs to think on the hardware necessary. In the implementation stage, the design is rolled out, creating the database, the access controls, the automation of tasks like backups, and populating the database. In the monitoring and maintenance phase the performanc is monitored for example for long running queries, reviewing reports, and applying upgrades and patches. Reviewing logs for failed logins and data access activity, and maintaining database permissions.

DB storage must be planned for the growth of the database. Physical storage is seperate from the logical database design. Tablespaces and Containers contain DB objects such as tables, indexes etc. These define the mapping between the logical design and the physical storage. Using tablespaces you can increase performance, like putting a heavily used index on a fast SSD, while a table not used very much on a slower HDD. Recoverability make backup more convenient, you can backup the whole tablespace. A partitioned database, different logical partitions contain a subset of the overall data in a large table, common in warehousing.

### Module Two: Managing Databases

Backup and restore is used to recover from loss of the database, from unplanned shutdown, accidental deletion, or data corruption. Copies can be used to move to a different DB system, share with business partner, or create a dev testing ground. There are logical and physical bakcups. Logical contains DDL and DML commands, though may take a long time to backup slowing the DB down. Logical backups can be granular, taking only a subset of the database. Physical backup takes a copy of the physical files of the database. Usually smaller and quicker than logical backups. Can only restore to the same RDBMS unlike a logical backup. It is essential to check backups are valid and that restore plans work, as well as the physical security of backups.

There are four different types of backup: full backup, point in time backup, differential backup, and incremental backup. A full backup is a full copy of all the specified data, though for a big DB this can be a large size, and if some data is cold, then it's backups with no changes. 

A point in time recovery uses logging of transactions to restore to an earlier point in time. A backup can restore most the data, and then the the logs are used for recovery of the rest of the data. Eg. if a command at 11:04 deleted the database, a full backup of the DB at midnight is used, then the logs are used to recover until 11:03, minimizing transactions lost.

Differential backups consists of any data than has changed since the last full backup, reducing costs of the backup. So if a full backup happens on sunday, there can be a diff backup on Monday, Tuesday etc. Tuesday's backup has all the data that was also in Mondays, so only one incremental file is needed to create the backup.

Incremental backups are similar to differential, except they only keep changes that have happened since last backup. So in the scenario above, if a recovery of Wednesday is needed, the full backup, plus Monday, plus Tuesday, plus Wednesday is needed to complete the backup restore.

Hot backups are taken while data is in use, they have no impact on availability, but can reduce performance. A cold backup happens when the DB is offline.

The frequency of the backup policies consideres how often data is modified or added. Also are the tables large? When should the database be backed up?

Policies need decisions on:

* Physical or logical
* Full, differential, or incremental
* Hot or cold
* Compression
* Encryption
* Frequency/Schedule

Transaction logs keep track of all transactions that change or modify the database. These are used to recover data as roll foward recovery. You specify the log location in the conf, and they should be on storage seperate from where the DB tables are held, to increase performance and recoverability.

Security: servers need to be secure physically, O/S should be regularly patched, hardened, and have access monitoring. Similarly for databases patching should be applied, all security features should be used, and the number of admins are kept low.

A user needs to be authenticated on the server/database to allow access, and to then have permissions on what can be accessed in the database. Authentication is validating credentials to allow access to the database. Once authenticated tables, views, etc need privileges assigned. Use principle of least priviledge. Monitoring and auditing who accesses what, and what actions they perform can alert to issues or gaps in security. Encryption in the database also can be used to protect data.

Encryption is another layer of security during rest and transmission.  At rest stops people accessing the data via the files. Algorithms use a key to translate from data to encrypted. Symmetric is where a single key is used to encrypt and decrypt data. Asymmetric like public key encryption is safer. Transparent encryption is where the DB encrypting and decryption is handled automatically. The DB is performing these tasks. In transit can be performed by the DB, using TLS or SSL.

### Module Three: Monitoring and Optimization

Monitoring is a critical part of database management, the warching of the day to day database status to ensure its health and performance. It helps identify issues in a timely manner. Tasks can include: forecasting future hardware needs on database usage pattersn, analyzing peformance of applications and queries, use of tables and indexes, root cause of performance degredation, assessing impact of optimisation activities.

Reactive monitoring is done after an issue occurrs, could be due to a security breach, or critical performance level is reached. Proactive monitoring seeks to prevent reactive issues, using automated processes to check on health metrics. To start proactive monitoring, you need baseline performance metrics, so as to know when it is out of nominal. These can include determining: peak/off peak hours of operation, typical query and batch command time to run, and time to backup and restore.

There are four levels to monitor KPIs known as metrics: infrastructure, platform, query, and user levels. Infrastructure like OS, Servers, storage hardware, network all work correctly. Instance is at the RDBMS level. Query level, bottlenecks can cause latency, mishandle errors, and reduce mutli query throughput. User level is from issues the users have. Metrics include: database throughput (queries per second), database resource usage, database availability (up or down), database responsiveness shows how well inbound requests are behaving, database contention measures lock waits and long running connections, most frequent queries, and top consumers.

As data and workloads change over time data can become fragmented, and performance can suffer. Optimization can fix bottlenecks, fine tune queries, and reduce response times. 

Indexes are an ordered copy of a columns data to enable efficient searches. Main index type are primary key, which is clustered, in that data stored in the table in order by primary key. Other indexes can be on one or more columns, non-clustered, null allowed or not, unique or not unique.


### Module Four: Troubleshooting and Automation

Troubleshootin: What are the symptoms, where is it happening, when does it appear, under which conditions does it occur and is it reproductible. Common problems are performance issues, bad configuration, and poor connectivity. Performance is usally due to high latency for disk reads/writes, slow processing time, poor network connection, or badly writen queries. Bad configuration with bad client configuration could stop connections, server configuration could reduce performance, database configuration might need more connections or increased caching.

Reports, notifications, and alerts are ways of getting information to the DBA. A report is a summary of metrics and data on the database health, created to a schedule. Notifications are when something happens that the DBA needs to track, but isn't pressing. Alerts, email/text etc need urgent attention like low drive space or memory, schedule jobs that fail, or error events in error log. Alerts have can severity thresholods, like warning and critical, for different levels.

### Thoughts on Course

This course took eight hours