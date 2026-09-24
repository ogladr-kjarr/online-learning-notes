# EdX: Stanford Databases

## OLAP and Recursion

### Online Analytical Processing

Originally OLTP was the main use of a database, which is designed around short transactions, frequent inserts and updates, simple queries that only touch a small portion of the data. OLAP is the opposite of that, with long transations, complex queries that touch large portions of the data and infrequent inserts and updates. Data warehousing is the behaviour of taking one or more OLTP data sources and transferring the data into a large OLAP database.

In an OLAP there can be a star schema, where there is a fact table that records things that have happened (such as sales transactions, page views) with links to multiple dimension tables that reflect things in the real world (such as stores, customers, items). Fact tables tend to be append only and are very large; dimension tables are infrequently updated and smaller than fact tables. The fact table has the thing being recorded, and then keys that link out to the dimension tables

OLAP queries, tend to look like: Join -> Filter -> Group -> Aggregate, with the aggregate step happening with the thing being recorded in the fact table. These queries can be slow, so indexing and materialised views can be used to speed things up.

A data cube is a way of looking at data from a fact table, with its location defined by the dimension entries its grouped and aggregated by. So for a cube with the following:

```sql
SELECT store, product, staff, sum(fact_value)
FROM fact_table 
JOIN dim_tables
GROUP BY store, product, staff WITH CUBE
```
The axis would be store, product and staff, with the values between the axes the sum of fact_value within those groups. This will have the data along with all the group by, but also the summaries for each combination of group by attributes. The general form is below:

```sql
SELECT dimension-attrs, aggregates
FROM tables
WHERE conditions
GROUP BY dimension-attrs WITH CUBE
```

For the RollUp option, this works with hierarchical data as shown below. There will be a total for every state, for every state and county (that are hierarchically related), and every state, county, and city. Different from a cube in that there is no city or county entry by itself.

```sql
SELECT state, county, city, sum(price)
FROM tables
GROUP BY state, county, city with rollup;
```

When working with a OLAP query drill down means adding more gropy by attributes to get more detail, and roll up is removing group by attributes for less detail. Slicing is when you take a cube and return a slice by specifying a where clause, isolating one of the dimensions.

```sql
SELECT storeid, itemid, custid, sum(price)
FROM sales
GROUP BY storeid, itemid, custid
WHERE storeid = 'WA'
```

Dising is when you take a cube and slice in two or more dimensions:

```sql
SELECT storeid, itemid, custid, sum(price)
FROM sales
GROUP BY storeid, itemid, custid
WHERE storeid = wa AND color=red
```

4;