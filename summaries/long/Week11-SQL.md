# Lecture 11: SQL Basics

## Introduction to Databases

*   Broad definition, database is an organized collection of information for easy storage, management, updating, and retrieval.
*   Illustrates the concept with non-software examples:
    *   Old-style physical card catalog: Organized for quick retrieval and updates (adding/removing/editing cards). Limited in data type but efficient for its purpose.
    *   Old-style phone book: Optimized for retrieval (alphabetical). Very difficult to modify (requires re-publishing).
    *   Toronto Archives building near the Casa Loma campus: A large, complex physical database for retrieval.
*   Transition to software databases, often called Database Management Systems (DBMS). 

## Types of Databases and the Landscape

*   Mention the diversity of database systems, referencing the Stack Overflow Developer Survey.
*   Highlight that most common databases, and the focus of this course, are **Relational Databases (RDBMS)**.
*   RDBMS use tables similar to Airtable.
*   Top databases from the survey: Postgres, MySQL, SQLite (all open source), Microsoft SQL Server, Oracle (commercial).
*   Relational databases often have "SQL" in their name, as SQL is the standard language for relational databases.
*   MariaDB is a fork/copy of MySQL, often considered more open source. Together, MySQL and MariaDB are very popular.
*   Note Oracle's historical significance in the corporate world, though its popularity has declined.

## History of Relational Databases and SQL

*   Key figure: **Edgar Codd** (worked at IBM around 1970).
    *   Published a foundational paper: "A Relational Model of Data for Large Shared Data Banks."
    *   Awarded the Turing Award in 1981 for his work on databases (equivalent to a Nobel for computer science).
*   Developments stemming from Codd's ideas:
    *   IBM System R (IBM research project).
    *   Berkeley Ingres (UC Berkeley research project).
    *   Many modern systems derive from Ingres, including Postgres (name derived from "post-Ingres") and Microsoft SQL Server (via Sybase).
*   Timeline:
    *   Started around the 1970s.
    *   Main players largely stabilized by 1995.
    *   The field is nearly 50 years old and well-established, relatively slow-moving. But there is a new wave of cloud RDBMSs
    *   SQL language was standardized in the 1980s.
*   Implications of the age and standardization:
    *   Lots of good, relevant learning material available online and in older books.
    *   ChatGPT is very good at SQL due to the vast amount of online data.
*   Another key figure: **Michael Stonebreaker** (part of the Berkeley Ingres team).
    *   Also won a Turing Award (2013). Mentioned his Turing lecture is available online.
*   Origins of MySQL and MariaDB:
    *   Founded by **Michael Widenius** (from Finland).
    *   Interestingly, named databases after his daughters (MariaDB after younger daughter Maria, MySQL after older daughter My).
    *   Explain the fork: MySQL was acquired by Sun Microsystems, then Sun was acquired by Oracle. A conflict arose regarding the open-source DB being controlled by the largest commercial DB, leading the original team to fork the project and create MariaDB. MariaDB is seen as the more open-source version, MySQL the more corporate, but they are very similar.

## How Applications Interact with Databases

*   Most common architecture: A web server (application logic) communicates with a separate database server (data storage).
*   Both the application (web server) and a developer/administrator can communicate with the database server.
*   The communication language is **SQL**.
*   Contrast this with tools like Airtable or Microsoft Access, which combine the database and the user interface. Most database servers are "faceless" and require separate systems to act as GUI.

## Why Learn SQL?

*   SQL is widely used, according to the Stack Overflow survey it's consistently in the top 3 languages alongside Javascript and HTML. Most developers don't write SQL full-time, it's one of the most popular *secondary* languages.
*   Regardless of development area (web, mobile, data analysis, etc.), interacting with a database is common, making SQL essential.
*   SQL is valuable even for non-developers (managers, analysts) who need to retrieve data independently.
*   The basics are easy to learn, and the core set of commands needed for everyday development is small.

## SQL Basics and Demonstration Setup

*   Introduces the demo environment: `sqliteonline.com`, using the SQLite database engine (lightweight, runs in the browser).
*   Explains the sample database structure: two tables, `assignments` and `courses`, similar to the Airtable demo.
*   Shows the table structure (columns like `assignment_id`, `course_id`, `title`, `due_date`, `status` in `assignments`; `course_id`, `course_name`, `semester`, `lab_time` in `courses`). Notes data types (text, integer).
*   Mentions the `CREATE TABLE` and `INSERT INTO` commands are used to build the database but won't be covered in detail (more for advanced courses). The focus is on `SELECT`.
*   Introduces the basic structure of a `SELECT` query:
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    [WHERE condition]
    [ORDER BY column]
    [LIMIT count];
    ```
*   Explains `SELECT *`: The wildcard `*` means "all columns".
    *   Example: `SELECT * FROM assignments;`

## SQL Demonstration - Querying Examples

*   Demonstrates basic `SELECT * FROM table;` to see all data.
*   Shows selecting specific columns: `SELECT due_date FROM assignments;`
*   Explains SQL is case-insensitive for keywords, but tradition is to capitalize keywords (`SELECT`, `FROM`, `WHERE`, etc.) for readability (old syntax highlighting).
*   Introduces the `WHERE` clause for filtering rows:
    *   Equality: `SELECT * FROM assignments WHERE course_id = 'COMP 1238';` (Notes single quotes for string literals).
    *   Not Equal: `WHERE course_id != 'COMP 1238';` (or `<>`).
    *   **Important Note:** Data values (like strings in the `status` column) *are* case-sensitive. `WHERE status = 'in progress'` (lowercase 'i') will not match 'In progress' (uppercase 'I').
*   Shows `DISTINCT` to get unique values: `SELECT DISTINCT course_id FROM assignments;`
*   Introduces **Aggregation Functions** (operate on a set of rows):
    *   `COUNT`: `SELECT COUNT(DISTINCT course_id) FROM assignments;` (Counts unique course IDs).
    *   `MIN`/`MAX`: `SELECT MIN(due_date) FROM assignments;`, `SELECT MAX(due_date) FROM assignments;` (Finds earliest/latest date).
    *   (Also mentions `AVG` from the video later).
*   Briefly introduces `GROUP BY` (used with aggregation, not just for display): `SELECT course_id, MIN(due_date) FROM assignments GROUP BY course_id;` (Finds the earliest assignment date *for each course*). Notes this is slightly more advanced.
*   Demonstrates `LIMIT` to restrict the number of returned rows: `SELECT * FROM courses LIMIT 5;` (Useful for large tables).
*   Shows `ORDER BY` for sorting results:
    *   Ascending (default): `ORDER BY due_date;`
    *   Descending: `ORDER BY due_date DESC;` (`DESC` is a common abbreviation).
    *   Sorting by multiple columns: `ORDER BY status, due_date;` (Sorts by status, then by due date within each status group).
*   Uses `DISTINCT` again to find unique statuses in the `assignments` table.
*   Introduces the `LIKE` keyword for pattern matching in strings:
    *   Uses the wildcard character `%` (represents any sequence of zero or more characters).
    *   Examples: `WHERE course_id LIKE 'COMP%';` (Starts with 'COMP'). `WHERE course_id LIKE '%1234';` (Ends with '1234'). `WHERE course_id LIKE '%2000%';` (Contains '2000').
    *   Mentions the wildcard `_` (underscore) for a single character (briefly shown in the video).
    *   Notes that `LIKE` is much simpler than Regex. It can be computationally expensive for the database.
*   Shows combining conditions in `WHERE` using `AND` and `OR`: `WHERE course_id LIKE 'COMP%' AND semester = '2024-3';`
*   Introduces the `IN` keyword as a shorthand for multiple `OR` equality checks: `WHERE course_id IN ('COMP 1238', 'COMP 1151');` (Equivalent to `WHERE course_id = 'COMP 1238' OR course_id = 'COMP 1151'`).
*   Demonstrates using `SELECT` as a calculator or with built-in functions, not just on tables:
    *   `SELECT 3 * 7;`
    *   `SELECT date();` (Returns current date).
    *   `SELECT CONCAT('string1', 'string2');` (Concatenates strings).
    *   Using functions on columns: `SELECT title, LENGTH(title) FROM assignments;` (Returns the length of the title string).
    *   Using functions in the `WHERE` clause: `WHERE LENGTH(title) < 17;`
*   Briefly introduces **JOINs** (core concept for relational databases):
    *   Purpose: Combine data from two or more related tables.
    *   Example: Joining `assignments` and `courses` on `course_id`.
    *   Syntax: `SELECT ... FROM assignments JOIN courses ON assignments.course_id = courses.course_id;`
    *   Shows selecting columns from specific tables using `table_name.column_name` (e.g., `assignments.star`, `courses.lab_time`).
    *   Mentions table aliases (`table_name AS alias`) for cleaner queries when joining (e.g., `SELECT a.*, c.lab_time FROM assignments AS a JOIN courses AS c ON a.course_id = c.course_id;`).
    *   Notes that JOINs can be complex at first but are fundamental. No JOINs in this week's lab.
*   Briefly mentions **HAVING** (from the video): Used to filter results *after* a `GROUP BY` aggregation, unlike `WHERE` which filters *before* aggregation.

## Resources

*   r/SQL Subreddit for questions and discussions.
*   YouTube tutorial series ("SQL in 15 Minutes").
*   Links to history videos (Edgar Codd, Michael Stonebreaker, Michael Widenius/MySQL).

## Lab Overview

*   Briefly describe the lab exercise: Using `sqliteonline.com` with the same database.
*   Tasks involve running pre-written queries to see how they work and then writing some basic `SELECT` queries based on requirements.
*   Encourage students to type the queries manually rather than just copying/pasting to aid learning.

## Conclusion
*   Feeling lost is normal; hands-on practice will make it feel simpler.