# Database Design 2nd Ed by Adreinne Watt

## Chapater Five: Data Modelling

Data modelling is the first step of database design, describing the entities (data contained in the database), the relationships between the entities, and constraints on the data, a conceptual model. The second step is expressing the data model in a high-level data model where attributes and other elements are added. The third step is the actual database design, the physical design in the DBMS dialect called the database logical design. The fourth step is a continuation of the third, the database physical design, where index types, file layout, storage structure are defined. 

## Chapter Ten: ER Modelling

Functional dependencies describe how attributes are related, and ensure that all attributes in a table belong in a table.

## Chapter Twelve: Normalisation

First normal form: only single values are permitted at the intersection of each row and column.
Second normal form: if there is a composite primary key, each attribute must depend on the whole of the key, not only on part of the key.
Third normal form: all transitive dependencies must be removed, a non-key attribute may not be functionally dependent on another non-key attribute.
BCNF: every determinant (attribute or group of attributes that functionally determines another attribute) is a candidate key.