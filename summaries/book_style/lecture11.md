# Lecture 11: Introduction to SQL Basics

This chapter introduces the fundamental concepts of databases and the Structured Query Language (SQL), the primary language used to interact with them. We will explore the history of databases, understand what SQL is, why it's important, and learn the basics of querying data.

## What is a Database?

Broadly defined, a database is an organized collection of information that facilitates storing, managing, updating, and retrieving data. Think of old-style physical systems like a library card catalog or a phone book. These are databases optimized for specific functions:

*   **Library Card Catalog:** Organized for easy storage, updates (replacing cards), adding new entries, and retrieval.
*   **Phone Book:** Primarily optimized for retrieval. Modification is difficult, requiring a new publication.

While these physical examples illustrate the core concepts, we are primarily interested in **software databases**, often referred to as **Database Management Systems (DBMS)**.

## Relational Databases (RDBMS)

There are many types of database systems, but the most common type, and the focus of this chapter, are **Relational Databases**. These systems organize data into tables with rows and columns, similar to spreadsheets. They are often abbreviated as **RDBMS** (Relational Database Management System).

Many popular databases today are relational, including PostgreSQL, MySQL, SQLite, Microsoft SQL Server, and Oracle. SQL is the standard language used to interact with these relational databases.

## A Brief History of Relational Databases and SQL

The foundation of relational databases was laid by **Edgar Codd** while working at IBM around 1970. He published a seminal paper titled "A Relational Model of Data for Large Shared Data Banks." This paper was highly influential in academic circles and earned him the **Turing Award** in 1981, considered the Nobel Prize for computer science.

Codd's ideas were developed into experimental systems. At IBM, this led to **IBM System R**. Concurrently, at the University of California, Berkeley, a research project called **Ingres** was developed based on Codd's model. Ingres became the ancestor of several significant database systems, including **PostgreSQL** (its name derived from "post-Ingres") and influenced others like Sybase and Microsoft SQL Server. **Michael Stonebreaker**, one of the core team members on the Ingres project, also received a Turing Award in 2014 for his work in databases.

The field of relational databases and SQL stabilized significantly by the mid-1990s. SQL itself was standardized in the 1980s, meaning the core language has remained remarkably consistent for decades. This stability is why older learning materials and resources like ChatGPT are often very effective for learning SQL.

Another notable figure is **Michael Widenius**, the founder of **MySQL**. MySQL was initially developed by a Swedish company and gained popularity, especially among web developers. It was later acquired by Sun Microsystems, which was subsequently bought by Oracle. Due to conflicts regarding the open-source nature of MySQL under Oracle, Widenius and others forked the project, creating **MariaDB**. Interestingly, both MySQL and MariaDB are named after Widenius's daughters.

While Oracle was historically synonymous with corporate databases, PostgreSQL and MySQL/MariaDB are now among the most popular, especially in open-source and web development environments.

## Why Learn SQL?

According to developer surveys, SQL consistently ranks among the most used languages or language-like technologies, often alongside JavaScript and HTML. Just as most applications have a web interface (requiring HTML/CSS), most applications also need to store and retrieve data (requiring a database).

SQL is the language used to communicate with these databases. While most developers don't spend all their time writing SQL, it is a crucial **secondary language** used frequently. Even for non-developers or managers, basic SQL proficiency is invaluable for accessing and analyzing data directly without relying on others.

The fundamental concepts of SQL are relatively easy to learn, and a significant portion of what you'll use daily can be grasped quickly.

## How Applications Interact with Databases

In a typical web application architecture, the flow of information often looks like this:

1.  A user interacts with a web browser.
2.  The browser sends a request to a **web server**.
3.  The web server runs the application logic.
4.  When the application needs to store or retrieve persistent data, it sends a **query** to a **database server**.
5.  The database server processes the query and returns the results to the application logic.
6.  The application logic processes the results and generates a response sent back to the web browser.

Both the application logic (running on the web server) and developers (using separate tools) communicate with the database server by sending SQL queries. Unlike integrated tools like Airtable or Microsoft Access which combine the database and user interface, most database servers are "headless" – they don't have a built-in graphical user interface. You interact with them using SQL commands sent from other applications.

## Introducing SQL Syntax: The `SELECT` Statement

SQL is a **Structured Query Language**. It's designed to be relatively easy to read and write, often resembling English sentences. The most common operation is **retrieving data**, which is done using the `SELECT` statement.

A basic `SELECT` query has the following structure:

```sql
SELECT column1, column2, ...
FROM table_name;
```

This tells the database to retrieve the specified columns from the given table.

### Retrieving All Columns

To select all columns from a table, you use the wildcard character `*`:

```sql
SELECT *
FROM assignments;
```

This query would return every column and every row from a table named `assignments`.

### Filtering Rows with `WHERE`

To retrieve only specific rows that meet certain criteria, you add a `WHERE` clause:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

The `condition` is an expression that evaluates to true or false for each row. Only rows where the condition is true are returned.

**Examples:**

*   Select assignments for a specific course:
    ```sql
    SELECT *
    FROM assignments
    WHERE course_id = 'COMP 1238'; -- Strings are enclosed in single quotes
    ```
*   Select assignments for courses *other* than a specific one:
    ```sql
    SELECT *
    FROM assignments
    WHERE course_id != 'COMP 1238'; -- Or <>
    ```
*   Select assignments due before a specific date:
    ```sql
    SELECT *
    FROM assignments
    WHERE due_date < '2024-10-01'; -- Date/time values are often treated as strings or have specific functions
    ```

**Combining Conditions:** You can combine multiple conditions using `AND` and `OR`:

```sql
SELECT *
FROM assignments
WHERE course_id = 'COMP 1238' AND status = 'In Progress';
```

**Case Sensitivity:** While SQL keywords (`SELECT`, `FROM`, `WHERE`) are generally not case-sensitive (though capitalizing them is a common convention for readability), string literals within single quotes *are* case-sensitive. `'In Progress'` is different from `'in progress'`.

### Fuzzy Matching with `LIKE`

The `LIKE` operator is used for pattern matching in strings, often with wildcards:

*   `%`: Matches any sequence of zero or more characters.
*   `_`: Matches any single character.

**Examples:**

*   Find courses whose ID starts with 'COMP':
    ```sql
    SELECT *
    FROM courses
    WHERE course_id LIKE 'COMP%';
    ```
*   Find courses whose ID contains '123':
    ```sql
    SELECT *
    FROM courses
    WHERE course_id LIKE '%123%';
    ```
*   Find courses whose ID is exactly 4 characters long (e.g., 'MATH'):
    ```sql
    SELECT *
    FROM courses
    WHERE course_id LIKE '____'; -- Four underscores
    ```

### Checking for Multiple Values with `IN`

The `IN` operator allows you to specify a list of possible values for a column:

```sql
SELECT *
FROM courses
WHERE course_id IN ('COMP 1238', 'MATH 1000');
```

This is equivalent to `WHERE course_id = 'COMP 1238' OR course_id = 'MATH 1000'`.

### Checking for Missing Values (`NULL`)

`NULL` represents a missing or unknown value. You check for `NULL` using `IS NULL` or `IS NOT NULL`:

```sql
SELECT *
FROM assignments
WHERE due_date IS NULL; -- Find assignments with no due date set
```

## Ordering Results with `ORDER BY`

To sort the rows in the result set, use the `ORDER BY` clause:

```sql
SELECT *
FROM assignments
ORDER BY due_date; -- Default is ascending (ASC)
```

To sort in descending order, use `DESC`:

```sql
SELECT *
FROM assignments
ORDER BY due_date DESC;
```

You can sort by multiple columns. The sorting is applied sequentially:

```sql
SELECT *
FROM assignments
ORDER BY status ASC, due_date DESC; -- Sort by status, then by due date within each status group
```

## Limiting Results with `LIMIT`

For large tables, you might only want to see the first few rows. The `LIMIT` clause restricts the number of rows returned:

```sql
SELECT *
FROM assignments
LIMIT 10; -- Return only the first 10 rows
```

This is often combined with `ORDER BY` to get, for example, the 10 most recent assignments.

## Working with Columns: `DISTINCT` and Functions

### Finding Unique Values with `DISTINCT`

To see only the unique values in a column, use the `DISTINCT` keyword:

```sql
SELECT DISTINCT course_id
FROM assignments; -- Get a list of all unique course IDs present in the assignments table
```

### Using Functions on Columns

SQL databases provide many built-in functions that can be applied to columns in the `SELECT` list or `WHERE` clause.

**Examples:**

*   Get the length of the assignment title:
    ```sql
    SELECT title, LENGTH(title)
    FROM assignments;
    ```
*   Find assignments with short titles:
    ```sql
    SELECT title
    FROM assignments
    WHERE LENGTH(title) < 20;
    ```
*   Concatenate columns (syntax varies by database, `||` is common in SQLite/PostgreSQL):
    ```sql
    SELECT course_id || ' - ' || title AS assignment_identifier
    FROM assignments; -- AS gives the calculated column a name
    ```

## Aggregation and Grouping

**Aggregation functions** perform calculations across multiple rows and return a single value. Common aggregation functions include:

*   `COUNT()`: Number of rows or non-NULL values.
*   `SUM()`: Sum of values.
*   `AVG()`: Average of values.
*   `MIN()`: Minimum value.
*   `MAX()`: Maximum value.

**Examples:**

```sql
SELECT COUNT(*) FROM assignments; -- Total number of assignments
SELECT MIN(due_date) FROM assignments; -- Earliest due date
SELECT MAX(due_date) FROM assignments; -- Latest due date
```

### Grouping Results with `GROUP BY`

Aggregation functions normally operate on the entire set of rows returned by the `WHERE` clause. The `GROUP BY` clause allows you to divide the rows into groups based on the values in one or more columns and apply aggregation functions to *each group*.

```sql
SELECT course_id, COUNT(*)
FROM assignments
GROUP BY course_id; -- Count assignments per course
```

This query groups the assignments by `course_id` and then counts the number of assignments within each group. Any column in the `SELECT` list that is *not* an aggregation function must be included in the `GROUP BY` clause.

### Filtering Groups with `HAVING`

The `WHERE` clause filters individual rows *before* grouping. The `HAVING` clause filters groups *after* grouping and aggregation have occurred.

```sql
SELECT course_id, COUNT(*)
FROM assignments
GROUP BY course_id
HAVING COUNT(*) > 2; -- Find courses with more than 2 assignments
```

## Joining Tables

Relational databases are powerful because they allow you to store related data in separate tables and link them together. This avoids redundancy and keeps data organized. **Joins** are used to combine rows from two or more tables based on a related column between them.

The most common type is an **`INNER JOIN`**, which returns rows only when there is a match in *both* tables based on the specified condition.

```sql
SELECT assignments.title, courses.lab_time
FROM assignments
INNER JOIN courses ON assignments.course_id = courses.course_id;
```

In this example:

*   We select the `title` from the `assignments` table and the `lab_time` from the `courses` table.
*   We specify that we are joining `assignments` and `courses`.
*   The `ON` clause specifies the join condition: rows are matched where the `course_id` in the `assignments` table equals the `course_id` in the `courses` table.

When selecting columns from multiple tables, it's good practice (and sometimes necessary) to prefix the column name with the table name (`table_name.column_name`) to avoid ambiguity if columns in different tables have the same name.

### Table Aliases

To make queries involving joins more readable and shorter, you can assign **aliases** (temporary names) to tables using the `AS` keyword:

```sql
SELECT a.title, c.lab_time
FROM assignments AS a
INNER JOIN courses AS c ON a.course_id = c.course_id;
```

Now, `a` refers to the `assignments` table and `c` refers to the `courses` table within this query.

## SQL as a Calculator

You can use the `SELECT` statement to perform simple calculations or use built-in functions without referencing a table:

```sql
SELECT 21 * 2; -- Returns 42
SELECT DATE('now'); -- Returns the current date (syntax varies)
```

## Comments in SQL

You can add comments to your SQL queries to explain them. Anything on a line after two hyphens (`--`) is considered a comment and is ignored by the database.

```sql
SELECT *
FROM assignments; -- Retrieve all assignments
```

## Learning by Doing

Understanding SQL syntax is best achieved through practice. The concepts covered here – `SELECT`, `FROM`, `WHERE`, `ORDER BY`, `LIMIT`, `DISTINCT`, aggregation functions, `GROUP BY`, `HAVING`, and `JOIN` – form the core of querying relational databases. Experimenting with these commands using a sample database is the most effective way to solidify your understanding. Many online tools and local database installations are available for practice.

