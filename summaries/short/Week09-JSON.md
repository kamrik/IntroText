# Lecture 9: Structured Data and JSON
- Summary generated from Zoom audio transcript by ChatGPT
- [Slides](https://docs.google.com/presentation/d/1LODLMB9XcOEfX7O3ey64ZWvv4EtQZzdpj-Y9QJdWzVE)


## Introduction
- The lecture focuses on structured data, JSON, and YAML.
- Discusses the distinction between structured and unstructured data.
- JSON is highlighted as a popular format for data exchange on the web.

## Key Concepts

### Structured vs. Unstructured Data
- **Structured Data**: Organized format, often in tables (e.g., spreadsheets, library catalogs).
- **Unstructured Data**: No predefined structure (e.g., text documents, images).

### JSON (JavaScript Object Notation)
- **Purpose**: A lightweight data interchange format.
- **Structure**: Key-value pairs, similar to Python dictionaries or JavaScript objects.
- **Data Types**:
  - **Scalar Types**: 
    - Strings
    - Numbers
    - Booleans (`true`, `false`)
    - Null (`null`)
  - **Complex Types**:
    - Arrays: Ordered list of values.
      ```json
      [1, "two", true, null]
      ```
    - Objects: Collection of key-value pairs.
      ```json
      {
        "name": "John Doe",
        "age": 30
      }
      ```
- **Syntax Rules**: 
  - Strings must be in double quotes.
  - Commas separate key-value pairs but not before closing braces.
  - No support for comments in standard JSON.

### YAML (YAML Ain't Markup Language)
- **Purpose**: Designed to be human-readable and writable.
- **Structure**: Uses indentation to denote structure, similar to Python.
  ```yaml
  name: John Doe
  age: 30
  ```
- **Features**:
  - Less verbose than JSON (no braces, quotes optional).
  - Supports comments with `#`.

### Serialization and Deserialization
- **Serialization**: Converting data into a byte series for storage or transmission.
- **Deserialization**: Converting byte series back into usable data structures.

### Tools and Validation
- **Validators/Linters**: Tools to check JSON/YAML syntax.
- **VS Code**: Supports JSON/YAML with syntax highlighting and formatting.

## Practical Examples
- **JSON Example**:
  ```json
  {
    "players": [
      {
        "name": "Mickey",
        "age": 96,
        "team": {
          "name": "Some Team",
          "city": "Somewhere"
        }
      }
    ]
  }
  ```
- **YAML Example**:
  ```yaml
  players:
    - name: Mickey
      age: 96
      team:
        name: Some Team
        city: Somewhere
  ```

## Additional Notes
- **Command Palette in VS Code**: Use `Ctrl+Shift+P` to access commands.
- **Formatting JSON in VS Code**: Use the "Format Document" command to auto-indent JSON files.
- **Docker and Kubernetes**: Use YAML for configuration files.

## Conclusion
- JSON is widely used for web data exchange due to its simplicity and ubiquity.
- YAML is preferred for configuration where humans are expected to write the file by hand.
- Being familiar with these formats is crucial for working with APIs and configuration management in software development.