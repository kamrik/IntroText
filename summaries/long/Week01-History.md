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
