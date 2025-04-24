# Lecture 3 - Structure of Text

**Topic:** Understanding the structure of text, from historical perspectives to modern digital formats and the tools used to work with them.

**Why Talk About Text Structure?**
*   It often feels intuitive, but understanding the terminology and concepts is crucial for software development.
*   Many modern tools and data formats rely heavily on defined text structures, especially markup languages.

**Historical Examples of Text Structure**
*   **Ancient Legal Text (c. 1500s print of Justinian's work):**
    *   Printed in Venice (a printing capital at the time).
    *   Original text written ~1000 years prior by Emperor Justinian (Byzantine Empire), considered a forefather of modern legal systems. Written in Latin.
    *   Structure: Very visual, 2-dimensional. Large central text (the author's work) surrounded by commentary in smaller fonts. Common in religious publications where original text is old and requires interpretation. Designed for the human eye.
    *   *Note:* Latin was a common language for science and religion across Europe even when no longer a native language, enabling wider distribution before widespread translation was feasible.
*   **Ledger (George Washington Estate, 1700s):**
    *   Looks like a clear table structure.
    *   Obvious rows and columns for organizing data (e.g., quantity, price, item description).
*   **Newspaper (Omaha World Herald, 1961):**
    *   Very visual, 2-dimensional layout.
    *   Large titles, smaller body text, images. Designed for quick scanning by readers.

**Modern Text Structure Basics**
*   **Lines:** The most fundamental structural element in computer text files.
    *   Line breaks are represented by special control characters (e.g., ASCII code 10, the newline character). This character tells the computer/display to move to the next line.
    *   In programming and text editors, lines are often numbered, making it easy to refer to specific locations (e.g., "error on line 275").
*   **Whitespace:** Spaces, tabs, and newlines. Crucial for human readability.
*   **Indentation:** Whitespace at the beginning of a line or block of text.
    *   Used to visually group related lines and show hierarchical structure (e.g., in code, data formats like JSON).
    *   Makes text much easier for humans to parse visually, even if the computer ignores it.
*   **Paragraphs:** Important in traditional writing/publishing. Less emphasized in some technical text formats.

**Non-alphanumeric Characters**
*   Characters that are not letters (a-z, A-Z) or numbers (0-9).
    *   **Alphanumeric:** Letters and numbers.
    *   **Alpha:** Letters only.
    *   **Non-alphanumeric (or non-alpha):** All other printable characters.
*   **Common Examples and Names (useful to know for searching/discussing):**
    *   `.` - Period, full stop, decimal point.
    *   `-` - Hyphen, minus sign. (Note: Publishing has many dash types, ASCII usually only one short one).
    *   `()` - Parentheses, round brackets.
    *   `[]` - Square brackets.
    *   `{}` - Curly braces, curly brackets.
    *   `<>` - Angled brackets, less than/greater than signs. (Dual meaning: math comparison vs. HTML tags).
    *   `+` - Plus sign.
    *   `*` - Star, asterisk.
    *   `/` - Slash, forward slash, division symbol.
    *   `%` - Percent sign.
    *   `#` - Hash mark, pound sign, number sign.
    *   `$` - Dollar sign.
    *   `&` - Ampersand, 'and' sign.
    *   `@` - At sign.
    *   `\` - Backslash.
    *   `_` - Underscore, low dash. (Often treated like a letter in programming variable names).
    *   `^` - Caret, hat. (Often used for exponentiation).
    *   `~` - Tilde, tilda. (Used for approximation, or in some languages over letters like 'ñ').
    *   `` ` `` - Back tick, back quote.
    *   `|` - Vertical line, pipe. (Named after the Unix/Linux pipe operation).
*   **Finding on Keyboards:** Can vary significantly by keyboard layout (e.g., US vs. European layouts). Knowing the name helps in searching for how to type it.

**Markup Languages**
*   **Origin:** Concept comes from publishing workflows where editors would "mark up" manuscripts with symbols (often in red) to instruct typesetters (e.g., 'bf' for bold font, 'cap' for capitalize). This was the "proofreading markup language."

*   **Computer Adaptation:** Since we can't draw symbols on digital text, we embed instructions *within* the text stream using special characters or sequences. These instructions define how the text should be displayed or add semantic meaning.
*   **Examples:**
    *   **Markdown:** A simple, lightweight markup language.
        *   Designed for easy reading and writing in plain text.
        *   Syntax examples:
            *   Headings: `# Heading 1`, `## Heading 2`, etc.
            *   Bold: `**bold text**`
            *   Italic: `*italic text*`
            *   Lists: `* Bullet item`, `1. Numbered item` (the renderer handles the numbering sequence). Indentation creates nested lists.
        *   **Rendering:** The process of converting the raw markup text into a formatted visual output (e.g., HTML, PDF).
        *   Benefits: Very readable source, easy to write, good for simple documentation (like software READMEs). Popular in the last decade.
    *   **HTML (HyperText Markup Language):** The most common markup language, used for web pages.
        *   Hypertext: Text with links, images, and other non-linear elements.
        *   Structure: Uses tags enclosed in angle brackets (`<tag>`). Tags usually come in pairs: an opening tag (`<tag>`) and a closing tag (`</tag>`). Content is between the tags.
        *   Examples: 
            * `<p>A paragraph.</p>`
            `<strong>Bold text.</strong>`
            `<h1>Main heading.</h1>`
        *   History: HTML was proposed by Tim Berners-Lee while working at CERN (European Organization for Nuclear Research) in Switzerland. He was also involved with the W3C (World Wide Web Consortium), which develops web standards.
    
    *   **XML (eXtensible Markup Language):** Inspired by HTML, but designed more for structuring data than specifying display.
        *   Structure: Similar tag-based syntax 
        *   Focus: Describing the meaning and hierarchy of data elements.
        *   Popularity: Very popular in the 2000s, still used, but often replaced by JSON for many applications.
    *   **YAML** Increasingly popular for configuration files, known for its human-readable indentation-based structure.
    *   **Wiki Text:** Markup language used for editing pages on Wikipedia.

**Structured Data**
*   Data that has a defined, consistent organization, often resembling tables (rows as items, columns as properties) or hierarchical structures.
*   The definition is relative; some data is *more* structured than others.
*   Common text formats for representing structured data include XML and JSON.
*   **JSON (JavaScript Object Notation):** A lightweight format for data interchange.
    *   Structure: Based on key-value pairs (`"key": value`), objects (collections of key-value pairs, `{}`), and arrays (ordered lists of values, `[]`).
    *   Example (similar to the ledger/table data):
        ```json
        [
          {
            "description": "Item A",
            "units": 10,
            "unit_cost": 1.25
          },
          {
            "description": "Item B",
            "units": 5,
            "unit_cost": 3.00
          }
        ]
        ```
*   **Serialization:** The process of converting a data structure (like an object in memory) into a format (like a text string or byte sequence) that can be stored or transmitted, and then reconstructed later. JSON and XML are common text serialization formats.
*   **Human Readable Formats:** Text formats like JSON and XML are designed so humans can read and understand them (unlike binary formats or barcodes). This is a trade-off; they are often larger and slower for computers to process than binary formats, but much easier for developers to work with directly. Modern computing power often makes this trade-off acceptable.

**Browsers and Rendering Engines**
*   Browsers are some of the most complex projects on the planet. They fetch web resources (HTML, CSS, JavaScript, images), parse the text-based formats, and render the final visual page.
*   Building a browser from scratch is a massive undertaking requiring large teams and years of work.
*   **Rendering Engines:** The core component of a browser responsible for parsing HTML/CSS and laying out the page.
    *   There are only a few dominant rendering engines today (used by Chrome, Edge, Brave, Safari, Firefox). Many browsers share the same underlying engine.
*   **Web Standards:** Developed through collaboration (e.g., W3C) involving people from competing browser companies. This aims for consistency, though variations between browser versions and engines still exist, affecting web developers. (Historically, Internet Explorer was less compliant, creating difficulties).
*   Developers often use multiple browsers for testing compatibility.

**Special Characters and Escaping**
*   **Special Characters:** Characters that have a specific meaning or function within a particular language or context (e.g., `#` in Markdown headings, `<` in HTML tags, `"` when used to define a string in code).
*   **Escaping:** The mechanism used to tell the interpreter/renderer that a special character should be treated as a literal character, not with its special meaning.
*   **Escape Character:** A character that signals the following character should be escaped. The backslash `\` is commonly used.
*   **Escape Sequence:** The escape character followed by the character (or code) being escaped.
*   **Examples:**
    *   **Markdown:** To display a literal `#` at the start of a line: `\# Heading`. To display a literal backslash: `\\`.
    *   **Code (Strings):** In many languages (Python, JavaScript), to include a quote character within a string defined by the *same* quote character:
        ```python
        print("He said, \"Hello!\"") # Escape double quote in double-quoted string
        print('It\'s a good day.') # Escape single quote in single-quoted string
        ```
    *   **HTML:** Uses character references starting with `&` and ending with `;`.
        *   To display a literal `<`: `&lt;` (`lt` for less than).
        *   To display a literal `>`: `&gt;` (`gt` for greater than).
        *   To display a literal `&`: `&amp;` (`amp` for ampersand).
        *   Documentation: MDN (Mozilla Developer Network) and W3C provide comprehensive references.

**Lab Exercise Connection**
*   The lab involves editing Markdown documents.
*   This will be done using Github.
*   **Github:** A web platform primarily for hosting software code repositories, but also widely used for managing text documents.
    *   Organized into **repositories** (like project folders).
    *   Often contains a `README.md` file (written in Markdown) displayed prominently.
    *   Provides a web editor for files, including a Markdown preview.
    *   Saving changes is called **committing**.
    *   Useful tool for collaboration and version control, even for non-code text (e.g., German government legislation hosted on Github).
    *   Recommended to create a Github account (consider using a personal email and adding college email for potential student benefits).

**Resources Mentioned:**
*   Videos: "Github for Poets" playlist (recommended for Git/Github intro).
*   Documentation: MDN (Mozilla Developer Network), W3C (World Wide Web Consortium).
