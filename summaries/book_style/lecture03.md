# Lecture 3: Structure of Text

Welcome to the third lecture of this introductory course on basic tools for software developers. Today, we'll delve into something that might seem surprisingly fundamental, yet is crucial for software development: the structure of text.

It might feel a bit odd to dedicate an entire session to how text is structured. For many, it's intuitive. However, understanding the terminology and underlying concepts is vital as we work with various text formats and tools. We'll touch upon markup languages, special characters, and how structure helps both humans and computers interpret information.

## Historical Perspectives on Text Structure

Text structure isn't a new concept invented with computers. Humans have been structuring text for centuries to aid comprehension and organization.

Let's look at some historical examples:

1.  **Ancient Manuscripts and Early Printing:** Consider a page printed around 500 years ago in Venice, a major center for early printing. The text itself might be even older, perhaps written a thousand years prior by figures like Emperor Justinian of the Byzantine Empire, known for his contributions to legal systems. Looking at such a page, you'd notice distinct structural elements:
    *   A large central block of text (often the main work).
    *   Smaller text surrounding the central block (frequently commentary or glosses).
    *   Large initial letters (drop caps).
    *   Use of color (like red ink) for emphasis or specific sections.

    This structure is highly visual and two-dimensional, designed for the human eye. The central text might be the original, while the surrounding *commentary* helps readers understand or interpret it. This was common in religious and legal texts, where interpretation was key. Interestingly, by the time of printing, Latin, the language often used, was no longer a native tongue but served as a common language for scholars and the church across fragmented Europe, making a single-language publication viable for a wider audience.

2.  **Ledgers and Tables:** Moving forward, consider a ledger from the 1700s, perhaps from an estate like George Washington's. This looks very different. It's structured like a table, with clear rows and columns. Each column is dedicated to a specific type of information (e.g., quantity, price, item description). This tabular structure organizes data clearly for accounting and record-keeping.

3.  **Newspapers:** A newspaper front page, like one from the day after the 1969 moon landing, exhibits another form of visual, two-dimensional structure. It features huge titles (headlines), columns of text, and often images. The structure prioritizes grabbing attention and organizing diverse information into easily digestible sections.

These examples show that structure has always been used to make text understandable and navigable, adapting to the medium (printed page, ledger, newspaper) and purpose.

## Basic Text Structure in Computing

In the computer world, text is fundamentally a sequence of bytes. How do we impose structure on this sequence?

*   **Lines:** The most basic structural element for code and many text formats is the line. We break text into lines. How does a computer know where a line ends? Using special control characters embedded in the byte sequence. The most common is the **newline** character (ASCII code 10), which tells the display or printer to go to the next line. Text editors often number lines, and errors in code are frequently reported by line number, highlighting their importance.

*   **Whitespace:** This refers to spaces, tabs, and newlines. While often invisible, whitespace plays a crucial role in structuring text for human readability. Consider code or data files:
    *   **Indentation:** Adding space (or tabs) at the beginning of a line to visually group related lines. This is vital in many programming languages and data formats (like JSON or YAML) to show hierarchical structure. Compare a JSON object with and without indentation – the indented version is dramatically easier for a human to parse visually, even though the computer interprets them identically.

*   **Paragraphs:** In writing, paragraphs group sentences into logical units. While less critical for machine interpretation in many data formats, paragraphs are important in text intended for human reading (like documents or web pages), and markup languages often include ways to denote them.

## Special Characters

Beyond the standard letters and numbers (alphanumeric characters), text uses a variety of other symbols. These are often called **non-alphanumeric** or **non-alpha** characters.

Many of these have specific names and uses:

*   **Punctuation:** `.`, `,`, `;`, `:`, `!`, `?`, `'`, `"`. (Period/Full stop, comma, semicolon, colon, exclamation mark, question mark, apostrophe, quotation marks).
*   **Mathematical/Operator Symbols:** `+`, `-`, `*`, `/`, `%`, `=`, `<`, `>`. (Plus, minus/hyphen, asterisk/star, slash/forward slash, percent sign, equals sign, less than, greater than).
*   **Brackets and Braces:** `( )`, `[ ]`, `{ }`, `< >`. (Parentheses, square brackets, curly braces/curly brackets, angle brackets).
*   **Other Symbols:** `#`, `$`, `&`, `@`, `\`, `_`, `^`, `~`, `|`. (Hash/Pound/Number sign, dollar sign, Ampersand/And sign, At sign, Backslash, Underscore/Low dash, Caret/Hat, Tilde, Vertical line/Pipe).

Many characters have **double meanings** depending on context. The `-` can be a hyphen in text ("8-bit") or a minus sign in mathematics ("8 - 3"). The `<` can denote "less than" mathematically ("3 < 5") or be part of a tag in a markup language (`<br>`).

Knowing the names of these characters, especially less common ones like underscore, caret, tilde, backticks (` `` `), and pipe, is helpful for communication and searching for how to type them, as their location varies across different keyboard layouts.

## Markup Languages

The concept of a markup language comes from traditional publishing. Imagine a newspaper reporter submitting an article to an editor. The editor uses symbols (often in red ink) to "mark up" the text with instructions for the writer (corrections) and the typesetter (formatting). Symbols like "BF" (Big Font), "Cap" (Capitalize), or specific marks for different types of dashes were used. This was the "proofreading markup language."

In the computer world, we needed a way to embed these kinds of instructions *within* the text itself, since we're dealing with a linear sequence of characters. Markup languages achieve this by using specific character sequences (often delimited by special characters like angle brackets or asterisks) to add meaning or formatting instructions to the text.

These instructions can be about:
*   **Presentation:** How the text should look (bold, italics, large font).
*   **Structure/Meaning:** What the text *is* (a title, a list item, a paragraph, a data field).

### Markdown

Markdown is a very popular, simple markup language. It's designed to be easy to read and write in its raw text form, while still being easily convertible (rendered) into formatted documents (like HTML).

Here are some basic Markdown examples:

```markdown
# This is a large title (H1)
## This is a smaller title (H2)
### This is an even smaller title (H3)

This is normal text.

This word is _italic_ (using underscores).
This word is *italic* (using asterisks).

This word is __bold__ (using double underscores).
This word is **bold** (using double asterisks).

You can **combine _bold and italic_**.

*   This is a bullet point (using asterisk)
*   Another bullet point
    -   A nested bullet point (using dash and indentation)

1.  This is a numbered list item (using 1.)
1.  Another numbered item (Markdown renders as 2.)
    1.  A nested numbered item (Markdown might render as 'a.' or 'i.')
```

When a Markdown processor **renders** this text, it converts the markup symbols into the desired formatting:

# This is a large title (H1)
## This is a smaller title (H2)
### This is an even smaller title (H3)

This is normal text.

This word is *italic* (using underscores).
This word is *italic* (using asterisks).

This word is **bold** (using double underscores).
This word is **bold** (using double asterisks).

You can **combine _bold and italic_**.

*   This is a bullet point (using asterisk)
*   Another bullet point
    *   A nested bullet point (using dash and indentation)

1.  This is a numbered list item (using 1.)
2.  Another numbered item (Markdown renders as 2.)
    1.  A nested numbered item (Markdown might render as 'a.' or 'i.')

Markdown is widely used for documentation, README files (common on platforms like GitHub), and simple web content because it's quick to write and highly readable.

### Other Markup Languages

There are many other markup languages:

*   **HTML (Hypertext Markup Language):** The foundational language of the web.
*   **XML (Extensible Markup Language):** Used extensively for data representation, especially in enterprise systems.
*   **YAML (Yet Another Markup Language):** Increasingly popular for configuration files.
*   **Wiki text:** Used for editing wikis, like Wikipedia.

Let's look briefly at HTML. It uses **tags** enclosed in angle brackets (`< >`). Most tags have an opening tag (`<tag>`) and a closing tag (`</tag>`), with the content in between.

```html
<h1>This is a large title (H1)</h1>
<h2>This is a smaller title (H2)</h2>
<h3>This is an even smaller title (H3)</h3>

<p>This is a paragraph.</p>

<p>This word is <em>italic</em> (using em tag).</p>
<p>This word is <strong>bold</strong> (using strong tag).</p>

<ul>
  <li>This is a bullet point (list item)</li>
  <li>Another bullet point</li>
</ul>

<ol>
  <li>This is a numbered list item</li>
  <li>Another numbered item</li>
</ol>
```

HTML is more verbose than Markdown but offers much greater flexibility and control over presentation and structure.

### Tim Berners-Lee and the Web

HTML was initially proposed by **Sir Tim Berners-Lee** while working at **CERN** (the European Organization for Nuclear Research) in the late 1980s. CERN is a major scientific research institution known for large-scale physics experiments (like particle accelerators). Berners-Lee developed HTML and the first web browser and web server as a way to share information among researchers. He later became a key figure in the **W3C (World Wide Web Consortium)**, an organization that develops and maintains web standards.

### Browsers and Rendering Engines

Web browsers (like Chrome, Firefox, Edge, Safari, Brave) are complex software applications. Their primary function is to fetch web resources (HTML, CSS, Javascript, images, etc.) and **render** them into the visual web pages we see.

Browsers rely on **rendering engines** to parse and interpret HTML, CSS, and execute Javascript. Major rendering engines include:
*   **Blink** (used by Chrome, Edge, Brave, Opera, etc., derived from WebKit)
*   **WebKit** (used by Safari)
*   **Gecko** (used by Firefox)

These engines are massive, sophisticated projects. Developing a browser from scratch is a multi-year effort requiring large teams. Browser vendors (Google, Apple, Mozilla, Microsoft) collaborate through organizations like the W3C to develop and agree upon web standards, although differences in implementation and update cycles can still lead to variations in how pages are displayed across browsers. Web developers often need to test their sites on multiple browsers.

## Structured Data

Beyond documents intended for human reading, text formats are widely used to represent **structured data**. The classic example of structured data is a table, with rows representing individual records or items and columns representing properties or attributes of those items.

While tables can be represented in plain text (like CSV - Comma Separated Values), more complex hierarchical data often uses formats like XML or JSON.

### JSON (Javascript Object Notation)

JSON is a lightweight data-interchange format that is easy for humans to read and write and easy for machines to parse and generate. It's based on a subset of the Javascript programming language syntax, but is language-independent.

JSON structures data using:
*   **Objects:** Key-value pairs, enclosed in curly braces `{}`. Keys are strings, values can be strings, numbers, booleans, arrays, or other objects.
*   **Arrays:** Ordered lists of values, enclosed in square brackets `[]`. Values can be any JSON data type.

Here's how data similar to a table row might look in JSON:

```json
{
  "description": "Finding Text About Cats",
  "userId": 123,
  "url": "http://example.com/cats",
  "unitCost": 5.99,
  "numberOfUnits": 10
}
```

A list of such items would be an array of objects:

```json
[
  {
    "description": "Finding Text About Cats",
    "userId": 123,
    "url": "http://example.com/cats",
    "unitCost": 5.99,
    "numberOfUnits": 10
  },
  {
    "description": "Another Item",
    "userId": 456,
    "url": "http://example.com/another",
    "unitCost": 1.50,
    "numberOfUnits": 200
  }
]
```

JSON is ubiquitous today for transmitting data between servers and web pages, in APIs, and for configuration files.

### XML (Extensible Markup Language)

XML is another markup language designed for data representation. It's more verbose than JSON but also more flexible in defining complex document structures. It uses tags similar to HTML but allows defining custom tag names.

Here's the same data represented in XML:

```xml
<items>
  <item>
    <description>Finding Text About Cats</description>
    <userId>123</userId>
    <url>http://example.com/cats</url>
    <unitCost>5.99</unitCost>
    <numberOfUnits>10</numberOfUnits>
  </item>
  <item>
    <description>Another Item</description>
    <userId>456</userId>
    <url>http://example.com/another</url>
    <unitCost>1.50</unitCost>
    <numberOfUnits>200</numberOfUnits>
  </item>
</items>
```

XML was very popular in the 2000s and is still used extensively, especially in older or enterprise systems.

## Serialization

The process of converting data structures (like objects or tables in memory) into a format (like JSON or XML text) that can be stored (in a file) or transmitted (over a network) is called **serialization**. Deserialization is the reverse process. Text formats like JSON and XML are popular for serialization because they are relatively easy for both humans and machines to work with.

## Human Readability vs. Machine Readability

When choosing data formats, there's often a trade-off between human readability and machine efficiency (size, parsing speed).

*   **Machine-readable only:** A barcode is an example. It contains data (the number below it), but only a machine can easily read it.
*   **Human-readable:** Plain text documents are human-readable.
*   **Human *and* Machine-readable:** Formats like JSON, XML, YAML, and Markdown are designed to be relatively easy for humans to read and understand *while* also being structured enough for computers to parse reliably.

Because modern computers are fast and storage/bandwidth is cheap, we often prioritize human readability for development convenience, using text-based formats extensively unless performance becomes a critical issue.

## Escaping Special Characters

What happens if you want to display a character that has a special meaning in the markup language you are using? For example, in Markdown, `#` at the start of a line creates a heading. How do you show a literal `#` at the start of a line?

You need to **escape** the special character. This tells the parser to treat the character literally, rather than interpreting its special meaning.

In Markdown, the backslash (`\`) is the escape character. To show a literal `#`, you type `\#`. To show a literal `*`, you type `\*`.

```markdown
\# This is not a heading.
\* This is not a bullet point.
```

This renders as:

\# This is not a heading.
\* This is not a bullet point.

What if you want to show a literal backslash? You escape the escape character: `\\` renders as `\`.

In other languages, escaping uses different characters or sequences.
*   In many programming languages (like Python or Javascript), the backslash is used to escape characters within strings. If you define a string using double quotes `"`, and you want to include a literal double quote inside, you'd write `\"`. Similarly, if you use single quotes `'` and need a literal single quote, you'd write `\'`.
    ```python
    print("He said, \"Hello!\"") # Output: He said, "Hello!"
    print('It\'s a sunny day.')   # Output: It's a sunny day.
    ```
*   In HTML, special characters like `<` and `>` are escaped using **HTML character references**, which start with `&` and end with `;`.
    *   `<` is escaped as `&lt;` (less than)
    *   `>` is escaped as `&gt;` (greater than)
    *   `&` itself is escaped as `&amp;` (ampersand)

    ```html
    <p>The symbol for less than is &lt;</p>
    ```
    This renders as: The symbol for less than is <

Understanding escaping is crucial when working with text formats and programming languages to ensure that special characters are treated as intended.

## Tools for Working with Text Structure: GitHub

Platforms like **GitHub** are invaluable tools for developers, and they provide excellent support for working with text, including Markdown.

GitHub is a web-based platform primarily used for version control using Git, but it also serves as a collaborative platform and file storage optimized for code and text. Repositories on GitHub are like project folders containing files and directories.

A common file found in GitHub repositories is the `README.md` file, written in Markdown. GitHub automatically renders this file on the repository's main page, providing an introduction to the project.

GitHub includes a built-in Markdown editor. When viewing a Markdown file, you can usually click an edit (pencil) icon. This takes you to an editing interface where you can type in Markdown syntax. It often provides a split view, showing the raw Markdown on one side and a live preview of the rendered output on the other.

Making changes in the GitHub editor involves typing your modifications and then saving them using a "Commit changes" button. A "commit" is essentially a snapshot of your changes, along with a message describing them.

Using GitHub to edit Markdown files is a practical way to get familiar with both the Markdown syntax and the GitHub interface, which is widely used in the software industry. GitHub's utility extends beyond code; some governments even use it to manage and track changes in legislation text.

Understanding how text is structured, the role of special characters and escaping, and the purpose of markup and structured data formats are foundational skills for anyone working with software. Tools like GitHub provide platforms to apply these concepts in practice.

