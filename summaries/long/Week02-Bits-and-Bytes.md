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
Point students to the optional videos, especially recommend the playlist on binary numbers and the 1964 IBM video for historical context. (see slides for links)