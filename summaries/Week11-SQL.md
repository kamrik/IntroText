# Lecture 11: SQL Basics
- Summary generated from Zoom audio transcript by ChatGPT
- [Slides](https://docs.google.com/presentation/d/1132NPYvHYk0F4KTsF9wC-7souWPvFyZUTkgKC-3b6OM)

## Introduction to Databases
- **Database Definition**: A collection of organized information for easy storage, management, updating, and retrieval.
- **Types of Databases**:
  - Physical databases (e.g., old-style phone books, archives)
  - Software databases (DBMS - Database Management Systems)
  - Relational databases (RDBMS - Relational Database Management Systems)

## SQL (Structured Query Language)
- **Purpose**: Used to communicate with databases, especially relational ones.
- **History**:
  - Developed by Edgar Codd at IBM in the 1970s.
  - Standardized in the 1980s; remains largely unchanged.
  - Key figures: Edgar Codd (Turing Award), Michael Stonebreaker (Postgres, Ingres), Michael Widenius (MySQL, MariaDB).

## Popular SQL Databases
- **Open Source**: PostgreSQL, MySQL, SQLite
- **Commercial**: Microsoft SQL Server, Oracle

## SQL Language Basics
- **Syntax**:
  - Case-insensitive (typically keywords are capitalized for readability).
  - Uses single quotation marks for strings.
- **Basic Query Structure**:
  ```sql
  SELECT column1, column2 FROM table WHERE condition ORDER BY column LIMIT number;
  ```
- **Common Clauses**:
  - `SELECT`: Specify columns to retrieve.
  - `FROM`: Specify table to query.
  - `WHERE`: Filter results based on conditions.
  - `ORDER BY`: Sort results.
  - `LIMIT`: Restrict number of rows returned.

## SQL Examples
- **Select All Columns**:
  ```sql
  SELECT * FROM assignments;
  ```
- **Select Specific Columns**:
  ```sql
  SELECT course_id, title FROM assignments WHERE course_id = 'COMP1238';
  ```
- **Distinct Values**:
  ```sql
  SELECT DISTINCT course_id FROM assignments;
  ```
- **Aggregation Functions**:
  - Count: `SELECT COUNT(DISTINCT course_id) FROM assignments;`
  - Min/Max: `SELECT MIN(due_date) FROM assignments;`
- **Ordering and Limiting**:
  ```sql
  SELECT * FROM assignments ORDER BY due_date DESC LIMIT 5;
  ```
- **Pattern Matching**:
  ```sql
  SELECT * FROM courses WHERE course_id LIKE 'COMP%';
  ```
- **Joining Tables**:
  ```sql
  SELECT assignments.*, courses.lab_time
  FROM assignments
  JOIN courses ON assignments.course_id = courses.course_id;
  ```

## Practical Considerations
- **SQL Usage**: Widely used for database interactions, not only by developers.
- **Learning SQL**: Better done in context of some project that involves more than just a database.
