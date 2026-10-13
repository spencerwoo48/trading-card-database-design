# 🧙‍♂️ Trading Card Database Design

This repository contains the design for a database to keep track of my Magic: The Gathering collection. It also has a notebook logging my manipulation of the collection's raw data. It also covers some data engineering concepts including transform and load.

### System Requirements and Scope

MySQL 8.0  
PopSQL 1.0.135

The database is designed around the core following concepts:

1. A child table receiving attributes from a parent table. Child table has columns which are attributes shared by all cards.
2. Additional attributes added as necessary in separate parent tables, left joined by referencing permanent_id in a junction table.
3. This design prevents redundant data and is 3NF compliant.

### Architecture and ER Diagram



### Data Dictionary

1. permanent table

| Column Name | Data Type | Constraints | Description |
| --- | --- | --- | --- |
| permanent_id | INT | UNIQUE AUTO_INCREMENT | Unique index for the card printing |
| card_name | VARCHAR(100) || Name of the card |
| expansion_symbol | INT || Expansion when the card was printed |
| rarity | INT || Rarity of the card |
| artist_information | INT || The artist of the illustration |

### DDL

> [!NOTE]
> The DDL sql file only has one card, to test an insertion and query. An ETL project to load the entire collection is underway.

The database schema can be setup, loaded, and queried using the file 

```
C:/Users/Spencer/code/github/trading-card-database-design/sql/ddl/mysql_database_schema_2026_04_08_v49.sql
```