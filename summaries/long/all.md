# Lecture 1 - Historic Introduction about Text and Writing

*   **Course Context:** This course aims to cover fundamental tools for software developers that are often assumed knowledge but are frequently missed, such as keyboard proficiency, text editors, command line, and basic data handling. The initial focus is heavily on text because large part of our daily work deals with textual data.

## Text and Numbers Throughout History

*   **Motivation:** Understanding the history of a concept helps in understanding its current form (Aristotle quote). Computers often add complexity; looking at pre-computer history can simplify understanding. Many modern computing terms have historical roots.

*   **Origins of Writing:**
    *   Early markings: Cave paintings (France, 30,000 years ago) - possibly related to seasons/animals, but not writing.
    *   Counting: Ishango bone (Africa, 20,000 years ago) - definite tally marks, potentially for accounting/tracking.
    *   Early structures: Göbekli Tepe (Turkey, 10,000 years ago) - sophisticated structures with carvings, but no evidence of writing.
    *   First known writing: Appears around 5,000 years ago (3,000 BC). Earliest examples are clay tablets from Mesopotamia.

*   **Mesopotamia and Cuneiform:**
    *   Location: Fertile Crescent, between Tigris and Euphrates rivers (modern-day Iraq). Site of early civilizations.
    *   Earliest Tablets: Found in cities like Uruk/Ur. Often simple receipts (e.g., for barley and beer).
    *   Cuneiform: Means "wedge-shaped" in Latin. Named for the marks made by pressing a stylus into clay.
    *   Process: Started with drawing lines, evolved to pressing simple square/reed styluses into clay, which was faster and easier.
    *   [Show video of cuneiform writing]

*   **Babylonian Number System:**
    *   Symbols: A vertical wedge for '1', a horizontal wedge for '10'. Numbers 1-59 were formed by combining these (additive system).
    *   Example: Receipt likely showed numbers like 32 (three 10s and two 1s).
    *   Base-60 System (Sexagesimal): After 59, they used a positional system similar to ours, but with a base of 60. E.g., a symbol in the "sixties place" meant that value times 60.
    *   Significance: Allowed expression of very large numbers, important for accounting and mathematics.
    *   Terminology: Least significant digit (rightmost, represents units), Most significant digit (leftmost, represents largest place value).
    *   Why Base-60? Theory: Based on counting using fingers and knuckles. One hand counts to 12 (bones in fingers excluding thumb), the other hand keeps track of how many 12s (up to 5 fingers). 12 * 5 = 60.
    *   Legacy: We still use base-60 for time (minutes, seconds) and angles (degrees in a circle).

*   **Other Ancient Number Systems:**
    *   Egyptian Numerals: Had unique symbols for powers of 10 (1, 10, 100, 1000, etc.). Additive system. Example shown on a temple carving (~1.3 million).
    *   Roman Numerals: Symbols (I, V, X, L, C, D, M). Mostly additive, but with subtractive principle (IV=4, IX=9). Example shown on the Coliseum entrance (LII = 52). Messier for arithmetic compared to Babylonian or our system.

*   **Writing Systems vs. Language:**
    *   Early Literature: Epic of Gilgamesh (~4000 years ago, 2000 BC) - one of the earliest known long-form literary works. Story of a king's quest for immortality after his friend's death, includes a flood myth prototype. Shows the human desire to achieve immortality through writing stories.
    *   Behistun Inscription (Iran): Stone carving commissioned by King Xerxes the Great (Persian Empire, ~450 BC). Same text written in three different languages (Old Persian, Elamite, Babylonian) using variations of cuneiform script.
    *   Key Point: A writing system (like cuneiform or the Latin alphabet) can be used to write multiple different languages.

*   **Evolution of Alphabets:**
    *   Most European, Middle Eastern, and African alphabets trace back to Egyptian scripts, evolving through Proto-Sinaitic and the Phoenician alphabet.
    *   Phoenician alphabet gave rise to Greek, which led to Latin and Cyrillic.
    *   Aramaic alphabet (also from Phoenician) led to Arabic, Hebrew, and Syriac.
    *   Independent developments: Chinese script, Mesoamerican scripts (Inca, Mayan - later), Hangul (Korean, 15th century), Canadian Aboriginal syllabics (19th century).

*   **Decline of Cuneiform:** Despite clay tablets being durable, the cuneiform system was eventually abandoned and forgotten as more convenient writing surfaces (parchment, paper) and simpler alphabetic systems became widespread. Knowledge of texts like Gilgamesh was lost until rediscovery and deciphering in modern times.

## Printing History

*   **Early Printing:**
    *   Cylinder Seals: Used in Mesopotamia as early as 4,500 years ago (2600 BC). Rolled onto clay to leave a repeated impression (like a stamp). Example: Queen Puabi's seal.
    *   Woodblock Printing: Carving a whole page/image onto a wooden block, inking it, and pressing onto paper. Oldest known dated example: Diamond Sutra (China, 868 AD). Famous example: The Great Wave off Kanagawa (Japan, 1830s).
    *   Limitation: Difficult to correct errors or change text; required carving a new block for each variation.

*   **Movable Type:**
    *   Concept: Individual characters carved on small blocks that can be arranged and rearranged to form text.
    *   Origins: Developed in China around 1000 years ago (Song dynasty), using wood, clay, or metal.
    *   Advantage: Allows for easy correction and reuse of characters.

*   **Gutenberg and the Printing Press:**
    *   Johannes Gutenberg (Germany, ~1450s): Often credited with inventing printing, but more accurately, he perfected and popularized the movable type printing press in Europe. His success was significantly driven by business and economic factors.
    *   Background: Trained as a jeweler/goldsmith, giving him skills in working with metals and precision.
    *   Process: Developed a method for mass-producing metal types (alloy of lead, antimony, tin). Used a steel punch to create a copper matrix, then poured molten metal into a mold using the matrix. Finding the right alloy was crucial.
    *   Culmination: The Gutenberg Bible (1450s). A commercial enterprise aiming to produce Bibles cheaper than handwritten ones, though still a luxury product (180 copies printed, ~49 survive).

*   **Impact of the Printing Press:**
    *   Economic: Price of books collapsed over time, making them accessible beyond the very wealthy or institutions. [Show graph of book price history].
    *   Social/Cultural: Enabled mass distribution of information. Contributed significantly to the Protestant Reformation and the Renaissance by facilitating the spread of ideas. Within 50 years, thousands of print shops existed across Europe.

*   **Printing Terminology (Still Used Today):**
    *   Type: An individual block with a character on it.
    *   Typeface: The design or style of the letters (the "face" of the type). What we now often call a font family.
    *   Font: Historically, a complete set of types of a specific typeface, size, and style (e.g., 12-point Garamond Italic). Now often used interchangeably with typeface.
    *   Font Weight: Refers to the thickness of the strokes (bold, regular, light).
    *   Case: Uppercase (capital letters) and Lowercase (small letters). Originated from printers storing capital letters in cases on the upper shelf and small letters in cases on the lower shelf.
    *   Serif vs. Sans Serif: Serif fonts have small decorative strokes (serifs) at the end of letter strokes (like Times New Roman). Sans serif fonts ("sans" means "without" in French) do not (like Arial).
    *   Typesetting: The process of arranging type to create a page of text. Modern typesetting software (like Adobe InDesign) continues this tradition.

## Typewriters

*   **Invention:** Appeared in the 19th century (~150 years ago).
*   **Why Invented?** Not primarily for speed initially. Likely motivated by the need for standardized, legible text in business communication, as handwriting could be difficult to read and required educated readers. Typewritten text resembled printed text, improving clarity for a wider workforce.

*   **Terminology from Typewriters:**
    *   Carriage: The part of the typewriter that holds the paper and moves horizontally as you type.
    *   Carriage Return: The action of moving the carriage back to the left margin after finishing a line, and advancing the paper down one line. This is why the Enter key is often called "Return" and its symbol often shows an arrow going down and left.
    *   Margins/Ruler: Typewriters often had adjustable stops or rulers to set the left and right margins. Similar visual rulers exist in modern word processors.
    *   Monospace Fonts: Typewriters typically used fonts where every character occupies the same horizontal width (e.g., 'i' is as wide as 'o'). This was mechanically simpler to implement.
    *   Legacy: Monospace fonts are still predominantly used for writing code today for readability and alignment.
# Lecture 2 - Representing Text and Numbers in Computers

## Introduction
*   Today's topic: How computers store information (text, numbers) in memory.
*   Distinction between short-term (volatile) and long-term (persistent) memory.

## Computer Memory - Why Binary?
*   Many engineering systems find it simpler to communicate or store one of two states.
*   **Historical Example: Morse Code**
    *   Used short and long beeps/flashes.
    *   Invented in the 1840s by Samuel Morse (who was also a painter).
    *   System is still in limited use today.
    *   Demonstrates representing information (letters, digits) using only two distinct signals (short/long).
*   This concept of two states evolved into the **bit**.

## Bits and Bytes
*   **Bit:** Stands for **binary digit**. Represents one of two states (on/off, 0/1, true/false, short/long). The specific physical representation may vary:
    *   *Example:* Light signals - short flash vs. long flash (off isn't a signal in the dark).
    *   *Example:* CD-ROM surface - etched vs. not etched areas.
*   A single bit is very limited. Information is conveyed by grouping bits.
*   **Byte:** A standard group of 8 bits.
    *   Historically, experiments used 6 or 9 bits, but 8 bits became the universal standard. No deep technical reason, just convention.

## Historical Examples of Binary Storage
*   **Punched Cards:**
    *   Idea predates computers (18th century for textile machinery).
    *   Used holes (one state) vs. no holes (other state).
    *   Early computer cards had rows (~8) and columns (~80). Each column could represent a byte (8 bits). A card held about 80 bytes.
*   **Magnetic Core Memory:**
    *   Small rings of magnetic material. Magnetized in one direction or another to represent a bit.
    *   Example shown: 8x8 grid = 64 bits = 8 bytes.
    *   Contrast with modern storage: An 8GB SD card holds a billion times more data than the 8-byte core memory example. Technology advanced significantly.

## Volatile vs. Non-Volatile Memory
*   Most computer systems have two main types of memory based on purpose:
    *   **Short-term Memory:** Used for immediate tasks, currently running programs.
        *   Type: **Volatile** - data is lost when power is off.
        *   Example: **RAM** (Random Access Memory). Optimized for speed and high throughput. Accessing any byte is equally fast ("random access").
    *   **Persistent Long-term Memory:** Used for storing data permanently.
        *   Type: **Non-Volatile** - data persists without power.
        *   Examples: SD cards, Hard Disk Drives (HDDs), Solid State Drives (SSDs). Optimized for capacity and cost. Access speed can vary (e.g., slower on magnetic tape which needs rewinding).
*   **Physical Appearance:**
    *   RAM: Chips on a board (often a stick for laptops/desktops).
    *   Storage: HDDs (spinning magnetic platters, read/write arm - note latency from seeking/rotation), SSDs (based on semiconductor chips, faster than HDDs but slower than RAM, smaller connectors).
    *   **SSD (Solid State Drive):** Named after "solid state physics" which deals with semiconductors.
*   **Common Confusion:** People often mix up RAM and storage when discussing device specs (e.g., phone memory - usually refers to storage, but phones also have RAM). *Ask students for phone memory specs and clarify RAM vs. Storage.*

## Units of Measurement
*   Standard metric prefixes based on powers of 10:
    *   Kilo (k): 10^3 (1,000)
    *   Mega (M): 10^6 (1,000,000)
    *   Giga (G): 10^9 (1,000,000,000)
    *   Tera (T): 10^12 (1,000,000,000,000)
    *   *Ask for examples of "Mega" units outside computers (megajoules, megaparsec, megawatt).*
*   Powers of 2 are also important in computing:
    *   2^8 = 256 (important for bytes)
    *   2^10 = 1024 (close to 1000)
*   **The 1000 vs. 1024 Confusion:**
    *   Historically, people debated whether to use 1000 or 1024 for kilo/mega/giga prefixes when measuring bytes.
    *   Both definitions exist!
        *   Kilobyte (KB): 1000 bytes (based on powers of 10, used by storage manufacturers)
        *   Kilobyte (KB or KiB): 1024 bytes (based on powers of 2, often used in OS/software)
    *   The difference (2.5% for KB) grows significantly for larger units (almost 10% for TB).
    *   There's a convention to use **kibibyte (KiB)**, **mebibyte (MiB)**, etc., for 1024-based units, but it's not widely adopted.
    *   In most cases, the difference doesn't matter, but be aware for precise calculations.
*   **Megabits vs. Megabytes:**
    *   1 Byte = 8 bits.
    *   1 MB = 8 Megabits.
    *   Network speeds are often measured in megabits per second (Mbps) due to historical reasons from early communication standards.

## Representing Numbers
*   Humans decide how to interpret the bits.
*   Engineering convenience led to using the **binary number system** (base 2) to represent numbers directly with bits.
*   **Binary System Basics:**
    *   Uses only two digits: 0 and 1.
    *   **Positional System:** The value of a digit depends on its position.
    *   **Least Significant Bit (LSB):** The rightmost bit (represents 2^0 = 1).
    *   **Most Significant Bit (MSB):** The leftmost bit (represents the highest power of 2).
    *   **Conversion (Binary to Decimal):**
        *   Assign powers of 2 to each bit position, starting from 2^0 on the right (1, 2, 4, 8, 16, 32, 64, 128 for an 8-bit byte).
        *   Sum the powers of 2 where the bit is 1.
        *   *Example (from transcript):* `01010101` (8 bits)
            *   0*128 + 1*64 + 0*32 + 1*16 + 0*8 + 1*4 + 0*2 + 1*1 = 64 + 16 + 4 + 1 = **85** (decimal).
    *   Largest number in 8 bits: All bits are 1 (`11111111`). Sum of 1, 2, 4, ... 128 = **255**. (2^8 - 1).
    *   Largest number in 16 bits (2 bytes): 2^16 - 1 = **65535**.

## Signed vs. Unsigned Numbers
*   When interpreting a chunk of memory as a number, we must know if it's **signed** (can be positive or negative) or **unsigned** (only non-negative).
*   **Unsigned:** All bits contribute to the magnitude (0 to 255 for 1 byte).
*   **Signed:** One bit (MSB) is used to indicate the sign. Modern computers use **two's complement**.
    *   For 8-bit signed numbers, the range is typically **-128 to +127**.
    *   Still 256 possible values, just shifted. The MSB being 1 indicates a negative value (specifically, it contributes -128 to the total for an 8-bit number).

## Representing Fractional Numbers
*   How to store numbers like 3.14 or 0.001?
*   One common approach (related to floating-point representation) is similar to **scientific notation**.
*   Represent the number using two integers:
    *   One integer for the digits (the significand/mantissa, e.g., 314).
    *   Another integer for the exponent (indicating where the decimal point goes, e.g., -2).
    *   *Example:* Digits `314`, exponent `-2`. Start with `314.`, move point 2 places left -> `3.14`.
    *   *Example:* Digits `1234`, exponent `+4`. Start with `1234.`, move point 4 places right (add zeros) -> `12340000`.
*   This method allows representing both very small and very large numbers using a fixed number of bits for the significand and exponent.

## Memory as a String of Bytes
*   It's crucial to understand that at its most basic level, computer memory (RAM or storage) is just a long, linear sequence of bytes.
*   Think of it as a giant array of 8-bit numbers.
*   Programs and operating systems impose structure (variables, data types, files, folders), but the underlying hardware is just addressable bytes (Byte 0, Byte 1, Byte 2...).

## Representing Text - The Ascii Table
*   Need to represent letters and symbols using numbers (bytes).
*   **Ascii (American Standard Code for Information Interchange):** A standard mapping of byte values (0-127) to characters.
    *   Developed for early communication devices like **teleprinters** (electric typewriters connected over distance).
    *   Assignments were somewhat arbitrary but became standard because consistency was essential for communication.
    *   *Examples:* 'A' is 65, 'B' is 66, 'a' is 97, ' ' (space) is 32.
    *   **Control Codes:** Ascii values 0-31 are non-printable characters used for controlling devices (e.g., Bell (7), Line Feed (10), Carriage Return (13)).
    *   Line Feed (10) is still commonly used as the end-of-line marker in text files (especially on Unix/Linux).

## Code Pages
*   Ascii only used 7 bits (0-127). The 8th bit was often unused initially.
*   To represent characters for other languages (non-Latin alphabets) or additional symbols, the values 128-255 were used.
*   However, there was no single standard for this upper range. Different systems/regions created different **code pages** (extensions of Ascii).
*   *Example:* A code page for Cyrillic languages would map values 128-255 to Russian, Serbian, etc., letters. Other code pages existed for Greek, mathematical symbols, or even **box-drawing characters**.
*   **Box-drawing characters:** Used to create text-based graphical interfaces (like tables, boxes) in terminal applications. *Show example of old text-based interface or htop/btop.*
*   **Advice:** Code pages caused compatibility issues ("gibberish" text if the wrong code page was used). Modern systems use **Unicode** and **UTF-8** to handle a vast range of characters, avoiding the code page mess. Avoid code pages if possible.

## Files
*   Files are the primary way we organize data on long-term storage.
*   A file is essentially a **named chunk of bytes** on a storage device.
*   Files are organized hierarchically in folders/directories.
*   **Key Concept:** A file is *just* a sequence of bytes. Its meaning comes from how it's interpreted by software.
*   **Text Files:** Files intended to be interpreted as characters according to a character encoding (like ASCII or UTF-8). When opened in a text editor, they display meaningful text.
    *   *Example:* A `.txt` file, a `.csv` file, source code files (`.py`, `.c`, `.html`).
*   **Binary Files:** Files that are *not* intended to be interpreted directly as characters. Their bytes represent other types of data (images, sounds, executable instructions). When opened in a text editor, they appear as gibberish.
    *   *Example:* `.jpg`, `.mp3`, `.exe`, `.pdf` (PDFs are mixed, often start with text). *Show screenshot of opening an EXE or JPG in Notepad.*
*   **How a Text Editor (like Notepad) Works:**
    *   Reads the file byte by byte.
    *   For each byte, it looks up the corresponding character in its assumed character encoding (often Ascii or a code page initially, now usually UTF-8).
    *   Displays that character on the screen.
    *   Handles control codes (like Line Feed) by performing actions (moving cursor to next line).
    *   If the byte sequence wasn't meant to be text, the resulting characters look random or like symbols from the code page.

## Binary and Hexadecimal (Optional Deep Dive)
*   **Positional Number Systems:** Systems where a digit's value depends on its position (e.g., in 345, the '3' is 300, the '4' is 40, the '5' is 5).
*   **Base (or Radix):** The number of unique digits used in the system.
    *   Decimal (Base 10): 0-9
    *   Binary (Base 2): 0-1
    *   Octal (Base 8): 0-7
    *   Hexadecimal (Base 16): 0-9, A, B, C, D, E, F (A=10, F=15)
*   **Notation/Prefixes:** To avoid confusion, especially in programming, we use prefixes to indicate the base:
    *   Binary: `0b` (e.g., `0b101`)
    *   Octal: `0o` (e.g., `0o17`)
    *   Decimal: (No prefix, default) (e.g., `19`)
    *   Hexadecimal: `0x` (e.g., `0x1F`)
*   **Conversion (Hexadecimal to Decimal):**
    *   Use powers of the base (16).
    *   *Example:* `0x2F`
        *   Positions (from right, starting at 0): 1, 0
        *   Powers of 16: 16^1=16, 16^0=1
        *   Digits: 2, F
        *   Calculation: (2 * 16^1) + (15 * 16^0) = (2 * 16) + (15 * 1) = 32 + 15 = **47** (decimal).

*   **Important Advice on Pronunciation:** Avoid saying "ten in binary" or "fifteen in hex". This is confusing because "ten" and "fifteen" are common words with specific intuitive meaning. Instead, spell out the digits: "binary one zero" (which equals decimal two) or "hex one F" (which equals decimal twenty one). *Use the analogy of pilots spelling out numbers on the radio.*

## Historical Context: Displays
*   Early computers (1960s, like the IBM 360) didn't primarily use screens. Output was often on paper (like a printer).
*   Input was via keyboard, punched cards, or magnetic tape.
*   When screens were introduced, they initially served as replacements for printers. They received the same data streams, including control codes like Line Feed. Text would scroll up.
*   Early screens were often limited in resolution (e.g., 25 lines of 80 characters).
*   **Text Mode:** Displaying the screen content as a grid of characters (where each character is stored as a byte value referencing a font/glyph) was extremely memory efficient compared to storing every pixel.
    *   *Example:* Apple II computer (early personal computer) had very limited memory. A text screen (40x24 characters, ~1000 bytes) was feasible, while a graphical screen (640x480 pixels, ~38KB) was not practical with the available memory.
*   Text mode interfaces remained popular for a long time (e.g., Norton Commander in the 90s) and still exist in modern systems (e.g., htop, btop in Linux terminals) due to efficiency and usability for certain tasks.

## Conclusion
*   We covered how bits and bytes represent numbers and text.
*   Explored the history of data representation standards (Ascii, code pages).
*   Understood files as structured sequences of bytes and the difference between text and binary files.
*   Briefly touched on other number systems (hexadecimal) and historical display technologies.
*   The core idea is that everything in a computer is ultimately stored as bits, and humans/software impose meaning and structure on those bits.

## Recommended Resources
Point students to the optional videos, especially recommend the playlist on binary numbers and the 1964 IBM video for historical context. (see slides for links)# Lecture 3 - Structure of Text

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
# Lecture 4: Manipulating Text & Text Editors

## Introduction & Recap
*   Brief recap of Lecture 3:
    *   History and structure of written text and numbers.
    *   Representing text/numbers using bits, bytes, and ASCII.
    *   Markup languages, specifically Markdown and HTML.
*   Today's focus: Working with text, manipulating it – your tools of the trade.
*   Reference the image of the scribe (Luke the Evangelist, ~1000 AD Constantinople):
    *   Discuss the tools shown (desk, footrest - still relevant concept of comfortable setup).
    *   Emphasize the importance of a comfortable workspace setup (desk, chair, monitor arrangement) to avoid strain and pain from prolonged computer use. It's crucial for long-term health and productivity.

## Agenda

*   Keyboards (basic but essential)
*   Text Editors - one of the most important tools for developers
    *   History (Vi/Emacs)
    *   Introduction to VS Code (most popular nowadays)
*   Searching in Text (Ctrl+F and beyond)
*   Brief Lab Preview - Github Pages

## Keyboards

*   **Importance:** Keyboards and mice are our primary interface to convey thoughts/intentions to the computer. Mastering the keyboard is key.
*   **History:** Word comes from musical instruments. Early typing keyboards looked like piano keys but quickly evolved to the modern layout for mechanical/convenience reasons. The IBM Model M (1985) set a standard for the modern keyboard layout that persists today.
*   **Types & Comfort:**
    *   Show examples of different physical layouts (split, vertical, ortholinear) to illustrate variety.
    *   Reiterate the importance of comfort and ergonomics. Listen to your body; adjust your setup (chair height, desk height, keyboard position) if you feel discomfort or strain. Repetitive Strain Injury (RSI) is a serious risk.
*   **Layouts:**
    *   Distinguish between:
        *   Physical Layout: Key arrangement and shape.
        *   Visual Labeling: What's printed on the keys.
        *   Functional/Software Layout: What characters are produced (can be changed in OS settings, e.g., switching languages).
    *   Common Layouts:
        *   **QWERTY:** Most common globally (historical reasons, standardization). Difficult to switch once learned.
        *   Mention regional variants like QWERTZ (German - Z/Y swap, different punctuation placement) or AZERTY (French). Note the annoyance of different punctuation layouts when switching languages.
        *   Alternative Layouts: Dvorak, Colemak (designed for efficiency, common letters/combinations under strong fingers). Note they are not popular; the benefit in speed is often outweighed by the inconvenience of non-standard layouts. Anything non-standard becomes a problem when using shared computers.
    *   Mention specialized keyboards like those used by stenographers (chord-based entry for speed).
*   **Modifier Keys:** Keys like `Ctrl`, `Shift`, `Alt`, `Windows`/`Command`. They have no function alone but modify other keys (`Shift+A` -> `A`, `Ctrl+C` -> Copy). Mention historical examples (Meta, Super, Hyper). Note icons used in documentation (e.g., Mac Command icon).

*   **Shortcuts:**
    *   Strongly recommend using common shortcuts (`Ctrl+C`, `Ctrl+V`, `Ctrl+Z`).
    *   The main benefit is **reduced cognitive load**, not just speed. Automatism frees up brainpower for more complex thinking.
    *   Customizing shortcuts: Can be useful but often creates inconvenience when using other computers/systems. Sticking to defaults is often better unless there are conflicts between applications (e.g., Photoshop vs. VS Code).

*   **How Keys Work (Hardware Basics):**
    *   **Rubber Dome:** Most common technology. Rubber sheet with domes that collapse when pressed, connecting a circuit. (Like a pop-it toy).
    *   **Mechanical Switches:** Older, used in modern enthusiast keyboards. Involve springs and physical mechanisms. Provide tactile and/or auditory feedback ("clicky"). Different types often named by color (Blue - clicky/loud, Brown - tactile bump/quieter, Red - linear/smooth). Personal preference varies greatly.
    *   No single "best" keyboard. Use what feels comfortable but bee attentive when a keyboard annoys you - this might be a signal to change something.

*   **Key Events:**
    *   Explain that the computer receives events for *both* key press (down) and key release (up).
    *   Show the `evtest` log example: Events include key code, label (e.g., `left control`), and value (1 for down, 0 for up). Timestamps allow measuring press duration.

*   **Programmable Keyboards:** Some keyboards allow programming key combinations. Pressing `Fn` + `A` might send a `Left Arrow` event to the computer, without the computer necessarily knowing the `Fn` key itself was pressed. Niche for enthusiasts.

*   **Touch Typing:**
    *   Typing without looking at the keys.
    *   Historical context: Became important with typewriters (fixing errors was hard). Competitions existed (e.g., Cincinnati 1880s winner using touch typing).
    *   Benefits: Faster speed, better precision, significantly reduced cognitive load and fatigue.
    *   Learning:
        *   Use online training programs (Ratatype, Keybr, Monkeytype, etc.).
        *   Focus on **precision first**, then speed. Type slowly and accurately initially.
        *   Practice regularly (15-20 minutes daily is much better than long sessions rarely).
        *   It's a mechanical skill requiring consistent exposure.
        *   r/typing subreddit is a great resource


## Text Editors

*   **Distinction:**
    *   **Word Processors** (e.g., Microsoft Word): Designed for rich text formatting (fonts, colors, layout). Convenient for documents intended for human reading/printing. **Very inconvenient for writing code** (auto-correct, hidden formatting).
    *   **Text Editors** (e.g., Notepad, Notepad++, VS Code, Vim): Designed for plain text. Each byte typically corresponds directly to a character via ASCII. Provide precise control over the raw text file. **Essential for writing code**.
    *  **Unicode** optionally, mention how in UTF-8 some characters are represented using multiple bytes

*   **IDEs (Integrated Development Environments):**
    *   Historically distinct, now blurring the line with advanced text editors.
    *   Combine a text editor with many other tools for software development (compilers, debuggers, build tools, version control integration, etc.).
    *   Often optimized for specific programming languages (e.g., WebStorm for web dev, PyCharm for Python, Visual Studio for C#/Microsoft stack).
    *   Mention early examples like Turbo C++ (text-mode IDE).

*   **History:**
    *   **Vi** (later **Vim**) and **Emacs**: Released around the same time (1976). Famous for sparking "religious wars" among developers.
    *   Still widely used today. Vim is often pre-installed on Unix-like systems (Linux, macOS), making it a common default terminal editor.
    *   Mention Vim's modal nature (insert mode for typing, command mode for actions).
    *   Show how to exit Vim: `Esc`, then `:q!`, then `Enter`.
    *   Mention resources like Vim Adventures (a game to learn Vim basics).

*   **VS Code (Visual Studio Code):**
    *   Developed by Microsoft, but is open source and free (distinct from the commercial Visual Studio IDE).
    *   Released relatively recently (2015) but has become the most popular text editor/lightweight IDE.
    *   According to Stack Overflow Developer Survey about 75% of respondents reported using it in some capacity (not always as their main editor). Note survey bias towards younger, more enthusiastic developers.
    *   Pros: Very popular (useful for collaboration, internships), feature-rich, large extension ecosystem.
    *   Cons: Can become resource-heavy especially if many extensions are installed.
    *   Recommendation: Use VS Code for this course unless another editor is specifically required or you have a strong preference for another. Using the same tool as the instructor/classmates simplifies asking for and receiving help.


## Searching in Text

*   **Basic Search:** `Ctrl+F` (or `Cmd+F` on Mac) is the fundamental shortcut. Use it everywhere (browsers, documents, editors).
*   **Search and Replace:** Often `Ctrl+H`. Useful for bulk changes (e.g., renaming variables).

*   **Editor Search Features:** Demonstrate common options in a text editor (VS Code):
    *   **Match Case:** Toggle case-sensitive search. Important in programming where `variable` and `Variable` can be different.
    *   **Match Whole Word:** Only find occurrences that are standalone words (surrounded by space, punctuation, or line breaks), not substrings within other words.

*   **Fuzzy Search / Patterns:** Introduce the need to search for patterns rather than exact strings when the target isn't precisely known.
*   **Wildcards:** Simple pattern matching, often used in file systems (`*.txt`, `?a?`). Explain `*` (any characters) and `?` (any single character). The term "wildcard" originated from card games where some card (usually the Joker) could be used in place of any other card. 

*   **Regex (Regular Expressions):**
    *   **Concept:** A powerful, complex language for describing text patterns. Can look like "line noise" (show the complex email regex example).
    *   **Goal for this class:** Awareness of its existence and capability. Fluency is not expected.
    *   **Basic Syntax Examples (Demonstrate in editor/regex tool):**
        *   Literal characters match themselves.
        *   Character Sets: `[abc]` (matches 'a', 'b', or 'c'), `[A-Z]` (matches any uppercase letter), `[0-9]` or `\d` (matches any digit).
        *   Quantifiers: `+` (one or more of the preceding element), `*` (zero or more), `{n,m}` (between n and m times).
        *   Show simple examples like searching for "line" followed by one or more digits (`line\d+`).
    *   **Tools:** Mention online regex testers/debuggers (Regex101, RegExr) that help build and explain regex patterns.
    *   **Practicality:** Useful in editors for advanced search/replace. ChatGPT is very good at generating regex patterns, then you can test them in a debugger like RegExr. Debugging complex regex is notoriously difficult.


## Lab Preview / Integrated Demo

*   **Github Pages:**
    *   It's a static site hosting service built into Github.
    *   Allows publishing a website directly from a repository, often rendering a Markdown file (like `README.md`) as a webpage.
    *   Show the transformation from a raw Markdown file to a formatted webpage hosted on a `github.io` URL.
    *   Screenshots in lab instructions show how to enable GitHub Pages for a repository.
    *   Note the typical ~1 minute delay for changes to appear after committing (can check progress in the "Actions" tab).
    *   Show how changing the `theme` setting in the `_config.yml` file dramatically changes the visual appearance of the page. Show committing this change and waiting for the update. Suggest exploring different themes.
*   **VS Code in Browser (`.dev` trick):**
    *   Show the neat trick: changing `github.com` in the URL to `github.dev` launches a web-based version of VS Code directly connected to that repository.
    *   Demonstrate the VS Code interface (File Explorer, Editor pane, Source Control tab).
    *   Show editing the Markdown `README.md` file.
    *   Show opening the Markdown preview side-by-side and demonstrating live updates as text is typed/changed.
*   **Editor Features (Demo):**
    *   **Multiple Cursors:** Show selecting a word and using `Ctrl+D` (or equivalent) to select subsequent occurrences. Demonstrate typing simultaneously at multiple cursor locations. Even if not always useful, it looks very impressive. 
*   **Versioning (Source Control Tab):**
    *   Show the Source Control tab (Git integration) in VS Code.
    *   Show how it lists modified files.
    *   Show the diff view, highlighting exactly what lines were added/changed/deleted.
    *   Demonstrate committing changes: entering a commit message explaining what and *why* was changed for history tracking and pushing to the Github repository.

## Resources

*   Recommend exploring the resources linked in the slides:
    *   Typing training sites (Ratatype, Keybr, Monkeytype, etc.)
    *   Typing subreddit and guide.
    *   Online Regex testers/debuggers (Regex101, RegExr).
    *   Vim learning resources (Vim Adventures game, articles).
    *   Fireship videos (short, fast-paced tech explanations).# Lecture 5: Command Line Interfaces (CLI)

This lecture introduces students to the command-line interface, its history, fundamental concepts, and practical uses, particularly in software development and remote server interaction.

## Recap of Previous Weeks

*   Subjects covered in the previous weeks:
    *   History and structure of text/numbers before computers.
    *   Bits, bytes, ASCII encoding.
    *   Importance of mastering the keyboard (touch typing practice).
    *   Text editors (tool of the trade, ongoing learning/discussion).
    *   Searching (`Ctrl+F`), awareness of Regular Expressions (Regex).

## Introduction to Command Line Interfaces (CLI)

*   What is the "black terminal" or CLI?
*   It's an interface where you type commands and the computer responds with text.
*   Analogy: It's like talking to a Chatbot with a very specific and limited set of commands.

## History of CLIs

*   **Early Days:** CLI was the *only* way to interact with computers.
*   **Teletype Machines:** Connected printers and keyboards to computers.
    *   Operator typed a command.
    *   Command was printed on paper.
    *   Computer processed and printed the reply on paper.
    *   This was a direct command-reply dialogue.
    *   Commands were often shortened (2-3 letters) for efficiency, leading to cryptic command names today.

*   **TV Screens (Virtual Terminals):** As TVs became widespread, screens replaced paper printers.
    *   Huge saving on paper.
    *   More convenient (see what you type, easy correction).
    *   Mode of operation remained the same: type command, get text reply.
    *   Examples: VT100 terminal.
*   **Text-based Games:** Games like Zork demonstrated this interactive text-based dialogue format.

## Anatomy of a Modern CLI

*   **Prompt:** The text displayed before you type a command.
    *   Often contains useful info: username, computer name, current directory.
    *   Example: `user@hostname:~/current/directory$`
    *   `~` often represents the user's home directory.
    *   The symbol at the end (`$`, `#`, `>`) is just the end of the prompt.
*   **Command:** The instruction you type.
*   **Response/Output:** The text the computer prints after executing the command.
*   **Cursor:** Blinking indicator inviting the next command.

## Why Use the CLI? (Advantages)

*   **Functionality:** Some tools or features are *only* available via CLI (cheaper/easier to build CLI tools than GUI).
*   **Speed:** Much faster for certain types of work.
*   **Precise Control:** Allows specifying details down to the tiniest level.
*   **Automation:** Commands are lines of text. Can easily create scripts (text files of commands) to automate repetitive tasks.
*   **Remote Work (SSH):** Works extremely well over networks, even slow ones, due to low bandwidth requirements (sending text commands and receiving text replies).
*   **Low Resource Usage:** Doesn't require graphical rendering, less demanding on the computer and can therefore be used to control tiny devices.
*   **Looks Cool**

## SSH (Secure Shell)

*   Primary tool for connecting to remote computers over a network.
*   Replaced older, less secure methods.
*   **Secure:** Communication is encrypted for privacy.
*   **Shell:** Refers to the command-line environment you get on the remote machine.
*   Basic usage: `ssh username@server_address`
*   After connecting, you get a command prompt on the remote server, just like a local one.

## Lab Demonstration (Bandit Game)

*   Use the Bandit game (an information security wargame) as a practical CLI exercise.
*   Game is text-based on a remote server.
*   Goal: Find the password for the next level in each level.
*   Start with `bandit0`.
*   **Connecting:** `ssh bandit0@server_address`
*   Enter password (initially `bandit0` for level 0). Password typing is hidden (no stars/feedback).
*   Once connected, the prompt shows the current level (e.g., `bandit0@bandit:~$`).
*   **Basic Commands for Exploration:**
    *   `ls`: List files in the current directory.
        ```bash
        ls
        ```
    *   `ls -l`: Long listing format (shows permissions, owner, size, date/time).
        ```bash
        ls -l
        ```
    *   `ls -a`: List *all* files, including hidden ones (starting with `.`).
        ```bash
        ls -a
        ```
    *   `pwd`: Print Working Directory (show the full path of the current directory).
        ```bash
        pwd
        ```
    *   `cd directory_name`: Change directory to `directory_name`.
        ```bash
        cd /home/bandit1
        ```
    *   `cd ..`: Change directory to the parent directory.
        ```bash
        cd ..
        ```
    *   `cd ~` or `cd`: Change directory to the home directory.
        ```bash
        cd
        ```
*   **Getting Help:**
    *   `man command_name`: Display the manual page for a command (interactive, use `q` to exit).
        ```bash
        man ls
        ```
        *   Can search within `man` pages using `/` followed by the search term.
*   **Viewing File Contents:**
    *   `less filename`: View file content interactively (can scroll, search, use `q` to exit). Name is a historical joke (better than `more`).
        ```bash
        less readme
        ```
    *   `cat filename`: Concatenate (print) file content directly to the terminal and exit immediately. Good for short files or scripting.
        ```bash
        cat readme
        ```
*   **Tab Completion:** Emphasize using the `Tab` key to autocomplete commands and filenames. Saves typing, reduces errors.
*   **Copy/Paste:** Mention it can be finicky due to historical reasons (`Ctrl+C` often being the keyboard interrupt). On Windows terminals, selecting text often copies, and right-click often pastes. Mac/Linux terminals might use `Cmd+C`/`Cmd+V` or `Ctrl+Shift+C`/`Ctrl+Shift+V` depending on configuration.

*   **Solving Level 0:** Use `cat readme` to display the password. Copy the password.
*   **Exiting:** Use `exit` to disconnect from the SSH session.
*   **Connecting to Level 1:** Change the username in the SSH command: `ssh bandit1@server_address`. Paste the password obtained from Level 0.
*   **Solving Level 1:** Challenge is a file named `-`. `ls` shows `-`. `cat -` won't work directly (dash is interpreted as an option). Solution: `cat ./-` (`./` specifies the current directory, making the file name explicit).

## Starting the Terminal on Your Computer

*   How to open the black window:
    *   **Mac OS:**
        *   Spotlight Search (`Cmd + Space`) -> Type "Terminal" -> Enter.
        *   Applications -> Utilities -> Terminal.
    *   **Windows:**
        *   Start Menu -> Search bar -> Type "Terminal", "Cmd" or "Powershell".
    *   Mention **Putty** as a third-party alternative, especially for older Windows versions or if built-in options are problematic. It's a simple SSH client.


## Windows Subsystem for Linux (WSL)

*   Allows running a Linux environment (like Ubuntu) directly within Windows.
*   **Benefit:** Get the advantages of Linux command-line tools and development environments while still using Windows GUI applications.
*   Often preferred for certain types of development (e.g., web development with Node.js, Ruby, Python) where tools are primarily optimized for Linux/Mac OS.
*   Easy installation: Available from the Microsoft Store (search for "Ubuntu" and choose the latest LTS version like 24.04 LTS).
*   Can integrate with tools like VS Code (VS Code runs on Windows, but can operate on files and run commands within the WSL environment).

## CLI Command Structure

*   General format: `command [subcommand] [options/flags] [arguments]`
*   **Command:** The main program name (e.g., `ls`, `cat`, `cd`).
*   **Subcommand:** Some complex tools have subcommands (e.g., `git add`, `git commit`).
*   **Options/Flags:** Modify command behavior. Start with `-` (short form, e.g., `-l`, `-a`) or `--` (long form, e.g., `--long`, `--all`). Can often combine short options (`ls -la`).
*   **Arguments:** The inputs the command operates on (e.g., filenames, directory names). `cat readme` (`readme` is the argument).

## More Useful Basic Commands

*   `cp source destination`: Copy files or directories.
*   `mv source destination`: Move (rename) files or directories.
*   `mkdir directory_name`: Make (create) a new directory.
*   `ping hostname_or_ip`: Send network packets to a host to test connectivity and measure latency.
    ```bash
    ping google.com
    ```
    *   Use `Ctrl+C` to stop `ping`.

## `grep` Command

*   A powerful tool for searching plain-text data.
*   Searches for lines matching a specified pattern (often a regular expression).
*   Basic usage: `grep pattern filename` (find lines containing `pattern` in `filename`).
    ```bash
    grep build tst.json
    ```
*   Can search recursively through directories (`grep -r pattern directory/`).

## Input/Output Redirection and Piping

*   **Standard Output (stdout):** Where a command usually sends its output (by default, the terminal).
*   **Standard Input (stdin):** Where a command usually receives its input (by default, the keyboard).
*   **Redirection (`>` and `>>`):** Change where standard output goes.
    *   `command > file`: Redirect output to a file, *overwriting* the file if it exists.
        ```bash
        ls -l > listing.txt
        ```
    *   `command >> file`: Redirect output to a file, *appending* to the file if it exists. Useful for logs.
*   **Piping (`|`):** Connect the standard output of one command to the standard input of another command.
    *   `command1 | command2`: Output of `command1` becomes input for `command2`.
    *   Example: Use `wc -l` (word count, `-l` counts lines) to count the output lines of `ls -l`.
        ```bash
        ls -l | wc -l
        ```
*   **Fun Examples with Pipes:**
    *   `cowsay message`: A command that prints a cow saying `message`.
    *   `lolcat`: A command that adds rainbow colors to text input.
    *   Combine them: `ls -l | wc -l | cowsay | lolcat` (Pipe the line count to cowsay, then pipe cowsay's output to lolcat for color). Requires installing these utilities (often easier on Linux/Mac).

## Unix Philosophy

*   A design philosophy originating from the Unix operating system.
*   Core idea: Build small, simple, specialized programs that do one thing well, and provide mechanisms (like pipes and redirection) to connect them together to perform complex tasks.
*   Contrast: Building large, monolithic programs that try to do everything.
*   Benefit: Easier to develop, test, and maintain small tools. Analogy to modern "microservices" architecture.
*   Caveat: it's not always possible, sometimes the subsystems are tightly coupled and you can't really avoid building a large monolith.

## Other Network/CLI Tools

*   **scp (Secure Copy):** Copy files over an SSH connection.
    ```bash
    scp local_file user@server:remote_path
    ```
*   **ftp / sftp (File Transfer Protocol / Secure FTP):** Protocols for transferring files. Sftp is the secure, encrypted version.
    *   Often used with GUI clients like **Filezilla**  - a GUI application for file transfer between local and remote servers.

## Text-based User Interfaces

*   Interactive applications that run within the terminal but provide a more structured interface than just a command prompt.
*   Use text characters to draw windows, menus, graphs, etc.
*   Example: `htop` or `btop` (system monitors showing CPU, memory, processes).
    *   Useful for monitoring remote servers via SSH.
    *   Interactive (can navigate, sort, kill processes).
    *   Exit typically with `q`.

## `tmux` (Terminal Multiplexer)

*   A tool to manage multiple terminal sessions within a single window or SSH connection.
*   Key benefits:
    *   **Session Persistence:** Keep processes running on a remote server even if your local connection drops or you disconnect.
    *   **Window/Pane Management:** Split the terminal window into multiple panes, run different commands in each.
*   Useful for complex remote work or running background processes.

## Recommended Resources

*   Command Line Crash Course video (available on D2L).
*   Articles on `tmux` and `htop` for advanced use

## Conclusion

*   The command line, while seemingly archaic, remains a powerful and essential tool for developers, system administrators, and anyone working extensively with computers, especially remotely.
*   Basic navigation, file manipulation, and understanding redirection/piping unlocks significant capabilities.
# Lecture 6: Git, GitHub, Diff, and Versioning

*   **Recap:** Building on previous weeks' tools (keyboard, text editor, command line), today focuses on source control, specifically Git and GitHub.

*   **The Problem of Managing Versions:**
    *   Manually tracking file versions (e.g., `report_final_v2_really_final.doc`) is chaotic and error-prone.
    *   Knowing *exactly* what changed between versions is difficult.

*   **Version Control Systems (VCS):**
    *   Tools developed to manage versions systematically.
    *   Relevant in many fields beyond software:
        *   *Mechanical Engineering:* Critical for managing blueprints (expensive to machine the wrong version). Need to track parts for different product versions (e.g., car models).
        *   *Legal Documents:* Managing text versions and tracking changes is essential.
    *   Software developers are relatively lucky: Text files are easier for computers to compare than complex blueprints.

*   **Comparing Differences (Diff):**
    *   Even small text file differences can be hard for humans to spot manually.
    *   Automated tools help highlight changes.
    *   *VS Code Example:* Shows side-by-side comparison, highlighting added/removed lines and even changed words within lines (mention this word-level highlighting is a newer feature).
    *   *Command Line `diff`:*
        *   The original tool.
        *   Example command: `diff old_file.txt new_file.txt`
        *   Output is cryptic but describes changes: `[line_range_old][action][line_range_new]`.
        *   Actions: `a` (add), `c` (change), `d` (delete).
        *   Example interpretation: `2a3` means add line(s) from the new file (starting at line 3) after line 2 in the old file. `7c8` means change line 7 in the old file to line 8 in the new file (line number changes due to prior addition).
    *   *Diff as a Recipe / Patch Files:* The diff output is a description of how to transform the old version into the new version. This output can be saved as a "patch file".

*   **Historical Context: Linux Kernel Development:**
    *   Linus Torvalds (creator of Linux kernel, started as a university homework project in Finland) developed Git.
    *   Around the year 2000, Linux kernel developers (working on a large codebase, ~10 million lines then, ~25 million now) would email patch files to each other to share changes.
    *   Transferring the whole source code was difficult (large size, limited email attachments), but patches were small.
    *   This email-based workflow was inconvenient
    * Linux kernel switched to using a commercial system called BitKeeper 
    * After a conflict with BitKeeper Linus decided to write his own.
    * Git was created in April 2005.

*   **Git vs. GitHub:**
    *   *Git:*
        *   The core, open-source, free software tool.
        *   Installed *locally* on your computer.
        *   Manages the repository data (history, versions) in a hidden `.git` directory within your project folder.
        *   Communicates with remote repositories.
    *   *GitHub:*
        *   A *commercial service* (started ~2008, later acquired by Microsoft).
        *   Provides cloud hosting for Git repositories.
        *   Offers *additional features* on top of Git (web interface for browsing/editing files, issue tracking, project management, CI/CD, etc.). Web editing used in labs is a GitHub feature, not core Git.
    *   *Alternatives:* GitLab, Bitbucket, Perforce (used internally by some large companies like Google).
    *   *Key Distinction:* Git is the engine, GitHub is a platform that uses the engine and adds services.

*   **Using Git - The Basics:**
    *   Git has extensive functionality and can be overwhelming; focus on the essential workflow.
    *   Most developers only use a subset of Git commands/features daily.

*   **Git Clients:**
    *   You interact with Git through a client.
    *   *Command Line:* The original interface, powerful, uniform across operating systems (Windows, macOS, Linux) and useful for remote work.
    *   *Integrated Development Environment (IDE) Clients:* Built into editors like VS Code and JetBrains products (WebStorm, PyCharm, etc.). Recommended for beginners due to visual interface (VS Code Source Control pane).
    *   *Standalone GUI Clients:* GitHub Desktop (simple, GitHub-focused), Git GUI/Gitk.
    *   *Text-based GUI Clients:* `git ui` (example of a command-line tool with a text-based interactive interface).

*   **Local and Remote Repositories:**
    *   A Git repository exists in at least two places:
        *   *Remote:* On a server (e.g., GitHub). This is the shared version.
        *   *Local:* On your computer. This is your working copy.
    *   *Clone:* The action of making the *initial* copy of a remote repository onto your local machine. This copies the entire project *and* its full history.
    *   *Pull:* The action of fetching the latest changes *from* the remote repository *to* your local repository and updating your local files.
    *   *Push:* The action of sending your local commits *from* your local repository *to* the remote repository.

*   **The Core Git Workflow Cycle:**
    1.  *Initial Setup:* `Clone` the repository from the remote server (done once).
    2.  *Start Work Session:* `Pull` the latest changes from the remote to ensure your local copy is up-to-date with collaborators.
    3.  *Modify Files:* Edit project files using any text editor or IDE. These changes are initially only on your local file system.
    4.  *Save Progress Locally:* `Commit` your changes.
        *   *Commit (verb):* The action of saving changes into the local Git repository (`.git` directory).
        *   *Commit (noun):* A snapshot of the project at a specific point in time, along with a message describing the changes. It represents a logical unit of work.
        *   Commits are stored in the `.git` directory on your local machine. The remote server doesn't know about them yet.
    5.  *Share/Backup:* `Push` your local commits to the remote repository. Now collaborators can see your changes, and the remote serves as a backup.
    6.  *Repeat:* Go back to step 2 (`Pull`) before starting the next unit of work to get any changes others might have pushed.
    *   *Sync:* Many GUI clients offer a "Sync" button, which typically performs a `Pull` followed by a `Push`.

*   **Inside the Local Repository (`.git`):**
    *   When you clone, a hidden `.git` directory is created.
    *   This directory contains all the repository data, including the complete history of commits.
    *   It's just a file system structure.
    *   Different Git clients (command line, VS Code, etc.) can all operate on the same `.git` directory.
    *   Editing files in your project folder *does not* automatically update the `.git` repository. You must `Commit` them.
    *   The history within `.git` is primarily append-only; you rarely delete commits, rather you add new commits based on previous states or create new history lines (branches).

*   **Working with Changes (VS Code Demo):**
    *   VS Code's "Source Control" pane shows modified files.
    *   *Changes:* Files that have been modified since the last commit but are not yet staged.
    *   *Staging Area:* An intermediate step before committing. You select which changes (`git add` in command line, '+' button in VS Code) you want to include in the *next* commit.
    *   *Why Stage?* To create commits that represent logical units of work, even if you've made unrelated changes in different files.
    *   *Commit:* Button/action to save the staged changes. Requires a commit message (important for understanding history).
    *   *History View:* Shows the sequence of commits. Can click on commits to see the diff (changes introduced). Shows where local branches (`main`) and remote branches (`origin/main`) point in the history.
    *   *Sync:* Button to perform pull and push.

*   **Cloning in VS Code (Demo):**
    *   Start with an empty VS Code window.
    *   Use "Clone Repository" feature (e.g., "Clone from GitHub").
    *   Select the remote repository from a list (if logged into GitHub) or paste the URL.
    *   Choose a local directory to save the project.
    *   VS Code downloads the repo (files + `.git` folder) and opens it.

*   **Workflow with Multiple Collaborators:**
    *   Everyone `Clones` initially.
    *   Everyone `Pulls` at the start of work.
    *   People work and `Commit` locally throughout their session.
    *   When ready to share/backup, they `Push`.
    *   *Conflicts:* If two people modify the *same part* of the *same file* based on the same starting version, Git cannot automatically merge the changes.
    *   *Merge Conflicts:* Git will flag the conflict and require the human developer to manually resolve it (choose which changes to keep, or combine them) before a final merge commit can be made and pushed.
    *   *Importance of Communication:* Technological tools like Git help manage changes but *do not* replace the need for human communication among team members. Miscommunication leads to merge conflicts escalating into human conflicts and hinders progress.

*   **Branching:**
    *   *Problem:* Need to maintain a stable version (e.g., running on production servers) while simultaneously developing new, potentially unstable features.
    *   *Solution:* Create separate lines of history called branches.
    *   *Example:*
        *   A `main` (or `master`) branch for stable releases.
        *   A separate development branch for ongoing feature work.
        *   If a bug is found in the `main` branch, you can create a new branch *from* that specific release commit, apply the fix, and release the fixed version from this new branch, without interrupting the main development branch.
    *   Git is very efficient at creating and managing branches.
    *   *Cost:* While cheap for the computer, managing too many branches is complex and confusing for humans. It's generally best to minimize the number of active branches.
    *   Developers can easily switch between branches (`git checkout`/`git switch`) to work on different tasks or versions.

*   **Command Palette UI Pattern:**
    *   A UI pattern where typing into a search box reveals and allows execution of commands or actions (e.g., macOS Spotlight, Windows Start Menu search).
    *   Common in development tools:
        *   *VS Code:* `Ctrl+P` (file quick open), `Ctrl+Shift+P` (command palette for all commands).
        *   *Windows Terminal:* `Ctrl+Shift+P` (command palette for terminal settings/actions).
    *   Similar to command line in that you type to find functionality, but provides immediate visual suggestions and executes actions directly in the GUI.

*   **Assignment note: Debugging GitHub Pages:**
    *   If your GitHub Pages site isn't updating after pushing changes, check the "Actions" tab in your GitHub repository online.
    *   Look for workflow runs (often triggered by pushes to the main branch) that are marked red (failed).
    *   Click into the failed workflow run, then click on the failing job/step (also often red).
    *   Read the build logs for error messages (e.g., "theme not found" indicates a typo in the theme name in the `_config.yml` file).

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
*   Text formats can be wasteful (e.g., repeating key names like "title" many times in an array of objects) and slower to parse.
*   Binary formats are optimized for space efficiency and processing speed by computers, not for human readability.
*   *Historical Context:* binary used to be the main option because memory, storage and network were very expensive.
*   Optionally mention gRPC as an example of a modern binary serialization format.


**Lab Introduction & Demonstration**

*   Lab goal: Convert simple tabular data from CSV format into JSON and YAML.
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
    *   Lesson: Highlights the significant influence of spreadsheets on various fields and how persistent even seemingly simple problems can be. Spreadsheets are not going away, even for people using programming languages like Python.

### Airtable
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

*   **Airtable Backups and Export:**
    *   Address the question of backups. Note it can be a challenge. Paid Airtable accounts often offer better backup options.
    *   Mention "Revisions": Airtable keeps a history of record changes, allowing rollback (like Google Docs history). This is a partial replacement for full backups.
    *   Show how to export data: Explain that individual views (like the Grid view) can often be downloaded as CSV files (demonstrate finding the "Download CSV" option in the view menu).
    *   Mention third-party services that specialize in synchronizing Airtable data to other databases or providing more robust backup solutions, sometimes offering near "live" sync.

*   **Other Similar Tools:**
    *   Open source: NocoDB, BaseRow.
    *   Notion: Its database feature provides similar functionality to Airtable databases.

*   **History of Database + UI Tools:**
    *   Reiterate that Airtable's concept (database tightly coupled with a user-friendly interface) is not entirely new.
    *   **dBase:** Extremely popular in the 1980s & 90s, combined database functionality with tools for building user interfaces.
    *   **FoxBase / FoxPro:** Inspired by dBase, acquired by Microsoft. Was often used in accounting departments for payroll, inventory etc. Ran on PCs, used text-mode interfaces (which were very fast).
    *   **Microsoft Access:** Appeared in 1992, part of Microsoft Office. Largely replaced FoxPro. Still used by a significant number of professional developers (~3.5% in a recent Stack Overflow survey). Microsoft didn't promote Access much, perhaps intentionally, to avoid competing with more expensive products like SQL Server. Historically had collaboration issues when used locally. Basic logic similar to Airtable.

*   **Modern No-code/Low-code Landscape:**
    *   Describe the current wave of tools: Airtable, Bubble (web apps), Adalo (mobile apps), Notion, Webflow (websites), etc. Show a graphic with logos if available.
    *   Contrast with a previous wave: RAD (Rapid Application Development) tools like Access and Visual Basic. Note that some concepts from this era are now integrated into modern development environments (.NET UI).
    *   Discuss the ongoing debate about no-code/low-code: Some love it, some hate it, some see it as just another tool.
    *   Highlight the core trade-off: Speed of development vs. Flexibility and Control.
    *   Mention the "complexity wall": Both no-code tools and traditional coding projects eventually hit limits on complexity, but no-code tools often hit it sooner. Managing complexity is key in both scenarios.


*   **Conclusion:**
    *   Spreadsheets are powerful, widely used tools with a long history. Airtable represents a modern evolution, bridging spreadsheets and databases, providing an accessible way to build structured, relational systems. Understanding these tools is valuable for developers.
    *   Encourage students to engage with Airtable for their own use like keeping a list of tasks or assignments.
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
*   Feeling lost is normal; hands-on practice will make it feel simpler.# Lecture 12: SQL - Managing Data and Structure

*   **Recap and Introduction:**
    *   We've spent significant time on data retrieval using `SELECT` queries, covering single records, multiple records, filtering, sorting, and grouping.
    *   Today, we move beyond just reading data to discuss how data is managed and how the database structure itself is defined.
    *   The main functions of a database include Retrieval (covered), Updating (new today), and Managing (starting today).

*   **Data Definition Language (DDL):**
    *   This is the part of SQL used for defining, modifying, and deleting database structures like tables.
    *   It's not a separate language, but a subset of SQL.
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
        *   This concept can initially seem counter-intuitive but is standard practice in relational database design. This will be covered more deeply in a dedicated database course nex semester.

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
    *   https://www.hackerrank.com/domains/sql
    *   YouTube playlists and videos offering introductions to SQL and databases (some more dramatic, some more in-depth covering installation, indices, etc.).
    *   Reddit's r/SQL community is a good resource for questions and discussions.
    *   More links in the slides.
# Lecture 13: Date and Time

*   **Introduction: Why Time is Messy in Software**
    *   Timekeeping seems simple initially, but it can be surprisingly complex. Salvador Dali's painting can be a metaphor for this complexity.

*   **Three Key Takeaways (Mention upfront and recap at the end)**
    *   Humans *name* periods of time (days, months, years, hours, seconds) and set the rules. These are human inventions, not laws of nature. Agreement is the hard part.
    *   When in doubt about time zones, use **UTC** (Coordinated Universal Time).
    *   For writing dates and times in computer applications, the **ISO format** (Year-Month-Day Hour:Minute:Second) is highly recommended.

*   **Measuring Time: From Sundials to Atomic Clocks**
    *   Early humans/animals used the daily rythms (sunrise, sunset) and internal biological processes (like hunger and sleepiness).
    *   As societies developed, measuring time within a day became more important.
    *   **Sundials** were early tools (Ancient Egypt, ~3500 years ago, similar era to cuneiform tablets). They measure time based on the sun's position.
    *   More advanced sundials could also function as calendars (Korean example).
    *   **Defining an Hour:** Traditionally, 1/24th of a day. Why 24? Theories exist (dozen for day, dozen for night), but the origin is unclear.
    *   **Mechanical Clocks** (like pendulum clocks) introduced a different way to measure time, based on different physics independent of Earth's rotation.
    *   **Earth's Movements:**
        *   Rotation on axis: Defines the day/night cycle.
        *   Orbit around the sun: Defines the year (time for one orbit). Seasons are due to axial tilt.
        *   Astronomical events like **equinoxes** (equal day/night) and **solstices** (longest/shortest day) are precisely measurable.
    *   **Need for Precision:** Became critical for **navigation**, determining **longitude** - East-West position is very difficult without a precise clock. Latitude was easier (sun's highest point).
    *   Precise ship clocks were a major challenge. Pendulum clocks didn't work well on ships due to motion.
    *   The **British Parliament** offered a large prize in the 18th century for an accurate ship clock (chronometer).
    *   The invention of accurate chronometers in the **1700s** significantly improved navigation, allowing ships to travel diverse routes across the ocean.
    *   *Historical Anecdote:* This invention contributed to the **end of the golden age of piracy**, as ships no longer needed to congregate on predictable routes where pirates were waiting.

*   **Calendars: Human Invention and Disagreement**
    *   Calendar systems are sets of rules for naming days. They are human conventions, not natural laws.
    *   *Complexity Example:* Tokyo to Vancouver flight arriving the day *before* it departs (crossing the International Dateline).
    *   *Historical Complexity Example:* Travel in the 19th century (Stockholm to St. Petersburg). Arriving "a week before" starting due to different calendars being used.
    *   **Major Calendars in Use Historically:**
        *   **Julian Calendar:** Introduced by **Julius Caesar** in **45 BC**. Rule: 365 days, with a leap day (Feb 29) every 4 years. This corrected for the year being about a quarter of a day longer than 365 days.
        *   **Gregorian Calendar:** Introduced by **Pope Gregory XIII** in the **16th century (1582)**.
    
    *   **The Problem with the Julian Calendar:** The Julian year (365.25 days on average) was slightly *longer* than the actual solar year (tropical year). The difference is small (~11 minutes/year), but it accumulated over centuries.
    *   Over ~1500 years between Julius Caesar and Pope Gregory, this discrepancy grew to about **10 days**.
    *   **Motivation for Gregorian Reform:** The accumulated error affected the date of the **equinox**, which was crucial for calculating the date of **Easter**. Religious reasons were a strong driver for the change.
    *   **Gregorian Leap Year Rules:** More complex than Julian. A year is a leap year if:
        *   It is divisible by 4,
        *   *UNLESS* it is divisible by 100,
        *   *BUT* it *IS* a leap year if it is divisible by 400.
        *   *Examples:* 1700, 1800, 1900 were *not* leap years. 2000 *was* a leap year.
    *   *Software Relevance:* This rule means a bug related to leap years in code written in 2001 might not manifest until 2100 (a 99-year bug).
    
    *   **Adoption of the Gregorian Calendar:** Was a long and difficult process, taking over **300 years** (from 1582 to the early 20th century).
        *   Catholic countries adopted it quickly due to the Pope's authority.
        *   Protestant countries like the UK took much longer (~170 years).
        *   The **Russian Empire** was one of the last major regions to switch (after the 1917 revolution, formally in 1918).
        *   *Switching Method:* Involved skipping days. The Soviets skipped 13 days (Jan 31, 1918 was followed by Feb 14, 1918). This is because in the 300+ years since Gregorian reform 4 more days of discrepancy accumulated between the two calendars.
        *   *Historical Anecdote:* The "Old New Year" tradition (celebrating New Year on Feb 14) in ex-Soviet countries is a remnant of the Julian calendar.
        *   *Historical Anecdote:* Sweden's failed attempt at a gradual switch by skipping leap years for 40 years resulted in them being on a unique calendar different from all neighbors for a time. Finland, being part of Sweden and then Russian Empire, ended up using both calendars.
    *   Conclusion: Calendars are human constructs, and agreeing on them has historically been very difficult, leading to centuries of confusion. We are lucky to have a widely agreed-upon standard today.

*   **Time Zones: Political Divisions of Time**
    *   Earth is 360 degrees, so theoretically, time zones could be 15-degree slices (360 / 24).
    *   **Political Reality:** Time zones are not strictly based on meridians. Countries and local authorities decide time zone boundaries.
    *   Boundaries are drawn to avoid splitting cities or small countries.
    *   This leads to the complex time zone map we see today.
    *   *Examples of Unusual Time Zones:*
        *   Newfoundland (Canada) uses a half-hour offset.
        *   China uses a single time zone for the entire vast country (theoretically spans 4 zones), leading to sunrise around 10 am in the west. Unofficial local times may exist.
        *   India uses a single time zone with a half-hour offset.
        *   *Historical Example:* Spain uses Central European Time (CET), geographically closer to the UK (GMT/WET). This was a political decision by Franco to align with Nazi Germany and was never changed back.

*   **Daylight Saving Time (DST): Adding Another Layer of Complexity**
    *   Often seen as a "workaround" or "odd clock fiddling."
    *   **Origin:** Proposed earlier (e.g., George Hudson for more daylight after work for bug collecting), but widely adopted during **World War I** (Germany, US) to save energy (coal). The idea was to shift clocks forward in summer to utilize more daylight in the evening, reducing the need for artificial lighting.
    *   **DST vs Standard Time:** The period when clocks are shifted forward is DST; the rest is Standard Time.
    *   Less common near the equator where day length varies less. More common in higher latitudes where seasonal differences are significant.
    *   Whether DST *actually* saves energy today is debated. Modern factors like air conditioning (uses more energy in warmer daylight hours) and efficient LED lighting reduce the impact compared to a century ago. Studies show a small effect (around 1% or less), potentially saving or costing a small amount per household.
    *   **The Hassle:** A major problem is the disruption caused by switching clocks twice a year.
        *   **Sleep Deprivation:** Measurably impacts productivity and is linked to spikes in health issues (heart attacks, suicides), particularly on the Monday after the spring switch.
        *   **Scheduling Meetings:** Extremely difficult across time zones, especially internationally, because different regions/countries switch on different dates (and sometimes in different directions, e.g., Southern Hemisphere).
        *   *Example:* Trying to coordinate a meeting between New York, London, and Sydney during the spring switch period shows offsets changing multiple times over a few weeks.
        *   **Inconsistency within Countries:** Many countries have regions that opt out of DST (e.g., parts of Brazil, Canada - Saskatchewan, Australia, US states like Arizona and Hawaii). The Arizona/Navajo Nation/Hopi Reservation example shows extreme local complexity.
    *   Conclusion: DST adds significant complexity for a debatable benefit today.

*   **Universal Time Standards: The Need for a Reference**
    *   To define time zones, a universal reference point is needed.
    *   **GMT (Greenwich Mean Time):** Historically the widely recognized standard. Based at the Royal Observatory in **Greenwich, London**, which also defined the **Prime Meridian (0 degrees longitude)**. The observatory was established for navigation and timekeeping.
    *   GMT was based on astronomical observations.
    *   **UTC (Coordinated Universal Time):** The modern standard, largely replacing GMT for technical purposes.
    *   *Naming:* The acronym (UTC) is a compromise between English (CUT) and French (TUC) names.
    *   UTC is essentially the "ship's time of starship Earth," maintained by international standards bodies using highly precise **atomic clocks**.
    *   **Atomic Clocks:** Extremely accurate (inaccuracy measured in seconds over tens of millions of years).
    *   **UTC as the Reference:** All time zones are defined as an offset from UTC (e.g., EST is UTC-5, EDT is UTC-4).
    *   **Practical Advice:** when dealing with multiple time zones **always use UTC** for internal time representation in software, especially in distributed systems (e.g., cloud servers typically run on UTC). Convert to local time as close to the user as possible (in most cases in the user's browser).
    *   GMT is still sometimes used interchangeably with UTC, though there are technical differences they are pretty much the same time zone.

*   **Leap Seconds: When Atomic Time Meets Astronomical Time**
    *   Problem: The Earth's rotation is not perfectly stable or exactly 24 hours. It varies slightly and unpredictably.
    *   The **atomic clock** defines the precise length of a **second**.
    *   This leads to a discrepancy between the precise atomic clock (UTC) and astronomical time (based on Earth's rotation).
    *   To keep UTC aligned with astronomical time (within 1 second), **leap seconds** are occasionally added.
    *   A leap second is added at the end of a day, typically June 30 or December 31. The sequence becomes 23:59:58, 23:59:59, **23:59:60**, 00:00:00.
    *   The decision to add a leap second is made by a standards body based on monitoring the discrepancy. There's no fixed rule like for leap years because Earth's rotation is unpredictable.
    *   So far, only positive leap seconds have been added (27 total, last in 2014). Negative leap seconds (skipping a second) are theoretically possible if Earth rotation sped up significantly, but this haven't happened yet.
    *   **Software Relevance:** Leap seconds are a rare but real source of bugs.
    *   *Real-world Bug Example:* A stock exchange system filtering "late" messages had custom time conversion logic that didn't account for a leap second. When one was introduced, messages were delayed by >1 second according to its faulty logic and incorrectly filtered. This highlights the danger of writing your own time/date logic for sensitive applications.

*   **Practical Time Formats and Tools**
    *   **ISO 8601 Format:** The recommended standard for writing dates and times in software.
        *   Structure: **YYYY-MM-DD HH:MM:SS** (can include milliseconds).
        *   Order: Largest unit (Year) to smallest (Second/millisecond).
        *   Separator: Often a space or the letter 'T' between date and time (e.g., `2024-11-26T10:00:00`).
        *   UTC indicator: Often ends with 'Z' (e.g., `2024-11-26T15:00:00Z`), indicating UTC time (also called "Zulu time").
        *   Advantage: Alphabetical sorting matches chronological sorting if zero-padded (e.g., `2024-06-01` vs `2024-11-26`). SQLite doesn't have any dedicated data types for dates and times, instead it stores dates as strings in this format and sorts them alphabetically.
    *   **Unix Time (Epoch Time):** A simple, widely used representation.
        *   Definition: The number of **seconds** that have elapsed since **January 1, 1970, 00:00:00 UTC**.
        *   *Example in SQLite:* `SELECT unixepoch();` returns the current unix timestamp.
        *   Very useful for measuring **durations**. To find how long something took, record the unix time before and after, and subtract the two numbers.
        *   May not be ideal for long-term storage or representing specific dates for users (UTC string is often better).
    *   **Time Zone Database (IANA time zone database):** The de facto standard database used by operating systems, libraries, and browsers.
        *   Structure: Defines time zones by **Continent/City** (e.g., `America/Toronto`, `Europe/Paris`). Using continent name instead of country avoids political issues with competing claims by multiple countries.
        *   Contains rules for offsets from UTC and DST rules for different historical periods for each location.
        *   Updated regularly as countries change their time laws.
    *   **Converting Times:** The general rule is to convert the source time (with its time zone) to **UTC**, and then convert from **UTC** to the target time zone. Avoid direct conversion between arbitrary time zones.
    *   **Recurring Events:** Converting times for recurring events (like a weekly lecture) is particularly tricky because DST rules cause the offset to change during the year. A stable time in one time zone may *not* be a stable time in another time zone if DST is involved.
    *   **Tools:** Leverage built-in system tools, libraries, and online resources (`timeanddate.com` is highly recommended) for time zone conversions. **Avoid writing your own time logic** for anything beyond simple current time display or basic duration calculation.

*   **Recap Key Takeaways**
    *   Time naming and rules are human-made and changeable. Getting to an agreement is key.
    *   Use UTC when in doubt.
    *   Use ISO format for writing dates/times.
    *   Avoid writing your own complex time/date logic; use existing robust tools and libraries. Timekeeping is a complex domain with historical and political quirks (leap seconds, DST changes, calendar changes).

*   **Further Points / Anecdotes**
    *   *Cargo Ship Time:* Captains often switch time every few days at sea to keep clocks reasonably aligned with local daylight, prioritizing sleep.
    *   *Unix Time in Sci-Fi:* Mention the idea of using kiloseconds/gigaseconds as primary time units (arbitrary zero point less intuitive for daily life with sunrises/sunsets). This was used in several books by Vernor Vinge.
    