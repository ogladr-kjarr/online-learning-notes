# EdX: IBM Data Engineering

## Relational Database Basics

### Module One: Relational Database Concepts (with a bit of module two)

When modelling a database, there is a logical (information) model and a physical (data) model. The logical model, in the form of an ERD, abstracts the complexity of real world entities, helps to understand business concepts and rules and is the blueprint from which the physical model is created. The physical model defines the data element types, constraints, relationships and all the logical design in the SQL specific to the RDBMS you are using.

The relational model allows for logical, physical, and physical storage independence. Logical allows for conceptual changes (DDL) without having to change external schema or programs above it. Physical allows for indexes and other physical attributes without a change to the conceptual/logical schema. Physical storage means that where the backend data is stored doesn't effect the physical or logical spaces.

The database architecture deployment topology could be single tier, client server, three tier, or cloud based. The deployment topology of the architecture can include hardware and software configuration, and network components, depending on factors like scalability, performance, and reliability. Single tier has the database, the app, and the UI on the same server. Client server has the UI on one server, the app and database on another. Three tier further separates the app from the database server. There is also cloud deployment.

Distributed or clustered architecture can lead to enhances like scalability, fault tolerance, and performance, whether shared disk, shared nothing, replication, partitioning, and sharding.

When creating a data model there are constraints that help ensure integrity. Primary key creation for entity integrity constraint, ensuring records can be identified within a table. Referential integrity, using foreign keys to ensure correct links between tables. Domain constraint, using domain knowledge to ensure meaningfulness of the data, e.g. a cell can only have a certain range of values. Default values, null constraints can also be good. Not necessarily in the data model, but using views to allow specialised access to subsets of the data for security/privacy, and efficiency is also handy.

### Module Two: Using Relational Databases

This module introduced DDL and DML statements, nothing new to me in those that were presented. What was handy was the reminder of the first to third normal forms:
* First: Each row must be unique, each cell contains a single value
* Second: Separate tables for sets of values
* Third: eliminate columns that do not depend on the key

They didn't go into BCNF or fourth or fifth normal forms.
