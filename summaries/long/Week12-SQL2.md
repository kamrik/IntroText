# Lecture 12: SQL - Managing Data and Structure

*   **Recap and Introduction:**
    *   We've spent significant time on data retrieval using `SELECT` queries, covering single records, multiple records, filtering, sorting, and grouping.
    *   Today, we move beyond just reading data to discuss how data is managed and how the database structure itself is defined.
    *   The main functions of a database include Retrieval (covered), Updating (new today), and Managing (starting today).

*   **Data Definition Language (DDL):**
    *   This is the part of SQL used for defining, modifying, and deleting database structures like tables.
    *   It's not a separate language, but a category of SQL statements.
    *   Common DDL commands:
        *   `CREATE TABLE`: Defines a new table structure.
        *   `ALTER TABLE`: Modifies an existing table (e.g., add/remove columns).
        *   `RENAME TABLE`: Changes a table's name.
        *   `DROP TABLE`: Deletes an entire table. Note this is a destructive operation; accidents can happen, so use with caution.

*   **`CREATE TABLE` Syntax and Constraints:**
    *   Example using the `assignments` table from our labs:
        ```sql
        CREATE TABLE assignments (
            Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            title TEXT NOT NULL,
            description TEXT NOT NULL,
            due_date TEXT NOT NULL,
            course_id TEXT NOT NULL
            -- FOREIGN KEY constraint added later
        );
        ```
    *   We list column names followed by their data types (e.g., `INTEGER`, `TEXT`).
    *   Constraints are added after the data type:
        *   `NOT NULL`: Ensures the column cannot be empty (though it can be an empty string for text).
        *   `PRIMARY KEY`: Designates this column as the primary key.
        *   `AUTOINCREMENT`: (Specific to some databases like SQLite) Automatically assigns a unique, incrementing integer value for new rows if not provided. We don't need to specify the `Id` when inserting.

*   **Primary Keys:**
    *   A primary key is a unique identifier for each record (row) in a table.
    *   Properties:
        *   Must be unique within the table.
        *   Cannot be NULL or empty.
        *   Ideally, it should never change, as other data might reference it. Updating a PK requires updating all references, which is complex.
    *   A table has at most one primary key, even if it's composed of multiple columns.
    *   **Composite/Compound Keys:** A primary key can consist of more than one column. Example: In an assignments table, the pair of `course_id` and `assignment_number_within_course` could uniquely identify an assignment. This is less common with modern auto-incrementing IDs but is good to be aware of. Keep composite keys as short as possible.

*   **Foreign Keys:**
    *   A foreign key is a primary key from *another* table that is stored in the current table to create a link or reference.
    *   Example: The `course_id` in the `assignments` table is a foreign key referencing the `course_id` (which is the primary key) in the `courses` table.
    *   Purpose: Foreign keys are often used as **integrity constraints** to help the database prevent invalid data.
    *   Syntax (added to `CREATE TABLE` or via `ALTER TABLE`):
        ```sql
        FOREIGN KEY (course_id) REFERENCES courses (course_id)
        ```
        This tells the database that values in the `assignments.course_id` column must exist as `course_id` values in the `courses` table. The database will reject `INSERT` or `UPDATE` operations that violate this.
    *   **Referential Actions (`ON DELETE CASCADE`):** We can specify what the database should do if a referenced record (e.g., a course) is deleted.
        ```sql
        FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE
        ```
        `ON DELETE CASCADE` means that if a row in the `courses` table is deleted, any rows in the `assignments` table that reference that course will also be automatically deleted. This prevents "orphaned" assignments pointing to non-existent courses. Other options exist (e.g., `ON DELETE RESTRICT` to prevent deletion if referenced, `ON DELETE SET NULL` to set the FK to NULL).

*   **Joining Tables (Revisited):**
    *   Purpose: Combine data from two or more related tables based on matching columns (often primary key/foreign key pairs).
    *   Syntax: `SELECT columns FROM table1 JOIN table2 ON table1.column = table2.column`.
    *   Example:
        ```sql
        SELECT a.*, c.lab_time
        FROM assignments a
        JOIN courses c ON a.course_id = c.course_id;
        ```
    *   **Aliases:** Using `AS` (or just the alias name) like `assignments a` and `courses c` makes queries shorter and more readable. Once an alias is defined, you must use it to refer to the table in the `SELECT` and `ON` clauses within that query.
    *   `a.*` selects all columns from the `assignments` table (aliased as `a`). `c.lab_time` selects only the `lab_time` column from the `courses` table (aliased as `c`).
    *   `*` by itself would select *all* columns from *all* joined tables, which can be verbose.

*   **Indexes:**
    *   Purpose: Data structures and logic used by the database to speed up data retrieval, especially searches and joins.
    *   Analogy: An index in a book, or a physical card catalog in a library.
    *   **Library Card Catalog Analogy (Schlagwortkatalog):** Explain the multi-level lookup. First, scan the drawer labels (e.g., "BAY - BEE"), open the drawer. Inside, scan the tab dividers (e.g., "Bibliothek..."). Then, scan the individual cards within a small range.
    *   Historical Detail: Mention the library catalog example shows uneven index density (e.g., many cards starting with "Biblio-" requiring narrower ranges), a problem analogous to data distribution in databases.
    *   Implementation: Database systems handle the creation and management of indexes, largely hidden from the user unless performance tuning is needed. Indexes are crucial for fast joins on large tables.

*   **CRUD Operations (Create, Read, Update, Delete):**
    *   This acronym represents the fundamental operations performed on *records* within a database table, describing the lifecycle of a data entry.
    *   Contrast with DDL, which operates on the *structure* of the database.
    *   **Create:** Adding new records. SQL command: `INSERT`.
        *   Syntax: `INSERT INTO table_name (column1, column2) VALUES (value1, value2), (value3, value4);`. Can insert multiple rows with a single statement.
        *   If column names are omitted, values must be provided for all columns in the table's defined order. Using column names is safer.
    *   **Read:** Retrieving records. SQL command: `SELECT` (our primary focus so far).
    *   **Update:** Modifying existing records. SQL command: `UPDATE`.
        *   Syntax: `UPDATE table_name SET column1 = new_value1, column2 = new_value2 WHERE condition;`.
        *   The `WHERE` clause specifies which rows to update. Omitting `WHERE` updates *all* rows (dangerous!).
    *   **Delete:** Removing existing records. SQL command: `DELETE`.
        *   Syntax: `DELETE FROM table_name WHERE condition;`.
        *   The `WHERE` clause specifies which rows to delete. Omitting `WHERE` deletes *all* rows (also dangerous!).
    *   Usage: While `SELECT` is frequently written manually, `INSERT`, `UPDATE`, and `DELETE` are often handled by application code or graphical user interfaces (GUIs) rather than being typed directly by a user.

*   **Application Context (Web Application Example):**
    *   Illustrate how CRUD operations fit into a typical web application architecture (Client -> Web Server -> Database).
    *   Example: Updating a course description via a web form.
        *   User edits data in the browser (Client).
        *   Clicks "Save". Browser sends data to the Web Server.
        *   Web Server receives data, performs validation (e.g., check data types, business logic).
        *   Web Server constructs and executes an `UPDATE` query on the Database.
        *   Database performs the update and sends confirmation back to the Web Server.
        *   Web Server confirms success to the Client (e.g., "Data saved" notification).
    *   This shows how application logic translates user actions into database operations.

*   **Transactions:**
    *   Analogy: A business transaction (e.g., buying something). Two things must happen: money moves one way, goods move the other. You want both to succeed or neither.
    *   Purpose: Group a set of database operations (inserts, updates, deletes) into a single logical unit of work.
    *   Goal: Ensure that either *all* operations within the transaction complete successfully, or if any fail, *none* of them are applied (the database is rolled back to its state before the transaction started).
    *   Example: Transferring money between bank accounts. This involves *two* steps: (1) Subtract from account A; (2) Add to account B. If step 1 succeeds but step 2 fails (e.g., network error), the money vanishes. A transaction ensures that if step 2 fails, step 1 is automatically undone (rolled back).

*   **ACID Principles:**
    *   A set of properties guaranteeing reliable transaction processing, especially in relational databases. This is a key distinguishing feature of relational databases compared to some other database types (like many NoSQL databases).
    *   **A - Atomicity:** The "all or nothing" property. A transaction is treated as an indivisible unit. Either all operations within it complete, or none do. This is the most commonly desired property. (Word "atom" comes from ancient Greek philosophy about indivisible particles).
    *   **C - Consistency:** A transaction takes the database from one valid state to another valid state. It ensures that database constraints (like foreign keys) are maintained. What constitutes a "consistent state" is often application-defined.
    *   **I - Isolation:** Concurrent transactions do not interfere with each other. Each transaction appears to run as if it were the only one operating on the database, even if many are running simultaneously.
        *   Isolation Example: Alice and Bob both try to send $100 to Charlie's account, which starts at $0. If they both read Charlie's balance ($0) at the same time and then both try to update it to $100, Charlie ends up with $100 instead of $200. Isolation prevents this (e.g., by locking Charlie's account while the first transaction updates it).
        *   Complexity: Achieving true isolation while allowing concurrency is complex and often involves locking mechanisms. This can be a performance bottleneck. Databases offer different isolation levels with varying trade-offs between consistency guarantees and performance.
    *   **D - Durability:** Once a transaction is successfully completed (committed), its changes are permanent and will survive subsequent system failures (e.g., power loss, crash). This usually means the changes have been written to persistent storage (disk).
    *   ACID vs. NoSQL: Relational databases prioritize ACID compliance, providing strong data integrity guarantees. Some NoSQL databases relax ACID properties (especially Isolation and Consistency) to achieve higher performance or scalability, but this shifts the responsibility for maintaining data consistency to the application developer, which can be challenging. ACID compliance represents decades of engineering work solving difficult problems. Knowing the ACID acronym and its meaning is valuable, especially in job interviews.

*   **Relationships Between Tables (Cardinality Terminology):**
    *   Entities: Tables often represent real-world concepts or objects called entities (e.g., Course, Assignment, Order, Product).
    *   Relationships describe how entities relate to each other.
    *   **One-to-Many / Many-to-One:** The most common type. Example: One Course has Many Assignments; Many Assignments belong to One Course. Represented by a foreign key in the "many" table pointing to the "one" table's primary key.
    *   **One-to-One:** Less common. A record in one table relates to exactly one record in another. Sometimes used to split a very wide table or handle optional attributes.
    *   **Many-to-Many:** More complex. Example: One Order can contain Many Products; One Product can be in Many Orders. Cannot be represented by a single foreign key in either table.
    *   **Resolving Many-to-Many:** This requires an intermediary table, often called a **Junction Table** or **Bridge Table**.
        *   Example: For Orders and Products, create an `Order_Items` table.
        *   Structure of the Bridge Table (`Order_Items`): It contains foreign keys referencing *both* the `Orders` table (`order_id`) and the `Products` table (`product_id`).
        *   These two foreign keys often form a composite primary key for the bridge table, uniquely identifying each specific instance of a product within an order.
        *   The bridge table can also hold attributes specific to the relationship, like `quantity` or `comments` for that particular item in that order.
        *   This converts the many-to-many relationship into two one-to-many relationships (One Order to Many Order Items, One Product to Many Order Items).
        *   This concept can initially seem counter-intuitive but is standard practice in relational database design. This might be covered more deeply in a dedicated database course.

*   **Entity Relationship Diagrams (ERDs):**
    *   Purpose: Visual tools used to model and document the structure of a database, showing entities, their attributes, and the relationships between them.
    *   Helpful for planning a database or understanding an existing one.
    *   **Video 1 Summary (Basic ERDs):**
        *   Introduced Entities (rectangles/tables), Attributes (ovals/columns), Relationships (lines).
        *   Introduced **Cardinality Notation** (often Crow's Foot notation is used) on the relationship lines to show the minimum and maximum number of instances of one entity that can relate to an instance of another (e.g., 0 or many, 1 and only 1).
        *   Examples: Customer (0..*) Orders, Order (1..1) Customer; Order (1..*) Products, Product (0..*) Orders.
    *   **Video 2 Summary (Advanced ERDs):**
        *   Showed how to denote **Primary Keys (PK)** and **Foreign Keys (FK)** within the entity boxes.
        *   Illustrated how relationship lines often connect PKs to FKs.
        *   Discussed **Composite Primary Keys** (multiple attributes marked as PK).
        *   Showed how a **Bridge Table** is used to resolve a many-to-many relationship visually in an ERD.
        *   Briefly touched on adding **Data Types** to attributes in the diagram (e.g., INTEGER, VARCHAR(limit)).
        *   Mentioned that some ERD tools (like Lucidchart shown) can generate `CREATE TABLE` SQL from the diagram or create diagrams by importing existing database schemas.
    *   Real-world Use: ERDs are valuable for communication and design, particularly for core entities. A balance is needed; diagramming every single table might be overkill, but key entities are very helpful for new team members understanding the project.
    *   Tooling: Various tools exist for creating ERDs (dedicated diagramming tools, database-specific tools like MySQL Workbench, universal tools like DBeaver). Finding a tool you are comfortable with is recommended. Dedicated tools often produce nicer diagrams than database management tools.

*   **Learning Resources:**
    *   W3C SQL Exercises (basic practice).
    *   YouTube playlists and videos offering introductions to SQL and databases (some more dramatic, some more in-depth covering installation, indices, etc.).
    *   Reddit's r/SQL community is a good resource for questions and discussions.
    *   Links to specific recommended videos were provided in the slides for further exploration of advanced topics or alternative introductions.
