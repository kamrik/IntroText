# Chapter 12: Continuing with SQL - Structure, Manipulation, Relationships, and Integrity

Welcome back. In the previous sessions, we focused heavily on retrieving data using `SELECT` statements. Today, we will expand our understanding of SQL and databases by looking at how we define and modify the database structure, manipulate the data within it, understand relationships between different pieces of data, and ensure the integrity of our information.

We previously discussed the main functions of databases: retrieval, updating, and managing data. While retrieval (`SELECT`) is fundamental and something we've practiced, we haven't yet explored how to update data or manage the database structure itself.

## Data Definition Language (DDL)

The part of SQL that deals with creating, modifying, and deleting database objects like tables is called **Data Definition Language (DDL)**. It's not a separate language, but a specific category of SQL statements.

The core DDL statements for tables are:

*   `CREATE TABLE`: To define a new table structure.
*   `ALTER TABLE`: To modify an existing table structure (add/drop columns, change constraints).
*   `RENAME TABLE`: To change the name of a table.
*   `DROP TABLE`: To completely delete a table and all its data.

`DROP TABLE` is considered a very destructive operation. It's like deleting a file – once it's gone, it's gone, potentially taking millions of records with it. Databases usually warn you, but caution is advised.

### Creating Tables with `CREATE TABLE`

The `CREATE TABLE` statement defines the columns of a table and their properties. Here's an example based on our `assignments` table:

```sql
CREATE TABLE assignments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_id TEXT NOT NULL,
    title TEXT NOT NULL,
    due_date TEXT,
    description TEXT
);
```

In this statement:

*   `CREATE TABLE assignments (...)` starts the definition for a table named `assignments`.
*   Inside the parentheses, we list the columns.
*   For each column (`id`, `course_id`, `title`, etc.), we specify its name and then its **data type** (`INTEGER`, `TEXT`). Data types tell the database what kind of information can be stored in that column.
*   We can add **constraints** after the data type. `NOT NULL` means the column cannot be empty (`NULL`). An empty string (`''`) is different from `NULL`.
*   `PRIMARY KEY` designates the column(s) that uniquely identify each record.
*   `AUTOINCREMENT` (or `AUTO_INCREMENT` depending on the database system) tells the database to automatically assign a unique, sequential integer value to this column whenever a new row is inserted, so we don't have to provide one.

### Primary Keys

A **Primary Key (PK)** is a column or a set of columns that uniquely identifies each row (record) in a table.

*   **Uniqueness:** Every value in the primary key column(s) must be unique within the table. If you try to insert a row with a primary key value that already exists, the database will reject it with a "duplicate primary key" error.
*   **Not Null:** Primary keys usually cannot be `NULL` or empty, as they are meant to identify records.
*   **Immutability:** Ideally, a primary key value should never change. If it changes, any other tables that refer to this record (via a Foreign Key) would also need to be updated, which is complex and error-prone. Simple, auto-generated numbers (`AUTOINCREMENT`) are often used precisely because they have no external meaning and never need to change.

While a primary key is typically a single column (like our `id`), it can technically be composed of multiple columns. This is called a **composite** or **compound key**. For example, in the `assignments` table, instead of a single `id`, we *could* have used the combination of `course_id` and `assignment_number_within_course` as the primary key, assuming that combination is unique for each assignment. This is less common in modern database design but good to be aware of.

### Foreign Keys

A **Foreign Key (FK)** is a column or set of columns in one table that refers to the **Primary Key** in another table. It establishes a link between records in the two tables.

For instance, in our `assignments` table, the `course_id` column is a foreign key because it refers to the `course_id` (which is the primary key) in the `courses` table. It tells us which course each assignment belongs to.

We can define foreign keys as **integrity constraints** when creating the table:

```sql
CREATE TABLE assignments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_id TEXT NOT NULL,
    title TEXT NOT NULL,
    due_date TEXT,
    description TEXT,
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
        ON DELETE CASCADE
);
```

Here:

*   `FOREIGN KEY (course_id)` specifies that the `course_id` column in *this* table (`assignments`) is a foreign key.
*   `REFERENCES courses (course_id)` indicates that this foreign key refers to the `course_id` column in the `courses` table.

This constraint helps maintain data integrity:

1.  **Prevents Invalid References:** If you try to insert an assignment with a `course_id` that doesn't exist in the `courses` table, the database will reject the insertion, preventing "orphan" assignments that point to non-existent courses.
2.  **Manages Deletions:** The `ON DELETE CASCADE` clause specifies what should happen if a row in the *referenced* table (`courses`) is deleted. `CASCADE` means that if a course is deleted, all assignments referencing that course will also be automatically deleted. Other options exist, like `RESTRICT` (prevent the course deletion if assignments exist) or `SET NULL` (set the foreign key column to `NULL`). This helps prevent assignments from pointing to deleted courses.

A table can have at most one primary key (even if it's composite), but it can have many foreign keys, referencing primary keys in different tables.

## Querying Related Data: Joins

Foreign keys define relationships, but how do we retrieve data that combines information from related tables? This is done using the **`JOIN`** keyword.

We've seen this briefly, but let's look at a proper example combining assignments and courses:

```sql
SELECT
    a.*,
    c.lab_time
FROM
    assignments AS a
JOIN
    courses AS c ON a.course_id = c.course_id;
```

*   `FROM assignments AS a`: We start with the `assignments` table and give it a short alias `a` for convenience.
*   `JOIN courses AS c`: We specify that we want to join it with the `courses` table, aliased as `c`.
*   `ON a.course_id = c.course_id`: This is the crucial part – the join condition. It tells the database *how* to link rows from the two tables. We link rows where the `course_id` in the `assignments` table (`a.course_id`) matches the `course_id` (the primary key) in the `courses` table (`c.course_id`).
*   `SELECT a.*, c.lab_time`: In the `SELECT` list, `a.*` means "select all columns from the table aliased as `a` (assignments)". `c.lab_time` selects only the `lab_time` column from the table aliased as `c` (courses). This combines the data into a single result set.

When you define an alias (`AS a`, `AS c`), you must use that alias to refer to the table or its columns within that query.

Executing this query would show all assignment details alongside the lab time of the course they belong to.

## Optimizing Data Retrieval: Indexing

When querying large tables, especially when performing joins or searching for specific records using `WHERE` clauses on columns that are not the primary key, scanning the entire table every time can be very slow. To speed this up, databases use **indexes**.

An index is a data structure that allows the database to find rows quickly based on the values in one or more columns, much like an index in a book or a physical card catalog in a library.

Consider a library's card catalog (a historical example of database indexing):

*   You don't search for a book by scanning every card in every drawer.
*   Instead, you look at the labels on the drawers (the top level of the index). These labels indicate the range of keywords or authors within each drawer (e.g., A-C, D-F).
*   You quickly find the correct drawer, open it, and then look at the tabs inside (a second level of indexing) that further subdivide the cards (e.g., Smith, J. - Smith, L.).
*   Finally, within a smaller section, you scan the individual cards to find the specific one you need.

This multi-level lookup is much faster than a linear scan.

Historically, library catalogs like the *Schlagwortkatalog* (keyword catalog) in the example shown would have drawers labeled with ranges of keywords. The density of these ranges could be uneven; drawers for common prefixes like "Biblio-" (from Greek *biblion*, book) might cover very narrow ranges because there were many cards starting with those letters, reflecting the library's focus on books about books. This illustrates a real-world example of how index structures adapt to the data distribution.

Database indexes work on similar principles, using sophisticated data structures (like B-trees) to quickly locate data rows based on column values. While the underlying implementation is complex, database systems abstract this away, allowing developers to create indexes on columns to improve query performance without needing to manage the index structure manually. Primary keys are automatically indexed by the database to ensure fast lookups and joins.

## Data Manipulation Language (DML) and CRUD

Beyond defining the structure (DDL) and retrieving data (`SELECT`), we need to modify the data itself. This falls under **Data Manipulation Language (DML)**.

A common acronym used, especially in web development, is **CRUD**, which stands for:

*   **C**reate: Adding new records.
*   **R**ead: Retrieving records (using `SELECT`).
*   **U**pdate: Modifying existing records.
*   **D**elete: Removing records.

This represents the typical lifecycle of a data record in an application.

We are already familiar with **Read** (`SELECT`). Let's look at the others:

### Create: `INSERT`

Adding new records to a table is done using the `INSERT` statement.

```sql
INSERT INTO courses (course_id, course_name, semester, lab_time)
VALUES
('COMP1238', 'Intro to Dev Tools', 'Fall 2024', 'Tuesday 13:00'),
('MATH1000', 'Calculus I', 'Fall 2024', 'Monday 10:00');
```

*   `INSERT INTO courses`: Specifies the table to insert into.
*   `(course_id, course_name, semester, lab_time)`: Lists the columns you are providing values for. This is optional, but highly recommended. If omitted, you must provide values for *all* columns in the table, in their defined order.
*   `VALUES`: Keyword preceding the values.
*   `('COMP1238', ...), ('MATH1000', ...)`: A list of value sets, enclosed in parentheses and separated by commas. Each set of parentheses represents one row to be inserted, with values corresponding to the columns listed after `INSERT INTO`.

### Update: `UPDATE`

Modifying existing records is done using the `UPDATE` statement.

```sql
UPDATE users
SET first_name = 'Robert', last_name = 'Smith'
WHERE user_id = 123;
```

*   `UPDATE users`: Specifies the table to update.
*   `SET first_name = 'Robert', last_name = 'Smith'`: Lists the columns to change and their new values. You can set multiple columns, separated by commas.
*   `WHERE user_id = 123`: The condition specifying which rows to update. **Crucially**, if you omit the `WHERE` clause, the `UPDATE` will apply to *all* rows in the table!

You can update multiple records at once by specifying a `WHERE` condition that matches more than one row (e.g., `WHERE department = 'Marketing' SET department = 'Digital Marketing'`).

### Delete: `DELETE`

Removing records from a table is done using the `DELETE` statement.

```sql
DELETE FROM assignments
WHERE course_id = 'COMP1238';
```

*   `DELETE FROM assignments`: Specifies the table to delete from.
*   `WHERE course_id = 'COMP1238'`: The condition specifying which rows to delete. **Again, be very careful:** omitting the `WHERE` clause will delete *all* rows from the table!

You can delete a single record (e.g., `WHERE assignment_id = 456`) or many records based on the `WHERE` condition.

While `SELECT` is the most common query you might write manually, `INSERT`, `UPDATE`, and `DELETE` are often performed through application code or graphical database tools, though knowing their SQL syntax is essential.

## Databases in Application Context

In a typical web application, the database is a backend component.

1.  A **Client** (like a web browser) interacts with a **Web Server**.
2.  The Web Server contains the application logic.
3.  The Web Server communicates with the **Database** to store and retrieve data.

For example, when you edit a course description on a website and click "Save":

1.  Your browser sends the updated course data to the web server.
2.  The web server might perform validation (e.g., check if the data is in the correct format).
3.  The web server sends an `UPDATE` query to the database to modify the course record.
4.  The database executes the query and confirms success or failure to the web server.
5.  The web server confirms the result back to the browser (e.g., showing a "Saved successfully" message).

This interaction involves the server translating user actions into SQL DML statements (`SELECT`, `INSERT`, `UPDATE`, `DELETE`) executed against the database.

## Ensuring Data Integrity: Transactions and ACID

Databases provide mechanisms to ensure data integrity, especially when multiple operations need to happen together or when multiple users are interacting with the data simultaneously. This is achieved through **Transactions** and the **ACID** properties.

A **Transaction** is a sequence of one or more database operations (SQL statements) treated as a single, indivisible unit of work. The key idea is that either *all* operations within the transaction complete successfully, or *none* of them do. If any part fails, the entire transaction is rolled back to the state before it started.

Think of a business transaction: exchanging money for goods. You want both parts to happen, or neither. If the payment fails, the goods aren't handed over.

This "all or nothing" property is the core of **Atomicity**, the 'A' in **ACID**.

**ACID** is an acronym representing four key properties that guarantee data reliability in relational databases:

1.  **Atomicity:** As just described, a transaction is an atomic unit. It either commits (all changes are made permanent) or aborts (all changes are undone). There are no partial results.
2.  **Consistency:** A transaction brings the database from one valid state to another valid state. Consistency rules (defined by constraints like Foreign Keys, or application logic) are enforced. The database prevents transactions that would violate these rules.
3.  **Isolation:** Transactions execute as if they were the *only* operation running on the database, even if many are happening concurrently. The intermediate state of one transaction is not visible to other transactions until it is committed.
4.  **Durability:** Once a transaction is committed, its changes are permanent and survive subsequent system failures (like power outages or crashes). The committed data is typically written to persistent storage (disk).

**Isolation** is often the most complex property. Consider two users trying to update the same data simultaneously.

*   **Problem Example:** Alice and Bob both want to send $100 to Charlie, who starts with $0.
*   **Scenario without Isolation:**
    1.  Alice reads Charlie's balance: $0.
    2.  Bob reads Charlie's balance: $0.
    3.  Alice calculates new balance: $0 + $100 = $100.
    4.  Bob calculates new balance: $0 + $100 = $100.
    5.  Alice updates Charlie's balance to $100.
    6.  Bob updates Charlie's balance to $100.
*   **Result:** Charlie ends up with $100 instead of the correct $200.

Isolation prevents this by ensuring that concurrent transactions don't interfere. This might involve locking data that is being read or modified by one transaction, preventing others from accessing it until the transaction is complete. While essential for correctness, isolation can impact performance, as it might force transactions to wait for each other.

Relational databases are built with ACID compliance, providing strong guarantees about data integrity. This is a major distinguishing feature compared to some other database types (often called NoSQL databases) which might relax some ACID properties (especially Isolation and Consistency) to gain performance or scalability benefits. However, relaxing these guarantees means the application developer takes on the complex responsibility of managing data consistency and concurrency issues, which is often difficult and error-prone. For most applications, the ACID guarantees of relational databases are highly valuable.

Knowing the ACID acronym and being able to briefly explain each property is a good indicator of understanding database fundamentals.

## Modeling Relationships Between Entities

In database design, we often think about the real-world "things" we are storing information about as **Entities** (like a Course, an Assignment, a Student, a Teacher). These entities relate to each other. We've seen how Foreign Keys represent relationships. Database designers categorize relationships based on how many instances of one entity can relate to how many instances of another:

*   **One-to-One (1:1):** Each instance of Entity A relates to at most one instance of Entity B, and vice versa. This is less common and sometimes indicates that two tables could potentially be combined, or that a large table was split for organizational reasons.
*   **One-to-Many (1:N) or Many-to-One (N:1):** Each instance of Entity A can relate to many instances of Entity B, but each instance of Entity B relates to at most one instance of Entity A. Our Course-Assignment relationship is a classic example: one Course can have many Assignments, but each Assignment belongs to only one Course. The Foreign Key is typically placed in the "many" side of the relationship (the `assignments` table has `course_id` referencing `courses`).
*   **Many-to-Many (N:N):** Each instance of Entity A can relate to many instances of Entity B, and each instance of Entity B can relate to many instances of Entity A. A common example is the relationship between **Orders** and **Products** in an online store:
    *   An Order can contain many Products.
    *   A Product can be included in many Orders.

### Representing Many-to-Many Relationships

Relational databases cannot directly implement a Many-to-Many relationship with just simple Foreign Keys between the two main tables. How would you put multiple `product_id`s in an `orders` table row? Or multiple `order_id`s in a `products` table row?

The standard solution is to introduce a third table, often called a **Junction Table**, **Bridge Table**, or **Associative Table**. This table exists solely to represent the Many-to-Many relationship.

For the Order-Product example, we'd create an `order_items` table:

```sql
-- Conceptual structure
CREATE TABLE order_items (
    -- Primary key for this table (optional, but good practice)
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Foreign key referencing the Orders table
    order_id INTEGER NOT NULL,

    -- Foreign key referencing the Products table
    product_id INTEGER NOT NULL,

    -- Attributes specific to the relationship (like quantity)
    quantity INTEGER NOT NULL,
    comments TEXT,

    -- Define foreign key constraints
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)

    -- Often, the combination of order_id and product_id forms a composite unique key
    -- This ensures a specific product appears only once per order item row
    -- UNIQUE (order_id, product_id)
);
```

Each row in `order_items` represents one specific product within one specific order. It contains foreign keys `order_id` and `product_id` linking back to the `orders` and `products` tables, respectively. It can also hold attributes unique to *this specific instance* of the relationship, like the `quantity` of the product in that order item, or any `comments`.

This effectively breaks the Many-to-Many relationship between `orders` and `products` into two One-to-Many relationships:

*   One Order can have many Order Items (1:N).
*   One Product can be included in many Order Items (1:N).

While it might seem counter-intuitive at first to add an extra table, this is the standard and robust way to model Many-to-Many relationships in relational databases.

## Visualizing Database Structure: Entity Relationship Diagrams (ERDs)

To help understand and design database structures, especially the relationships between entities, database professionals use **Entity Relationship Diagrams (ERDs)**.

An ERD is a visual representation of the entities in a database and how they relate to each other. Key components typically shown are:

*   **Entities:** Represented as boxes (often corresponding to tables).
*   **Attributes:** Listed within the entity boxes (corresponding to columns). Primary Keys (PK) and Foreign Keys (FK) are usually marked.
*   **Relationships:** Represented by lines connecting entities.

Relationships are often annotated with **Cardinality**, which specifies the minimum and maximum number of instances of one entity that can be associated with an instance of the related entity. Common notations use symbols (like "crow's foot") on the relationship lines to indicate:

*   Zero (0)
*   One (1)
*   Many (N or *)

For example, a line connecting `Customer` and `Order` might show:
*   On the `Customer` side: `|o` (one and only one customer per order)
*   On the `Order` side: `o<` (zero or many orders per customer)

An ERD visually shows how Primary Keys in one table are linked as Foreign Keys in another. It also clearly depicts the Many-to-Many relationship being resolved by a **Bridge Table**, showing the bridge table connected to the two main entities via One-to-Many relationships.

ERDs can also show data types for attributes (e.g., `INTEGER`, `VARCHAR(limit)`).

ERDs are valuable tools for:
*   Designing a new database structure.
*   Documenting an existing database structure.
*   Helping new team members understand the data model.

Tools exist (like Lucidchart, MySQL Workbench, PgAdmin, DBeaver) that can help create ERDs, sometimes even generating `CREATE TABLE` SQL code from a diagram or creating a diagram by inspecting an existing database.

## Learning Resources and Tools

Learning SQL and databases is most effective when done in context. Trying to learn SQL syntax in isolation can be dry. Instead, try applying it to a project:

*   **Data Analysis:** Find an interesting dataset (often available as CSV files), import it into a simple database (like SQLite), and use SQL to query, filter, aggregate, and analyze the data.
*   **Web Development:** Build a simple web application that needs to store and retrieve data (e.g., a blog, a to-do list, a simple store catalog). Use a web framework that interacts with a database (most popular ones do) and learn how the application code uses SQL (or an Object-Relational Mapper - ORM - which translates code objects into SQL) to perform CRUD operations.

Online resources like W3C exercises, YouTube tutorials (many good introductory playlists exist), and communities like the SQL subreddit can be helpful for practice and specific questions.

Regarding tools for working with databases:
*   **Database-specific tools:** MySQL Workbench (for MySQL), PgAdmin (for PostgreSQL). These are often powerful editors tailored to a specific database system.
*   **Universal tools:** DBeaver is a popular choice that works with many different database systems.
*   **Diagramming tools:** Lucidchart (as seen in the video) and others can help create ERDs.

Having a database editor or diagramming tool in your toolkit can be very useful.

## Practical SQL Tip: The Semicolon

A common source of error, especially when running multiple SQL queries together in a tool or script, is a missing semicolon.

The semicolon (`;`) is used to terminate a SQL statement. If you have multiple statements in a single input block and miss a semicolon, the database parser might try to interpret the start of the next statement as a continuation of the previous one, leading to a syntax error.

```sql
-- Query 1
SELECT * FROM assignments -- Missing semicolon here!
SELECT * FROM courses; -- Database sees "FROM assignments SELECT * FROM courses"

-- Corrected
SELECT * FROM assignments; -- Semicolon added
SELECT * FROM courses; -- This is now a separate, valid statement
```

Always ensure your SQL statements are properly terminated, especially when running scripts or multiple commands at once.

This concludes our introduction to basic database concepts beyond simple retrieval, covering structure definition, data manipulation, relationships, integrity, and visualization.

