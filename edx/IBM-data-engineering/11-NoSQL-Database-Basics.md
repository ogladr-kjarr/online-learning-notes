# EdX: IBM Data Engineering

## NoSQL Database Basics

### Module One: Introducing NoSQL

NoSQL stands for Not Only SQL, but could really be Non Relational Databases. NoSQL databases were designed for data or situations where a RDBMS is not suitable. For example, key-value, columnar, and document databases tend to be able to scale to meet demand, and are distributed for disaster recovery and fault tolerance. Being distributed to many servers or many data centres provides performance, fast response times with high concurrency, high availability (in case a server breaks), and is more resilient than a RDBMS. Cost is also a consideration, with say Cassandra running on commodity hardware rather than a one massive-spec'd RDBMS server.

Key value databases are simple, a hashmap based on the key, scales well and shards easily, but is not meant for complex queries or multi-operation atomicity. Document based databases are built on the key value model, but allow for the value, and any part of the value, to be indexed and searched too, with storage tending to JSON or XML. Each document is a flexible schema, and atomic for single document edits only. Graph based databases store entities and relationships (nodes and edges). Scaling is difficult as sharding is not an option, though they are acid compliant. Best used for highly connected and related data. Database deployment options include: self hosted on premises, cloud deployment, hybrid, DBaaS, containerized, serverless deployment.

ACID vs BASE (ACID for consistency, BASE for availability):

ACID

* Atomic: all operations in a transaction succeed or all are rolled back 
* Consistent: on completion of transaction the structural integrity in the database is not compromised
* Isolated: transactions cannot compromise the integrity of other transactions by interacting with them
* Durable: Data persists even with network or power cuts

BASE

* Basically Available: rather than enforcing immediate consistency, this ensures availability to data by spreading and replicating it across the cluster
* Soft state: due to lack of immediate consistency, different nodes may have different values
* Eventually consistent: data reads may be inconsistent across the cluster

Distributed databases are a collection of instances running on multiple interconnected servers, these may be in the same datacenter or not. Availability is provided via replication and sharding. So data is replicated over multiple servers for redundancy, while sharding means the data is spread out over the different servers to spread the load. More performance is easy to achieve by just adding more servers. A challenge is consistency, if two people update the same data at the same time. Some databases write to all nodes at the same time, some only update via a single node

CAP theorem: Consistency, Availability, Partition tolerance. Three requirements, only two can be guaranteed in a system.

### Module Two: Introducing MongoDB

It is a document database, each record being a document, which is an associative array like JSON objects or Python dictionaries. Similar types of documents are stored in a collection. A Mongo DB is a store of collections. The schemas are flexible, for example in an address collection one document could have zip code, another post-code allows for an evolving schema. The code-first approach means you can just save documents and access them, as opposed to having to design a schema first, so you can program documents from the database being initiated. It also provides high availability by means of redundancy, and speed through sharding, which allows for no upgrade downtime and resilience.

### Module Three: Introducing Cassandra

Cassandra is suited to situations that are write intensive, where there are not many updates or deletes, and where joins or aggregation operations aren't necessary. For example tracking a users clicks, mouse position, and behaviour online. It is a distributed system in that servers can be in different racks, datacenters, or continents. It is decentralised in that all the nodes can accept queries and deal with them, there is no leader architecture, it is peer to peer. This leads to highly available data as data is sharded across different nodes and replicated too. It is also scalable as easy to add more servers to a cluster.

Data is distributed by the partition key, which is hashed to determine where in the cluster it will be stored before replication. A write query has the receiving node become the coordinator of operation; it directs the write to all partition replicas, and once it receives the correct number of acks from the consistency number of nodes the client is told the write was successful. A read is similar, the receiving node becomes coordinator, and the read query is sent to the number of nodes that read consistency is set to, so if 2, then only two server results are needed, and the one with the most recent up to date data is used.

Data is stored in tables, which themselves are stored in keyspaces, a logical entity that contains one or more related tables, with one keyspace per application. The keyspace defines options for all the tables it contains, for example replication strategy and factor. A table has a primary key, the first part of which is the partition key, and the second part is the cluster key. The partition key is mandatory, and is used for hashing to determine what partition to store the data on. If no cluster key the table is static, if a cluster key is present then it is dynamic. Entries in the table are ordered by the cluster key.

When designing a Cassandra database, choose a partition key that starts answering your query, but spreads the data uniformly around the cluster. Secondly build a primary key that limits the number of partitions read to answer the query. The clustering key should be ordered according to predicted query use.

### Module Four: Final Project

Could not carry out the final project as the lab environment wouldn't load. There was an error message about a misconfigured lab.
