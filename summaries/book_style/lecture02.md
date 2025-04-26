# Lecture 2: Representing Text and Numbers in Computers

This chapter explores how computers store and manipulate fundamental types of data: numbers and text. We will delve into the basic units of computer memory, different types of storage, and the historical development of character encoding systems.

## The Foundation: Bits and Bytes

In many engineering systems designed for computation, information storage, or communication, it is significantly simpler and more reliable to work with only two distinct values or states. A historical example of this is **Morse code**, invented in the 1840s by **Samuel Morse** (also a skilled painter). Morse code used short and long electrical pulses ("dots" and "dashes") transmitted over a wire to represent letters and numbers. The simplicity of transmitting one of two states (a short pulse or a long pulse) made it highly effective for early telegraphy.

Over time, these fundamental units of information, capable of being in one of two states, came to be known as **bits**, short for **binary digit**. The states can be anything distinguishable: on/off, high voltage/low voltage, magnetic north/south, etched/not etched. We commonly represent these two states as 0 and 1, true and false, or on and off. For instance, in the context of a signal light at sea, the two distinct signals might be a short flash and a long flash, as simply being "off" is not a visible signal in the dark.

This binary principle is fundamental across various storage technologies, from the microscopic pits on a CD-ROM surface (etched or not etched) to older technologies like magnetic core memory, where tiny rings could be magnetized in one of two directions.

While a single bit can only represent two values (0 or 1), this is of very limited use. To represent more complex information, bits are grouped together. In modern computing, the standard grouping is **8 bits**, which is called a **byte**. Historically, there were experiments with different byte sizes (like 6 or 9 bits in the 1940s and 50s), but 8 bits became the universal convention. There is no deep theoretical reason for this; it simply emerged as the practical standard through engineering experimentation.

Another historical example of binary data storage is the **punched card**. Surprisingly, the concept originated in the 18th century for controlling textile looms before being adapted for computing. On a punched card, the presence or absence of a hole at a specific location represented one of the two binary states. These cards were typically organized into columns, where each column could store a byte (8 rows for 8 bits), and a card could hold around 80 bytes of information.

Comparing historical storage to modern storage highlights the immense technological progress. A square of magnetic core memory might hold 64 bits (8 bytes), while a modern SD card can hold 8 gigabytes (GB). An 8 GB SD card holds roughly a billion times more data than that small core memory square.

## Computer Memory: Volatile vs. Non-Volatile

Computer systems typically employ two main types of memory, optimized for different purposes:

1.  **Volatile Memory (Short-Term):** This memory is used for immediate access and active computation. It is characterized by being very fast, allowing quick reading and writing of data. However, it is volatile, meaning its contents are lost entirely when the power is turned off. **Random Access Memory (RAM)** is the primary example of volatile memory in computers and phones. RAM allows any byte of data to be accessed just as quickly as any other, regardless of its location. This random access capability is crucial for efficient program execution. Physically, RAM often looks like chips mounted on small circuit boards that connect to the motherboard.

2.  **Non-Volatile Memory (Long-Term/Persistent Storage):** This memory is used for storing data persistently, even when the power is off. It is optimized for capacity and cost-effectiveness rather than raw speed (though modern versions are quite fast). Examples include hard disk drives (HDDs) and solid-state drives (SSDs).
    *   **Hard Disk Drives (HDDs):** These use spinning magnetic disks and a read/write head that moves across the surface. Data is stored magnetically. HDDs are relatively cheap per gigabyte but are slower than SSDs due to the mechanical movement required to access data. Accessing data might require waiting for the disk to rotate to the correct position, which, while fast in human terms (milliseconds), is slow for a computer chip.
    *   **Solid-State Drives (SSDs):** These use semiconductor chips (similar technology to RAM) to store data electronically without any moving parts. They are much faster than HDDs but typically more expensive per gigabyte. The term "solid state" comes from solid-state physics, the field that studies semiconductors like silicon.

It's important not to confuse these two types of memory. When discussing devices like phones, the advertised "memory" often refers to the non-volatile storage capacity (e.g., 128 GB or 512 GB), while the RAM (volatile memory) is usually a smaller number (e.g., 4 GB, 6 GB, 8 GB) and might not be as prominently featured in marketing.

## Units of Measurement

We measure memory and storage capacity using units based on bytes, typically using metric prefixes:

*   **Kilobyte (KB):** Roughly one thousand bytes.
*   **Megabyte (MB):** Roughly one million bytes.
*   **Gigabyte (GB):** Roughly one billion bytes.
*   **Terabyte (TB):** Roughly one trillion bytes.

These prefixes (Kilo, Mega, Giga, Tera) represent powers of 10: $10^3$, $10^6$, $10^9$, $10^{12}$.

A point of historical confusion arises because computer systems often work with powers of 2. $2^{10}$ is 1024, which is very close to 1000. Early on, some people used "Kilobyte" to mean 1024 bytes, while others used it to mean 1000 bytes. This led to ambiguity. While standard prefixes (like KiB for Kibibyte, meaning 1024 bytes) were introduced to clarify this, they are not widely adopted.

Today, storage manufacturers typically use the powers of 10 definition (1 KB = 1000 bytes), while operating systems and software often use the powers of 2 definition (1 KB = 1024 bytes). For small amounts of data, the difference is negligible (2.4% for a Kilobyte), but for larger units like Terabytes, the difference becomes significant (almost 10%). In most everyday contexts, this difference doesn't matter, but for precise calculations, it's crucial to know which definition is being used.

Throughput in communication networks is often measured in megabits per second (Mbps) rather than megabytes per second (MBps). This is partly a historical legacy from early communication systems where the 8-bit byte standard was not always relevant.

## Representing Numbers

With bits and bytes as our building blocks, we need a system to represent numbers. As designers of these systems, we are free to choose how to interpret sequences of bits. However, for engineering efficiency, the **binary number system (base 2)** became standard.

In the binary system, just like our familiar decimal system (base 10), the position of a digit determines its value. This is called a **positional number system**. In decimal, the rightmost digit is the "ones" place ($10^0$), the next is the "tens" place ($10^1$), then "hundreds" ($10^2$), and so on.

In binary, the positions represent powers of 2. The rightmost bit is the $2^0$ place (1), the next is the $2^1$ place (2), then $2^2$ (4), $2^3$ (8), and so forth.

We use the terms **Least Significant Bit (LSB)** for the rightmost bit (representing the smallest power of 2) and **Most Significant Bit (MSB)** for the leftmost bit (representing the largest power of 2).

To convert a binary number to decimal, we sum the powers of 2 corresponding to the positions where a '1' bit appears.

**Example:** Convert the 8-bit binary number `01010101` to decimal.

The positions from right to left correspond to powers of 2: $2^0, 2^1, 2^2, 2^3, 2^4, 2^5, 2^6, 2^7$.
Values: 1, 2, 4, 8, 16, 32, 64, 128.

Binary: `0 1 0 1 0 1 0 1`
Powers of 2: `128 64 32 16 8 4 2 1`

Sum where the binary digit is 1:
$0 \times 128 + 1 \times 64 + 0 \times 32 + 1 \times 16 + 0 \times 8 + 1 \times 4 + 0 \times 2 + 1 \times 1$
$= 0 + 64 + 0 + 16 + 0 + 4 + 0 + 1 = 85$

So, the binary number `01010101` represents the decimal number 85.

With 8 bits (one byte), we can represent $2^8 = 256$ different values. If we interpret these as unsigned integers, they range from 0 (all bits 0) to 255 (all bits 1).

For larger numbers, we use multiple bytes. Two bytes (16 bits) can represent $2^{16} = 65536$ different values, ranging from 0 to 65535 for unsigned integers.

### Negative Numbers

To represent negative numbers, we introduce the concept of **signed** numbers. Unlike unsigned numbers, which use all bits for the magnitude, signed numbers reserve some way to indicate whether the number is positive or negative. While modern systems use a method called two's complement, conceptually, you can think of it as reserving one bit (often the MSB) to indicate the sign.

For an 8-bit signed integer, the range of representable numbers is typically from -128 to +127. This still allows for 256 distinct values, just shifted to include negative numbers.

### Fractional Numbers

Representing numbers with fractional parts (like 3.14159 or 0.000125) requires a different approach. One common method is similar to **scientific notation**. A fractional number can be represented using two integer components:

1.  **Mantissa (or significand):** The digits of the number.
2.  **Exponent:** Indicates where the decimal point should be placed (or effectively, what power of the base the mantissa is multiplied by).

For example, the number 4.2047 can be written as $42047 \times 10^{-4}$. In a computer, we could store 42047 as one integer and -4 as another integer. The system then interprets these two integers together to reconstruct the fractional number. This approach, known as **floating-point representation**, allows computers to represent a wide range of numbers, both very large and very small, including those with fractional parts.

## Memory as a Sequence of Bytes

At its most basic level, computer memory (especially RAM and storage) is simply a vast, linear sequence of bytes. You can think of it as a long tape or an array of storage locations, each holding one byte. These locations are addressed sequentially: the first byte, the second byte, the third, and so on.

While operating systems and programs impose complex structures on memory (like variables, data structures, file systems), the underlying hardware sees it as a simple, contiguous block of bytes.

## Representing Text

Just as we needed a system to map bits to numbers, we need a system to map numbers (represented by bytes) to characters (letters, digits, symbols).

Historically, this need arose with devices like the **teleprinter**. A teleprinter was essentially an electric typewriter that could send and receive text over a wire. Pressing a key on one machine would send a signal, and a mechanism on the receiving machine would print the corresponding character. To make this work efficiently over long distances, the signals were encoded using binary patterns (numbers).

The solution was to create a standardized table that assigned a unique number to each character. The most foundational of these is the **ASCII table (American Standard Code for Information Interchange)**. Developed in the early 1960s, ASCII assigned numbers from 0 to 127 to common English letters (uppercase and lowercase), digits (0-9), punctuation marks, and control characters.

For example, the uppercase letter 'A' was assigned the number 65, 'B' was 66, and so on. A space character was assigned 32. The digits '0' through '9' were assigned numbers 48 through 57.

The numbers 0-31 and 127 were reserved for **control codes**. These were non-printable characters originally used to control mechanical teleprinters and printers, such as:
*   Bell (7): To ring a bell.
*   Line Feed (10): To advance the paper by one line.
*   Carriage Return (13): To move the printing head back to the beginning of the line.

Even today, the byte value 10 (Line Feed) is commonly used to mark the end of a line in text files on Unix-like systems (including Linux and macOS), while Windows typically uses a sequence of 13 and 10 (Carriage Return + Line Feed).

The ASCII standard, using numbers up to 127, fits perfectly within 7 bits. When 8-bit bytes became standard, the upper half of the byte values (128-255) were available for additional characters. However, there was no single, universal standard for these extra characters. Different systems and regions developed their own extensions to ASCII, known as **code pages**.

These code pages included characters needed for other languages (like accented letters in European languages, or characters for Cyrillic, Greek, etc.) and sometimes graphical characters for drawing boxes and lines in text-based interfaces. The lack of a single standard meant that a file created using one code page might appear as "gibberish" when viewed using a system configured for a different code page. While historically significant for localization, code pages are largely superseded by modern encoding systems like Unicode and UTF-8, which can represent characters from virtually all writing systems.

## Files: Named Sequences of Bytes

On a storage device (like an HDD or SSD), data is organized into **files**. A file is essentially a named region on the storage device that holds a sequence of bytes. Files are organized hierarchically within **folders** (or directories), which can contain other folders or files, forming a tree structure.

Crucially, from the computer's perspective, a file is just a stream of bytes. The meaning or structure of those bytes is determined by the software that created or interprets the file, not by the file system itself.

### Text Files vs. Binary Files

Files can be broadly categorized based on how their bytes are intended to be interpreted:

1.  **Text Files:** These are files where the sequence of bytes is intended to represent human-readable text characters, typically encoded using a standard like ASCII (or more commonly now, UTF-8). When you open a text file with a text editor (like Notepad), the editor reads the bytes one by one and displays the corresponding character for each byte according to the chosen character encoding. If the file contains sequences of bytes that map to letters, numbers, and punctuation, and uses control codes like Line Feed to structure the output, it appears as meaningful text.

2.  **Binary Files:** These are files where the sequence of bytes is not primarily intended to represent text characters. Examples include images (JPEG, PNG), executable programs (EXE, DLL), audio files (MP3, WAV), compressed archives (ZIP, RAR), etc. If you open a binary file with a simple text editor, the editor will still attempt to interpret each byte as a character according to its default encoding (like ASCII). Since the byte values in a binary file often correspond to numbers or data structures that don't map to printable characters or standard text formatting, the result typically looks like a jumble of seemingly random or garbled symbols. This is why binary files appear as "gibberish" in a text editor.

A simple text editor like Notepad demonstrates this fundamental concept: it reads the raw bytes of a file and displays them as characters based on a character encoding table (historically, often ASCII or a code page). If the bytes were originally structured to represent text, it looks correct; otherwise, it doesn't.

## Positional Number Systems and Bases

Let's revisit positional number systems to solidify the concept and introduce other bases commonly encountered in computing.

In any positional system, the value of a digit depends on its position within the number. The **base** (or **radix**) of the system is the number of unique digits it uses.

*   **Decimal (Base 10):** Uses 10 digits (0-9). Positions represent powers of 10 ($10^0, 10^1, 10^2, ...$).
*   **Binary (Base 2):** Uses 2 digits (0, 1). Positions represent powers of 2 ($2^0, 2^1, 2^2, ...$).
*   **Octal (Base 8):** Uses 8 digits (0-7). Positions represent powers of 8 ($8^0, 8^1, 8^2, ...$). Less common now, but used historically.
*   **Hexadecimal (Base 16):** Uses 16 digits. It uses 0-9, and then the letters A-F to represent the values 10 through 15. Positions represent powers of 16 ($16^0, 16^1, 16^2, ...$). Hexadecimal is very common in computing because each hexadecimal digit can represent exactly 4 bits (since $2^4 = 16$), making it a convenient shorthand for binary numbers (e.g., one byte, 8 bits, can be represented by exactly two hexadecimal digits).

**Hexadecimal Digits:**
*   0 = 0
*   1 = 1
*   ...
*   9 = 9
*   A = 10
*   B = 11
*   C = 12
*   D = 13
*   E = 14
*   F = 15

**Example:** Convert the hexadecimal number `1F` to decimal.

The positions from right to left correspond to powers of 16: $16^0, 16^1$.
Values: 1, 16.

Hexadecimal: `1 F`
Powers of 16: `16 1`

Convert hex digits to decimal values: 1 is 1, F is 15.

Sum (multiply digit value by power of base):
$1 \times 16^1 + 15 \times 16^0$
$= 1 \times 16 + 15 \times 1$
$= 16 + 15 = 31$

So, the hexadecimal number `1F` represents the decimal number 31.

To avoid confusion when speaking about numbers in different bases, it's best practice to spell out the digits rather than using decimal number words. For example, instead of saying "ten in binary is two," which is confusing because "ten" means 10 (the number of fingers on two hands), say "binary one zero" to refer to the sequence of digits `10` in base 2.

In computing, we often use prefixes to indicate the base of a number literal:
*   Decimal: No prefix (e.g., `19`)
*   Binary: `0b` (e.g., `0b101` represents $1 \times 2^2 + 0 \times 2^1 + 1 \times 2^0 = 4 + 0 + 1 = 5$)
*   Octal: `0o` (e.g., `0o17` represents $1 \times 8^1 + 7 \times 8^0 = 8 + 7 = 15$)
*   Hexadecimal: `0x` (e.g., `0x1F` represents $1 \times 16^1 + 15 \times 16^0 = 16 + 15 = 31$)

Understanding these different number systems and how bits and bytes are used to represent both numbers and characters is fundamental to comprehending how computers work at a low level.

## Further Reading

For those interested in exploring these topics further, particularly binary numbers and the history of computing, the following resources are recommended:

*   **Binary Number Systems:** Various online videos provide excellent, often visual, explanations of binary-to-decimal conversion and counting in binary. Look for tutorials on positional number systems and different bases.
*   **Fire Ship - Binary Explained in 100 Seconds:** A very concise and fast explanation.
*   **The IBM 1401 Data Processing System (1964):** A historical video demonstrating computing based on punched cards, offering a fascinating perspective on early business automation.

These resources can provide deeper insights and alternative explanations for the concepts introduced in this chapter.

