# Database Design Succinctly by Joseph D. Booth + Wikipedia

## Database Models

There are three primary models in the design of a database. 

The first, the conceptual model, it is high level, showing named entities and their links to each other and no more. Done as soon as possible, with the stakeholders giving feedback, it is where use-case and flow chart diagrams can be useful to document processes and related entities. 

The second, the logical model, has attributes in the entities, but not any implementation details. It is also the level where key selection and normalisation takes place. There are five types of key excluding superkeys. The candidate keys are the collection of attributes that can uniquely identify a row in the table. These may be made of one or more attributes (having more than one makes it a composite key), and the candidate key that is chosen becomes the primary key. The primary key may be an attribute created just to be the primary key, in which case that is a surrogate key. Finally there are foreign keys, those which link to the table in which they are the primary key.

The third is the physical model, that details the attributes as they appear in the database with their types, the relationships of the entities, any constraints, indexes, default values etc. The physical model is created with the RDBMS to be used in mind as different vendors have different ways of doing the same thing.

## Normalisation

There are five normalisation levels in this book, 1st through 3rd, BCNF, and the 4th.

First normal form states that there should be no repeating data within a table attribute. For example if a customer has multiple shipping addresses, and they are stored as seperate attributes in the table, i.e. address 1, address 2 etc, then they should be removed and placed into their own table, with their PK linked to the first table as a FK. Similarly if a single column has multiple values seperated in some way like a comma.

Second normal form states that partial dependencies should be removed. Every non-prime attribute has a full dependency on the whole of each primary key. If there are any attributes that only depend on a part of a composite primary key, they are removed to another table.

Third normal form states that all attribute columns should be dependent on the primary key. If an attibute is also functionally dependent a non-key attribute it needs removed to a seperate table.

BCNF (3.5 normal form) states that if a primary key is made up of one attribute, it is already BCNF. If it is a composite key and an attribute is only dependent on part of the key, the table is split. This sounds pretty much like the 2nf description.  Note: another source has a different rule for BCNF.

Fourth normal form states that if a table has say three attributes, and two attributes are independently related to the third, then we get a cartesian product effect. For example, if there is a franchise ID attribute, with books attribute, and locations attribute, listing what books are at what location for each franchise ID, we see that locations and books have no relationship between each other, and so can be split into their own tables.

