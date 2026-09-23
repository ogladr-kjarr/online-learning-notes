# EdX: Stanford Databases

## Modelling and Theory

### Introduction and Relational Databases

The relational model is used by all major commercial RDBMS. It is simple, has a high level languages in SQL, and has extremely efficient implementations of the model in open-source and proprietry systems. A database is a set of named relations (tables), attributes (columns), and tuples (row). Each attribute has a type (domain), and a key is an attribute whose value is unique in each tuple.

RDBMS provide physical data independence which allows for the logical data in the RDBMS to be decoupled from the layout on disk; that is, the disk layout can change, but the users of the query language and RDBMS don't see any difference in the database they use.

When creating a database the schema is designed before data is loaded. A schema is like a type (structural description of relations in the database), and the data is the variable. DDL is used to create the schema. DML is used to query and modify the data in the schema.

Relational algebra is a formal language, SQL is an implemented language and has its foundation in relational algebra.

### Relational Design Theory

First to third normal forms were skipped, and instead the focus was on BCNF and 4NF. BCNF says that if we have A-> B, where B has a functional dependency on A, A functionally determines B, and that A is therefore a key. If A is not a key of the table, then the relation needs to be decomposed. A -> B can be said that whenever A is a value then B is a corresponding value, for attributes A and attributes B. For example, for every SSN in a table, the person's name will always be the same; so A -> B.

For 4NF, multivalued dependency, it says that we have every combination of attributes, making for redundancy, update and deletion anomalies. For example a table with applications to college that has (SSN, college_name, high_school_name), if someone applied to Stanford, but went to two high schools, then there are two entries for that student, which means redundant data and therefore should be stored in two different tables. So SSN ->> college name, SSN multidetermines college name.

Design by decomposition can be done via applying BCNF by analysing functional dependencies, then 4NF multivalued dependecies, to mega-relations. The relations that are decomposed should create the original mega-relation when a natural join is made with all the decomposed relation. The BCNF algorithm is as follows: start with relation R, work out dependencies. If for all the different A values not being a key, create a new relation R1 with one A->B dependencies, and another relation R2 with all the other attributes, then decompose R2 and so on until every A in A -> B is a key.

The shortcomings of BCNF and 4NF are that they may decompose too far for usefulness in the database. It might be desired to compose to save on using joins all the time to get back to original data.

### Unified Modelling Language

ER used to be the main model for design, however now the UML model is now the preferred model.

4;4;3;