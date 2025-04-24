# Lecture 9: Structured Data and JSON

**Introduction**

*   Transition from the first half of the course (basic tools: keyboard, text editors, git, command line) to the second half focusing on databases and structured data.
*   Note that the course provides a general introduction to structured data and databases, and basic SQL, rather than focusing on a specific database system like MySQL (which might be covered in a later course).
*   Agenda for today: What is structured data, JSON as a popular example, JSON data types, brief look at YAML, getting familiar with data formats.

**Structured vs. Unstructured Data**

*   Start by discussing the concept of structured data. A simple, perhaps slightly humorous, definition is "the boring type of data, like your spreadsheets."
*   Emphasize that the border between structured and unstructured data isn't always strictly defined.

**Historical Examples of Structured Data**

*   **Library Catalog Cards:**
    *   Use the example of a physical library card catalog (like the one shown from Graz, Austria).
    *   Describe the structure visible on the card: specific location for book number, author name format (parentheses, last name emphasized).
    *   *Historical Detail:* Explain the likely reason for using extra spaces for emphasis instead of bolding – limitations of typewriters. Mention the technique of holding the carriage and hitting the key multiple times to simulate bolding, and why spaces were simpler.
    *   Show the "explanation card" intended for librarians – this clearly separates the *description of the structure* (in red) from the *data itself* (in the black rectangle). Highlight how extensive the structure description was.
*   **Government Forms:**
    *   Use the example of a physical customs declaration form (like the Canadian one shown).
    *   Explain how the printed layout dictates the structure – specific boxes for date of birth (mention the YYYY-MM-DD format), last name, first name.
    *   Note the sometimes poor design choices (e.g., not enough boxes for long names/cities).
    *   This is another example of a visual data structure for human input.

**Terminology**

*   Introduce common terms used for structured data:
    *   **Record / Entry:** A single item (e.g., one library card, one filled form, one row in a spreadsheet).
    *   **Field:** A specific piece of data within a record (e.g., author name on the card, date of birth on the form, a column in a spreadsheet).
    *   **Data Model / Data Schema:** The description of the structure itself (how the data should be shaped, what fields are expected, what types they should hold). Mention "blank form" as an older term for this.
    *   **Spreadsheet terms:** Columns and Rows.
*   Note the overlapping terminology (column can be a field, row can be an entry/record) and that these terms are often mixed, especially across different domains (computer science, accounting, etc.). Emphasize that understanding these multiple names for similar concepts is useful.

**Modern Formats: JSON**

*   Introduce JSON (Javascript Object Notation) as a very popular modern format, especially for data exchange on the web. Most web applications use it.
*   Highlight its key advantages: simplicity and popularity. It's a good first format to study.
*   Mention its origin from Javascript syntax, but note that this historical connection isn't the most important aspect; its widespread use is.

**JSON Structure**

*   Explain the core structural elements of JSON:
    *   **Objects:** Represented by curly braces `{}`.
    *   **Key-Value Pairs:** Objects contain collections of these. A key (a string name) is associated with a value.
    *   Syntax: ` "key": value `. Pairs are separated by commas.

**JSON Data Types**

*   JSON has only 6 built-in data types. This limited set makes it simple.
*   **Scalar Types (4):** Represent a single value.
    *   **Strings:** Text values, enclosed in double quotes (`"..."`).
    *   **Numbers:** Can be integers or floating-point (decimal) numbers. JSON doesn't distinguish between different numerical types. Scientific notation is also valid.
    *   **Booleans:** Represent truth values, can only be `true` or `false`. (Lowercase).
    *   **Null:** A special type with a single value, `null`. Represents the absence of a value or an empty field. (Lowercase).
*   **Collection Types (2):** Hold multiple values.
    *   **Arrays:** Ordered lists of values, enclosed in square brackets `[]`. Items are separated by commas. Arrays can contain values of different types, and items can be repeated.
    *   **Objects:** Unordered collections of key-value pairs, enclosed in curly braces `{}`. (Already discussed as the main structure, but reinforce it as a type). Mention other names for this concept: associative arrays, dictionaries (Python), maps (Java, C#), hash maps.

**JSON Limitations**

*   JSON is quite strict in its syntax.
*   **Quotation Marks:** Keys *must* be strings and *must* be enclosed in double quotes. String values *must* also be in double quotes.
*   **Commas:** Must be placed correctly between items in arrays and key-value pairs in objects. Crucially, there should *not* be a trailing comma before a closing bracket (`]` or `}`). Note that this differs from conventions in some programming languages (like modern Javascript or Python) where trailing commas are sometimes allowed or encouraged.
*   **Comments:** Standard JSON does *not* support comments (`//` or `/* ... */`). Mention that some tools (like VS Code) allow them as an unofficial extension, but a strict validator will flag them as errors.
*   Writing JSON by hand can be tedious due to the strict syntax and need for quotes/commas/braces.

**JSON Tools**

*   Mention tools that help with writing and verifying JSON:
    *   **Validators / Linters:** Check if the syntax is correct. Available online or integrated into editors like VS Code (often highlights errors natively).
    *   **Formatters:** Automatically adjust indentation and spacing to make JSON readable. VS Code has a built-in "Format Document" command (mention `Ctrl+Shift+P` or `Ctrl+P > `). Note the debate over indentation styles (2 vs. 4 spaces, tabs vs. spaces).

**YAML**

*   Introduce YAML as a data format inspired by JSON, designed to be more human-readable and easier to write by hand.
*   Explain the core difference: YAML uses **indentation** to represent structure (nesting of objects and list items) instead of braces, quotes (often optional), and commas (often omitted).
*   Compare YAML lists (using dashes `-`) to Markdown bullet lists.
*   Show how the structure translates from YAML indentation to JSON braces/nesting.
*   Use cases: Primarily configuration files where humans are expected to read and write them. Mention the `_config.yaml` file used in the labs for Github Pages configuration as an example they've already encountered. Mention Docker and Kubernetes as popular tools that heavily use YAML for configuration.
*   *Historical Detail:* Mention the evolution of the name: Yet Another Markup Language (YAMl) initially, changed to YAML Ain't Markup Language (YAML) – a recursive acronym. Discuss the debate on whether it's truly a "markup language" or a "data serialization format."
*   Note that YAML files can become difficult to read if they are very large.
*   Mention that most valid JSON is also valid YAML, making it somewhat of a superset (though there are rare edge cases where this isn't strictly true).

**XML**

*   Briefly mention XML as the popular format that preceded JSON for web data exchange.
*   Note its inspiration from HTML (using tags `<tag>...</tag>`).
*   Describe it as significantly more complex than JSON: larger standard, ability to define custom tags, attributes within tags, custom data types.
*   Mention the historical period when it was heavily adopted ("dot-com boom"), sometimes in inappropriate contexts.
*   *Historical Detail:* Mention that modern Microsoft Office documents (.docx, .xlsx, etc.) are essentially zip files containing XML files inside.
*   Conclude that many people prefer to avoid XML due to its complexity unless necessary, relying on libraries to handle parsing.

**Serialization and Deserialization**

*   Define **Serialization:** The process of converting data structures (as they exist in a program's memory) into a format that can be stored (e.g., file) or transmitted (e.g., over a network) as a series of bytes.
*   Define **Deserialization / Parsing:** The reverse process – reading the serialized bytes and converting them back into data structures usable by a program.
*   JSON and YAML are **text-based serialization formats**.

**Schema Validation**

*   Revisit the idea of a strict data structure description (like the government form).
*   Define **Schema:** A formal description of the expected structure, fields, and data types for a dataset or document.
*   Define **Validation:** The process of checking whether a given piece of data (e.g., a JSON object) conforms to a specific schema.
*   Mention that tools called **Schema Validators** exist for this purpose.

**Binary Serialization Formats**

*   Contrast text-based formats (JSON, YAML) with **Binary Formats**.
*   Explain that text formats can be wasteful (e.g., repeating key names like "title" many times in an array of objects) and slower to parse.
*   Binary formats are optimized for space efficiency and processing speed by computers, not for human readability.
*   *Historical Context:* Mention older binary formats like C structs, where developers manually defined the byte layout. Note the difficulty in working with them and managing version changes.
*   Mention a modern popular binary format example: gRPC using Protobufs (Protocol Buffers). Note that they are less likely to encounter this soon but should recognize the terms.

**Lab Introduction & Demonstration**

*   Explain the lab goal: Convert simple tabular data (in CSV format) into JSON and YAML.
*   Introduce CSV (Comma Separated Values) as a simple format for tables. Show an example (the fictional sports data).
*   Demonstrate using an online **JSON/YAML converter tool**.
    *   Show typing YAML on one side and seeing JSON appear on the other, and vice-versa.
    *   Reinforce the syntax differences (indentation vs. braces/quotes/commas).
    *   Demonstrate JSON syntax rules: mandatory quotes for keys/strings, comma placement. Show how the validator part of the tool flags errors.
    *   Show how arrays are represented in YAML (dashes) and JSON (square brackets).
    *   Use the sports player example to show how to structure the data: an array of player objects.
    *   Demonstrate nesting objects (e.g., having a "team" field that is itself an object with "city" and "name" fields) vs. having flat fields (e.g., "team\_name", "team\_city"). Suggest nesting as a good practice.
    *   Discuss how to represent missing data: using the string "NA" vs. using the `null` type. Explain that `null` is often preferred in programming to represent the *absence* of a value, whereas "NA" is just a specific string value.
*   Demonstrate using **Visual Studio Code** with JSON/YAML files.
    *   Show how VS Code uses JSON for its own configuration (`settings.json`). Show the default settings file (large, uses comments - note this is a relaxed standard).
    *   Show the UI view of settings as an alternative representation.
    *   Show project-specific settings (`.vscode/settings.json`).
    *   Demonstrate the `Format Document` command to auto-indent JSON. Show how it cleans up poorly formatted text.
    *   Show the collapsing/expanding arrows in the editor for nested objects/arrays – useful for navigating large files.
    *   Show syntax highlighting for YAML files in VS Code.
    *   In the lab, they will be asked to add comments to the JSON/YAML file indicating the data type of each field (string, number, boolean, null, array, object).

