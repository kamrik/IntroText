# Lecture 3: Structure of Text  
Generated from Zoom audio transcript by ChatGPT

## Overview  
- Focus on text structure in software development.  
- Discussion on markup languages, special characters, and escaping.  
   
## Text Structure  
- **Historical Context**:   
  - Early text structures in printing and typewriting.  
  - Example: Ancient texts with commentary.  
- **Modern Examples**:  
  - Newspapers, ledgers, and digital formats like JSON.  
   
## Key Concepts  
- **Lines and Indentation**:  
  - Lines are fundamental in coding.  
  - Indentation helps in visual understanding.  
- **Paragraphs**:  
  - Important in HTML for text presentation.  
   
## Markup Languages  
- **Markdown**:  
  - Simple syntax for formatting.  
  - Titles: `# Title`, `## Subtitle`  
  - Italic: `_italic_`  
  - Bold: `**bold**`  
  - Lists: `* item` or `- item`  
  - Rendering: Conversion from raw text to formatted view.  
    
- **HTML**:  
  - More verbose than Markdown.  
  - Tags: `<ul>`, `<li>`, `<p>`, `<strong>`, `<h1>`, `<h2>`, `<h3>`  
   
## Special Characters and Escaping  
- **Special Characters**:  
  - Non-alphanumeric symbols like `@`, `#`, `$`, `&`, `*`.  
  - Escape sequences prevent special interpretation.  
  - Example: `\#` to display `#` in Markdown.  
    
- **HTML Escaping**:  
  - Use `&lt;` for `<`, `&gt;` for `>`, `&amp;` for `&`.  
   
## Structured Data  
- **JSON**:  
  - Format: `{"key": "value"}`  
  - Human-readable and widely used for data interchange.  
    
- **XML**:  
  - Similar to HTML, used for data representation.  
  - Tags: `<tag>value</tag>`  
   
## Tools and Platforms  
- **GitHub**:  
  - Platform for version control and collaboration.  
  - Markdown is used for documentation (`README.md`).  
  - Create accounts with personal emails for longevity.  

## Unicode
- Similar to ASCII - assigns numbers to characters, but allows for much larger numbers and therefore more characters.
- While in ASCII the numbers are called "ASCII **codes**", in unicode the name used is "Unicode **codepoints**"
- In contrast to ASCII there are multiple different ways of converting the codepoints into a binary representation:
  - UTF-32 simply uses 4 bytes to store the codepoint number of in binary, but this wastes a lot of space because most bytes end up being filled with zeroes.
  - UTF-8 is identical to ASCII for all the basic characters but uses multiple bytes for codepoints above 127. UTF-8 is by far the most popular encoding on the internet.
- Unicode codepoints are usually written as hex number with prefix `U+` for example `U+21AA` is the codepoint for this character: ↪  
Note that the binary representation for this codepoint will be different depending on which encoding is used, but in most cases we use UTF-8.
   
## Additional Notes  
- **Browsers**:  
  - Complex software handling HTML, CSS, JavaScript.  
  - Different rendering engines: Blink (Chrome, Edge), WebKit (Safari).  
   
- **Lab Exercise**:  
  - Practice editing Markdown on GitHub.  
  - Submit screenshots of rendered Markdown.  
   
## Study Tips  
- Familiarize with Markdown and HTML syntax.  
- Practice using escape characters in different contexts.  
- Explore GitHub for hands-on experience with repositories and Markdown files.