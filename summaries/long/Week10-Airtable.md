## Lecture 10: Spreadsheets and Airtable

*   **Introduction:**
    *   Start the lecture by stating the topic: tables and spreadsheets of all kinds.
    *   Explain the progression: Start with spreadsheets, gradually shift towards real databases.
    *   Introduce the concept of relational data and why it's called "relational" (due to relations between tables).
    *   Mention using Airtable as a tool to demonstrate relational concepts, noting it's simple and visual.
    *   Briefly connect back to previous topics: Structured data (like JSON) and how tables provide a good visual representation for externally imposed data structures (schema, data model). Spreadsheets are intuitive examples of structured data.

*   **History of Tables:**
    *   Tables have a long history. Show the ancient clay tablet (almost 4000 years old). Note it's full of numbers, relates to the Pythagorean theorem, and predates Pythagoras by almost 2000 years.
    *   Show a more modern example: A ship log from 1963. Describe the context (sailboat voyage from Australia to the Pacific). Explain how it's a highly structured table recording hourly data. Note it's a common example of early tables.
    *   Mention accounting ledgers as probably the most common historical example of tables. Explain "ledger" (a book kept in one place) and how tables are essential for recording money in/out transactions.

*   **Spreadsheet Etymology:**
    *   Explain why they are called "spreadsheets".
    *   Root word: "spread".
    *   Publishing context: A "spread" in newspapers meant the full open width, often used for large advertisements.
    *   Accounting context: "Worksheets" were loose sheets for intermediate calculations or reports. Large worksheets were often called "spreadsheets".
    *   Cite the earliest mention found: 1907 scientific journal, referring to a "spreadsheet showing every item of expenditure" (a monthly hospital report).

*   **History of Computer Spreadsheets:**
    *   Popularization: Started in the late 1970s/early 1980s.
    *   **Visicalc:** Not the absolute first, but the first *really popular* spreadsheet program.
        *   Context: Personal computers (like Apple II) were emerging but lacked killer apps.
        *   Impact: Visicalc made PCs useful for business by allowing simple calculations, payroll, inventory management. This automation was cheaper and less error-prone than manual methods. It was a significant driver for the personal computer industry.
    *   **Lotus 1-2-3:** Became dominant for a short period after Visicalc. Was a primary use case for early PCs.
    *   **Microsoft Excel:** Replaced Lotus 1-2-3. Became the major player and is still widely used. Note that the name "Excel" is often used generically for any spreadsheet software (e.g., people might say "Excel" but mean Google Sheets).
    *   **Google Sheets:** Appeared much later (2006). Key innovation: Cloud-native, browser-based, immediately collaborative.
    *   Current landscape: Excel and Google Sheets are the main competitors, splitting the market. Basic functionality is often similar, leading users to not strongly prefer one over the other for simple tasks.
    *   Mention other spreadsheet software briefly if prompted (Numbers by Apple, LibreOffice/OpenOffice, Airtable).
    *   Note personal use cases (e.g., lists, calculations, basic data analysis for work/teaching).

*   **Basic Spreadsheet Functionality:**
    *   **Storage:** The most basic function. Store data in a grid format. Easier to modify, insert rows/columns than paper. Easy to share (email file or link). Less prone to physical loss than paper, but digital backups are crucial.
    *   **Operations:** Once data is digital, operations become easy.
        *   Sorting: Example: Sorting exam questions by difficulty percentage.
        *   Filtering: Example: Filtering a student list by lecture day.
        *   Note that these seem trivial now but weren't always.
    *   **More Sophisticated Uses:**
        *   Complex calculations, visualizations (plotting/graphing).
        *   Modeling: Budgeting (e.g., wedding), business plans, financial predictions under assumptions. Can become very complex and error-prone ("dark corners of Excel").
    *   **Low-code/No-code:** Introduce the concept. Excel is arguably one of the first and most successful examples, even if not always labeled that way now.
    *   Personal anecdote: Using spreadsheets extensively for lab analysis in physics studies (recording measurements, plotting, calculations for reports).
    *   *Optional:* Briefly mention Pivot Tables as a powerful feature for some use cases, encouraging students to learn about them independently (e.g., via YouTube), noting they can seem intimidating to some.

*   **Calculations Terminology:**
    *   Introduce a way to categorize spreadsheet calculations: Scalar vs. Aggregate. (Note this isn't a strict, formal division).
    *   **Scalar:** Operations on a single data item or record.
        *   Relate to Json scalar types (string, number, boolean, null).
        *   Example: Calculating the total cost for a single line item in an order (Quantity * Unit Cost). Works on one row at a time.
    *   **Aggregate:** Operations that combine or summarize data from a collection (e.g., a whole column or range).
        *   Example: Computing the grand total of a column (summing up all line item costs).
    *   Examples of Aggregate Functions: Sum, Average, Count (for non-numeric data too), Minimum, Maximum, Median (briefly mention it's different from average and important sometimes), Concatenation (combining strings from multiple cells/rows).

*   **Side Story: Gene Naming Errors in Spreadsheets:**
    *   Tell the story about human gene names. They often have letter-number structures (e.g., HSPA5).
    *   Problem: Some names look like dates (e.g., MAR1 looks like March 1st, DEC1 looks like Dec 1st).
    *   Spreadsheet auto-conversion issue: Default settings often automatically convert these gene names into date format (or sometimes floating-point numbers).
    *   Consequence: Data mangling in biological/bioinformatics data sets, leading to errors in processing and scientific publications.
    *   Timeline:
        *   2004: Article highlights the problem and simple solution (prefixing with `'` single quote to force text format).
        *   2016: Article shows the problem persists, specifically mentioning Excel's default settings. Awareness is growing but not universal.
        *   2020: Article "Gene name errors: lessons not learned" indicates the problem is still widespread. The scientific community decides it's easier to *rename the genes* than to get everyone to use the correct spreadsheet settings. This is a significant effort (maintaining old/new names, updating literature).
        *   2023: Microsoft adds an *opt-in* toggle in Excel (Windows/macOS) to disable automatic data conversion.
    *   Lesson: Highlights the significant influence of spreadsheets on various fields and how persistent even seemingly simple problems can be. Reinforces that spreadsheets are not going away, even for people using programming languages like Python.

*   **Introduction to Airtable:**
    *   Introduce Airtable as a hybrid tool, combining aspects of spreadsheets and databases.
    *   Note its visual similarity to spreadsheets upon opening.
    *   Explain it's a browser-based application (cloud-native).
    *   Mention the upcoming lab will use Airtable (students need to create a free account).
    *   Motivation for using Airtable in the course:
        *   Provides a gentle and visual introduction to relational databases.
        *   Demonstrates relationships between tables. (Need at least two tables for relationships).
        *   It's a popular tool (10 years old, growing, used by large companies). Knowing it is a useful skill.
        *   Mention potential careers (Airtable advisors).
    *   Recommend watching the linked videos (comparison video, longer tutorial demo) for further understanding, especially if the in-lecture demo is confusing.

*   **Airtable Demo: Building a Simple Shop Database:**
    *   State the goal: Create a system for a shop selling items like pencils, erasers.
    *   Identify the necessary tables: `Products`, `Clients`, `Orders`.
    *   Visualize the relationships: An `Order` is made *by* a `Client` and contains `Product`s.
    *   Go to Airtable interface (after logging in).
    *   Explain Workspaces (folders for databases, called "bases" in Airtable). Create a new empty base.
    *   Note the default table (`Table 1`) and fields, and the option to import data (Excel, CSV, JSON).
    *   Explain the process of creating new tables and deleting default fields.
    *   **Create `Clients` Table:**
        *   Name the table "Clients". Note how Airtable suggests naming records "client".
        *   Delete unnecessary default fields (Status, Assignee). Keep Notes (Long text).
        *   Add fields: `First Name` (Single line text), `Last Name` (Single line text).
        *   Add `Email` field: Use the specific "Email" data type. Note its icon and functionality (clickable).
        *   Discuss the Primary Field (first column): It's special, intended to identify the record. Doesn't strictly enforce uniqueness by default, but users often want it to be unique or descriptive.
        *   Modify the default primary field: Rename it to `Long Name`. Change its type to "Formula".
        *   Input the formula for `Long Name`: ` {First Name} & " " & {Last Name} & " <" & {Email} & ">" `. Explain referencing fields with `{}` and string concatenation with `&`. Explain the format's utility for email clients. Add a space between first and last name if initially missed in the demo.
        *   Enter sample client data (Alice Jones, Bob Fetcher, two John Smiths). Emphasize why unique names are helpful for identification later.
        *   Show the Card View (diagonal arrows) as an alternative way to view/edit a single record.
    *   **Create `Products` Table:**
        *   Name the table "Products".
        *   Primary Field: `Product ID`. Set data type to "Number", format as "Integer" (0 decimal places). Enter sample IDs (101, 102, 103).
        *   Delete unnecessary default fields. Keep Notes.
        *   Add fields: `Name` (Single line text), `Price` (Currency data type).
        *   Enter sample product data (Pencil, Eraser, Ruler) with names and prices.
    *   **Create `Orders` Table:**
        *   Name the table "Orders".
        *   Primary Field: `Order ID`. Set data type to "Number", format as "Integer".
        *   Delete unnecessary default fields (Assignee). Keep `Status` (Single select - note it's a pre-defined list, can be customized/colored). Keep Notes.
        *   Add `Quantity` field: Data type "Number", format as "Integer" (assuming whole items are sold).
        *   **Add the `Client` field:** This is where relationships come in.
            *   Set data type to "Link to another record".
            *   Choose the table to link to: `Clients`.
            *   Crucially, limit to a single record (one client per order).
            *   Explain how clicking the `+` allows selecting a client from the linked `Clients` table.
        *   **Add the `Product` field:** Similar to Client.
            *   Set data type to "Link to another record".
            *   Choose the table to link to: `Products`.
            *   Limit to a single record (simplification for demo, real orders often have multiple products).
            *   Explain how clicking `+` allows selecting a product from the linked `Products` table.
        *   *Self-correction:* Note that calculating the total order price would require looking up the price from the linked Product record, which wasn't set up in this basic demo. Skip the total price formula for now.
        *   Enter sample order data, linking to existing Clients and Products, and adding quantity and status.
    *   **Show Different Views:**
        *   Explain that the default is the "Grid view".
        *   Create a "Kanban" view.
        *   Explain how to configure it (choose the `Status` field for columns).
        *   Demonstrate dragging records between status columns. Explain its use for visual tracking (like a to-do list or workflow).
        *   Connect this to the lab idea (tracking course assignments).
    *   **Discuss Benefits of Airtable/Similar Tools:**
        *   Freedom to modify the database structure to suit specific needs.
        *   Building systems for oneself or a small team/business.
        *   Quick modification and immediate use.
        *   Autonomy from needing external developers for simple changes.
        *   Mention the example of a large business using Airtable extensively for internal systems with minimal code.
    *   *Pause for questions/check for confusion after the demo.*

*   **Airtable API and Use Cases:**
    *   Explain that Airtable has an API.
    *   Use case 1: As a backend for custom web applications (e.g., built with JavaScript/React). Often happens when an Airtable base grows organically and needs a more tailored interface. Advantage: The backend already exists ("0 effort backend"), no need to migrate data immediately, allows users to continue using Airtable if they prefer.
    *   Use case 2: Automation and data sharing between departments/systems. One department uses Airtable, another needs to access its data automatically using the API, even if they use different software. This is a fairly common use case.

*   **Other Similar Tools:**
    *   Mention other tools in the same space: No-code DB, BaseRow. Note they are similar and some offer self-hosting options (requires Docker knowledge).
    *   Mention Notion: Its database feature provides very similar functionality to Airtable databases.

*   **History of Database + UI Tools:**
    *   Reiterate that Airtable's concept (database tightly coupled with a user-friendly interface) is not entirely new.
    *   **dBase:** Extremely popular in the 1980s, combined database functionality with tools for building user interfaces.
    *   **FoxBase / FoxPro:** Inspired by dBase, acquired by Microsoft. Mention seeing it used in accounting departments for payroll, inventory etc. Note it ran on PCs, used text-mode interfaces (which were very fast).
    *   **Microsoft Access:** Appeared in 1992, part of Microsoft Office. Largely replaced FoxPro. Still used by a significant number of professional developers (~3.5% in a recent survey). Describe it as an "unloved child" of Microsoft, perhaps intentionally limited to avoid competing with more expensive products like SQL Server. Historically had collaboration issues when used locally. Basic logic similar to Airtable.

*   **Modern No-code/Low-code Landscape:**
    *   Describe the current wave of tools: Airtable, Bubble (web apps), Adalo (mobile apps), Notion, Webflow (websites), etc. Show a graphic with logos if available.
    *   Contrast with a previous wave: RAD (Rapid Application Development) tools like Access and Visual Basic. Note that some concepts from this era are now integrated into modern development environments (.NET UI).
    *   Discuss the ongoing debate about no-code/low-code: Some love it, some hate it, some see it as just another tool.
    *   Highlight the core trade-off: Speed of development vs. Flexibility and Control.
    *   Mention the "complexity wall": Both no-code tools and traditional coding projects eventually hit limits on complexity. Managing complexity is key in both scenarios.

*   **Airtable Backups and Export:**
    *   Address the question of backups. Note it can be a challenge. Paid Airtable accounts often offer better backup options.
    *   Mention "Revisions": Airtable keeps a history of record changes, allowing rollback (like Google Docs history). This is a partial replacement for full backups.
    *   Show how to export data: Explain that individual views (like the Grid view) can often be downloaded as CSV files (demonstrate finding the "Download CSV" option in the view menu).
    *   Mention third-party services that specialize in synchronizing Airtable data to other databases or providing more robust backup solutions, sometimes offering near "live" sync.

*   **Conclusion:**
    *   Summarize the key takeaways: Spreadsheets are powerful, widely used tools with a long history. Airtable represents a modern evolution, bridging spreadsheets and databases, providing an accessible way to build structured, relational systems. Understanding these tools is valuable for developers.
    *   Encourage students to engage with the lab to get hands-on experience with Airtable.
