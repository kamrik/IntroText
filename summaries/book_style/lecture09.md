# Lecture 9: Structured Data and JSON

The first part of this course focused on fundamental developer tools like the keyboard, text editors, the command line, and Git/GitHub. These are essential tools used on a daily basis.

The second half of the course shifts our focus to databases and structured data. Instead of diving into a specific database system like MySQL (which you might learn in a later semester), we will cover the general concepts of dealing with structured data, databases, and a basic introduction to SQL, the language used to interact with databases.

Today, we will explore what structured data is and look at JSON as a primary example of a format for structured data. JSON is simple, widely used, and provides a good introduction to general data types. We will also briefly look at YAML, a related format, to understand how different syntaxes can represent similar data structures. The goal is to get you comfortable with looking at and understanding these data formats.

## Structured vs. Unstructured Data

There isn't always a perfectly strict definition separating structured from unstructured data, and the boundary can sometimes be blurry. A simple way to think about structured data is that it's data organized in a predefined format. A common analogy is a spreadsheet, which is a very clear example of structured data.

Let's look at some historical examples of structured data before the age of computers.

### Historical Examples

Consider a library catalog from the past. This image shows a card catalog from a library in Graz, Austria, shortly before World War 2. This era was arguably the peak of paper-based archival systems before widespread digitization began after the war.

Each card in these drawers represents an item, typically a book. Looking closely at a sample card designed for librarians, we can see a lot of structure:

*   The catalog number is prominent in the top right.
*   The author's name is written in a specific format, often with the last name emphasized. In older systems typed on typewriters, this emphasis might be achieved by typing extra spaces between letters rather than using bold formatting. This was simpler on mechanical typewriters, as creating bold text often involved repeatedly striking the same character key while preventing the carriage from moving, which was slow and inconsistent across different machines. Adding spaces was a straightforward convention.
*   The card includes fields for the book's full title, publisher, year of publishing, and other details.

On such a card, the information *in* the black rectangle is the data itself (the author's name, the title, etc.), while the labels and layout *outside* the rectangle (often printed in a different color, like red in the example) describe the *structure* for that data, indicating what information goes where. This description of the structure can be quite detailed.

Another familiar example of structured data is a government form, like the customs declaration form previously given to travelers arriving in Canada.

The structure here is visually dictated by the printed layout. Fields are provided for specific pieces of information like date of birth (often requiring a specific YYYY-MM-DD format) or name (sometimes with boxes for individual letters, though this can be a poor design choice if names or cities exceed the allocated space). The form itself is the blank structure, and once filled, it becomes a record.

### Terminology

In these examples, each card in the catalog or each filled government form is typically referred to as a **record** or an **entry**.

Each specific piece of information on the card or form (like the author's name, the date of birth, or the city) is called a **field**. You "fill in the fields" on a form.

In the computer world, the description of how data should be structured is often called a **data model** or **data schema**. Before computers, this was the "blank form." Once the blank form is filled, it becomes a record.

In the context of spreadsheets or tables, we use slightly different but related terminology:
*   **Columns:** The vertical categories (e.g., "Author," "Title"). These are analogous to fields.
*   **Rows:** The horizontal entries, each representing a single record (e.g., all the information for one book or one traveler). These are analogous to records or entries.
*   Sometimes, especially in financial contexts, a row might just be called a **line**.

It's helpful to be aware of these different terms (record, entry, field, column, row, line, schema, model) as they are often used interchangeably depending on the context or domain.

## Modern Structured Data Formats: JSON

This brings us to modern formats used for structured data, particularly in computing. Today, we'll focus on **JSON**.

JSON is likely the most popular format for data exchange on the web. Most web applications communicate with servers using JSON. Its popularity stems from its simplicity, making it easy to learn and use, while also being extremely versatile.

### What is JSON?

JSON stands for **JavaScript Object Notation**. While it originated from JavaScript syntax, its use has expanded far beyond JavaScript, and the name is now primarily a historical artifact.

A JSON structure fundamentally represents data using **key-value pairs**. This is a common pattern in programming. You have a "key" (a name for a piece of data) and a "value" (the data itself).

Here's an example of how data from our historical library card might be represented in JSON:

```json
{
  "name": "Donald J. Hall",
  "born": 1903,
  "books": [
    {
      "title": "The History of the World",
      "published": 1935
    },
    {
      "title": "Advanced Typewriter Techniques",
      "published": 1940
    }
  ]
}
```

In this example:
*   The entire structure is enclosed in curly braces `{}`. This represents a JSON **object**.
*   Inside the object, we have key-value pairs separated by commas.
*   `"name"` is a key, and `"Donald J. Hall"` is its value (a string).
*   `"born"` is a key, and `1903` is its value (a number).
*   `"books"` is a key, and its value is a collection of items enclosed in square brackets `[]`. This is a JSON **array**.
*   The array contains two items, each of which is another JSON object representing a book, with keys `"title"` and `"published"`.

### JSON Data Types

JSON defines a small, simple set of only six data types:

1.  **Scalar Types** (representing single values):
    *   **String:** Text values, enclosed in double quotes (`"`). Example: `"Hello, World!"`, `"Donald J. Hall"`.
    *   **Number:** Numerical values. JSON does not distinguish between integers and floating-point (decimal) numbers. Scientific notation is also supported. Example: `1903`, `3.14`, `1.2e-5`.
    *   **Boolean:** Represents truth values. Can only be `true` or `false`. Example: `"isAvailable": true`.
    *   **Null:** Represents an empty or non-existent value. It's a specific type with only one possible value, `null`. Example: `"team": null` (indicating the player has no team).

2.  **Collection Types** (representing multiple values or structures):
    *   **Array:** An ordered list of values, enclosed in square brackets `[]`. Items are separated by commas. An array can contain values of different types, and items can be repeated. Example: `[1, "apple", true, null, {"city": "Paris"}]`.
    *   **Object:** An unordered collection of key-value pairs, enclosed in curly braces `{}`. Keys must be strings and unique within the object. Values can be any of the six JSON data types, including other objects or arrays, allowing for nested structures. Objects are also known by various names in programming languages, such as **associative arrays**, **dictionaries** (e.g., in Python), **maps** (e.g., in Java, C#), or **hash maps**.

### JSON Syntax Rules and Limitations

JSON is quite strict about its syntax:

*   **Quotation Marks:** All keys (object names) and string values *must* be enclosed in double quotation marks (`"`). Single quotes are not allowed.
*   **Commas:** Commas are required to separate elements within an array or key-value pairs within an object. A common pitfall is adding a trailing comma after the last element/pair before a closing bracket (`]` or `}`). This is invalid JSON.
*   **Whitespace:** Whitespace (spaces, tabs, newlines) is generally ignored, but it's crucial for human readability (indentation).
*   **No Comments:** The official JSON standard does *not* support comments (lines starting with `//` or blocks enclosed in `/* */`). While many parsers and tools (like VS Code) tolerate comments as an unofficial extension, strict JSON validators will flag them as errors.

Writing JSON by hand can be tedious due to the strict requirements for quotes and commas.

### JSON Tools

Because of its strict syntax, tools are available to help write and validate JSON:

*   **Validators/Linters:** These tools check if a JSON document conforms to the standard syntax and can highlight errors. Many are available online, and text editors like VS Code often have built-in or extension-based validation.
*   **Formatters:** These tools automatically adjust whitespace and indentation to make JSON more readable. VS Code's "Format Document" command is a common example. You can configure indentation styles (e.g., 2 or 4 spaces).

## YAML

**YAML** (originally "Yet Another Markup Language," now recursively "Yaml Ain't Markup Language") is another data serialization format. It was designed to be significantly more human-readable and writable than JSON or XML.

YAML can be seen as a superset of JSON in many practical cases – most valid JSON is also valid YAML. However, YAML achieves its readability by using indentation and simpler syntax instead of relying heavily on braces, quotes, and commas.

Here's the same data from the library card example represented in YAML:

```yaml
name: Donald J. Hall
born: 1903
books:
  - title: The History of the World
    published: 1935
  - title: Advanced Typewriter Techniques
    published: 1940
```

Key differences from JSON:

*   **Indentation:** Structure is defined by indentation rather than curly braces. Nested objects are created by indenting their key-value pairs under the parent key.
*   **Arrays:** Array elements are indicated by a dash (`-`) followed by a space, on separate lines, indented under the array's key.
*   **Quotes and Commas:** Double quotes for keys and string values are usually optional (though still allowed). Commas between items are not used.

YAML is often used in situations where configuration files are expected to be read and written by humans. Examples include configuration files for web servers, deployment tools like Docker and Kubernetes, and even simple settings files like the `_config.yml` used in previous labs for GitHub Pages themes.

YAML is less common for transferring large amounts of data over networks compared to JSON, partly because its verbosity (due to indentation and newlines) can make file sizes larger, and parsing can sometimes be less efficient than binary formats.

## XML (Briefly)

Before JSON became dominant, **XML** (eXtensible Markup Language) was the most popular format for data exchange. Inspired by HTML, XML uses tags to define data elements.

Here's a simplified example of the same book data in XML:

```xml
<book>
  <title>The History of the World</title>
  <published>1935</published>
</book>
```

XML is much more complex than JSON or YAML. Its standard is larger, allowing users to define custom tags, attributes within tags, and complex data type definitions. While powerful, this complexity made it harder to work with, leading to JSON's rise in popularity, especially for web APIs. XML is still used in some domains, such as document formats (like the `.docx` files used by Microsoft Word, which are essentially zipped collections of XML files) and some enterprise systems. When dealing with XML, it's generally best to use dedicated libraries that handle the parsing and complexity.

## Core Concepts: Serialization and Validation

Regardless of the specific format (JSON, YAML, XML), converting data from an in-memory programming language representation into a format suitable for storage (like a file) or transmission (over a network) is called **serialization**. This process turns a complex data structure into a series of bytes. Text-based formats like JSON and YAML produce human-readable byte streams.

The reverse process, reading the data from a file or network stream and converting it back into a usable data structure in a program, is called **deserialization** or **parsing**. You parse a JSON file to extract the information it contains.

As mentioned earlier, structured data often has a defined **schema** – a precise description of the expected fields, their types, and their relationships. **Schema validation** is the process of checking if a given data instance (like a JSON object) conforms to a specific schema. Tools called schema validators perform this check.

While JSON and YAML are text-based, which is great for human readability and debugging, they can be less efficient in terms of file size and parsing speed for very large datasets. **Binary serialization formats** exist that are optimized for space and speed. These formats are not human-readable but are very efficient for computer processing. An example of a modern binary format used for high-performance communication is Google's **Protocol Buffers** (often used with **gRPC**), which can be thought of as a binary equivalent to JSON.

## Practical Application: Converting Data

A common task is converting data between formats. For example, you might have data in a simple table format like **CSV** (Comma Separated Values) and need to convert it to JSON or YAML for use in a web application or configuration file.

CSV is a basic text format for tables where values in each row are separated by a delimiter, typically a comma. For example, a simple CSV file might look like this:

```csv
Name,Sport,Team Name,Team City,Age
Mickey Mouse,Cartooning,Disney,Anaheim,96
Donald Duck,Cartooning,Disney,Anaheim,90
Goofy,Cartooning,Disney,Anaheim,92
Roger Federer,Tennis,,Basel,42
```

Notice that Roger Federer, as a tennis player, doesn't have a team name or city listed. In CSV, this is often represented by leaving the field empty.

When converting this to JSON or YAML, we need to decide how to represent the structure. Each row becomes an object (a record), and each column header becomes a key. The values are the data in the cells. For the missing team information, we could represent it as an empty string (`""`), the string `"N/A"`, or more appropriately, the `null` value.

Here's how the data for Mickey Mouse could be represented in JSON, including the idea of nesting the team information in a sub-object:

```json
{
  "Name": "Mickey Mouse",
  "Sport": "Cartooning",
  "Team": {
    "Name": "Disney",
    "City": "Anaheim"
  },
  "Age": 96
}
```

And here's Roger Federer, showing how to represent the missing team data using `null`:

```json
{
  "Name": "Roger Federer",
  "Sport": "Tennis",
  "Team": null,
  "Age": 42
}
```

Or, alternatively, if the `Team` object must always exist but its details are missing:

```json
{
  "Name": "Roger Federer",
  "Sport": "Tennis",
  "Team": {
    "Name": null,
    "City": null
  },
  "Age": 42
}
```
Both approaches are valid depending on the desired data model, but using `null` is generally preferred over empty strings or "N/A" strings when the value is truly absent.

Converting the entire CSV table would result in a JSON array where each element is an object representing a player.

```json
[
  {
    "Name": "Mickey Mouse",
    "Sport": "Cartooning",
    "Team": {
      "Name": "Disney",
      "City": "Anaheim"
    },
    "Age": 96
  },
  {
    "Name": "Donald Duck",
    "Sport": "Cartooning",
    "Team": {
      "Name": "Disney",
      "City": "Anaheim"
    },
    "Age": 90
  },
  {
    "Name": "Goofy",
    "Sport": "Cartooning",
    "Team": {
      "Name": "Disney",
      "City": "Anaheim"
    },
    "Age": 92
  },
  {
    "Name": "Roger Federer",
    "Sport": "Tennis",
    "Team": null,
    "Age": 42
  }
]
```

This JSON array could then be converted to YAML using a converter tool, or written directly following YAML's indentation and dash-based syntax.

## JSON and YAML in Practice (VS Code)

Text editors like Visual Studio Code provide excellent support for working with JSON and YAML files:

*   **Syntax Highlighting:** Different parts of the structure (keys, strings, numbers, booleans, null, brackets) are colored differently, making the structure easier to read.
*   **Validation:** VS Code can often detect syntax errors (missing commas, unquoted keys) and highlight them.
*   **Formatting:** The "Format Document" command automatically applies consistent indentation and spacing based on configured settings, greatly improving readability.
*   **Collapsing/Expanding:** For large objects or arrays, VS Code allows you to collapse sections to hide details temporarily, making it easier to navigate the overall structure.
*   **Settings Files:** VS Code itself uses JSON for its configuration files (`settings.json`). There are global settings and project-specific settings stored in a `.vscode` folder within your project directory. These settings files often include comments, demonstrating the common practice of allowing comments in JSON configuration files despite the official standard.

JSON and YAML are widely used in software development for configuration, data storage, and data exchange. Understanding their basic structure, data types, and syntax is a fundamental skill for any developer.

