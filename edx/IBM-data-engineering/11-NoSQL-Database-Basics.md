# EdX: IBM Data Engineering

## NoSQL Database Basics

### Module One: Introducing NoSQL

NoSQL stands for Not Only SQL, but could really be Non Relational Databases. NoSQL databases were designed for data or situations where a RDBMS is not suitable. For example, key-value, columnar, and document databases tend to be able to scale to meet demand, and are distrubuted for disaster recovery and fault tolerance. Being distributed to many servers or many data centres provides performance, fast response times with high concurrency, high availability (in case a server breaks), and is more resilient than a RDBMS. Cost is also a consideration, with say Cassandra running on commodity hardware rather than a one massive-spec'd RDBMS server.

Key value databases are simple, a hashmap based on the key, scales well and shards easily, but is not meant for complex queries or multi-operation atomicity. Document based databases are built on the key value model, but allow for the value, and any part of the value, to be indexed and searched too, with storage tending to JSON or XML. Each document is a flexible schema, and atomic for single document edits only. Graph based databases sotre entities and relationships (nodes and edges). Scaling is difficult as sharding is not an option, though they are acid compliant. Best used for highly connected and related data. Database deployment options include: self hosted on premises, cloud deploytment, hybrid, DBaaS, containerized, serverless deploymtnet.

ACID vs BASE (ACID for consistency, BASE for availability):

ACID

* Atomic: all operations in a transaction suceed or all are rolled back 
* Consistent: on completion of transaction the structural integrity in the database is not compromised
* Isolated: transactions cannot compromise the integrity of other transactions by interacting with them
* Durable: Data persists even with network or power cuts

BASE

* Basically Available: rather than enforcing immediate consistency, this ensures availability to data by spreading and replicating it accross the cluster
* Soft state: due to lack of immediate consistency, different nodes may have different values
* Eventually consistent: data reads may be inconsistent across the cluster

Distributed databases are a collection of instances running on multiple interconnected servers, these may be in the same datacenter or not. Availability is provided via replication and sharding. So data is replicated over multiple servers for reduncancy, while sharding means the data is spread out over the different servers to spread the load. More performance is easy to achieve by just adding more servers. A challenge is consistency, if two people update the same data at the same time. Some databases write to all nodes at the same time, some only update via a single node


CAP theorem: Consistency, Availability, Partition tolerance. Three requirements, only two can be guaranteed in a system.


### Module Two: Introducing MongoDB

### Module Three: Introducting Cassandra

### Module Four: Final Project

1;2;