# Lecture 5: Command Line Interfaces (CLI)

This lecture introduces students to the command-line interface, its history, fundamental concepts, and practical uses, particularly in software development and remote server interaction.

## Recap of Previous Weeks

*   Briefly touch upon previous topics:
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

*   **Early Days:** The *only* way to interact with computers.
*   **Teletype Machines:** Connected printers and keyboards to computers.
    *   Operator typed a command.
    *   Command was printed on paper.
    *   Computer processed and printed the reply on paper.
    *   This was a direct command-reply dialogue.
    *   Commands were often shortened (2-3 letters) for efficiency, leading to cryptic names today.
*   **TV Screens (Virtual Terminals):** As TVs became cheaper, screens replaced paper printers.
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
*   **Speed:** Much faster for certain types of work (e.g., file manipulation, automation).
*   **Precise Control:** Allows specifying details down to the tiniest level.
*   **Automation:** Commands are lines of text. Can easily create scripts (text files of commands) to automate repetitive tasks.
*   **Remote Work (SSH):** Works extremely well over networks, even slow ones, due to low bandwidth requirements (sending text commands and receiving text replies).
*   **Low Resource Usage:** Doesn't require graphical rendering, less demanding on the computer.
*   **Looks Cool:** (Optional, humorous point)

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
*   **Copy/Paste:** Mention it can be finicky due to historical reasons (`Ctrl+C` often being interrupt). On Windows terminals, selecting text often copies, and right-click often pastes. Mac/Linux terminals might use `Cmd+C`/`Cmd+V` or `Ctrl+Shift+C`/`Ctrl+Shift+V` depending on configuration.
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
        *   Start Menu -> Search bar -> Type "Cmd", "Powershell", or "Terminal".
        *   **Powershell** is generally recommended for modern Windows.
        *   **Cmd** (Command Prompt) is the older version.
        *   **Windows Terminal** is a newer, customizable application that can host Powershell, Cmd, WSL, etc.
    *   Mention **Putty** as a third-party alternative, especially for older Windows versions or if built-in options are problematic. It's a simple SSH client.

## Windows Subsystem for Linux (WSL)

*   Allows running a Linux environment (like Ubuntu) directly within Windows.
*   **Benefit:** Get the advantages of Linux command-line tools and development environments while still using Windows GUI applications.
*   Often preferred for certain types of development (e.g., web development with Node.js, Ruby, Python) where tools are primarily built for Linux/Mac OS.
*   Easy installation: Often available from the Microsoft Store (search for "Ubuntu").
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

## Other Network/CLI Tools

*   **scp (Secure Copy):** Copy files over an SSH connection.
    ```bash
    scp local_file user@server:remote_path
    ```
*   **ftp / sftp (File Transfer Protocol / Secure FTP):** Protocols for transferring files. Sftp is the secure, encrypted version.
    *   Often used with GUI clients like **Filezilla** (drag-and-drop interface for file transfer between local and remote servers). Common for web hosting.

## Text-based User Interfaces (TUI) / Text-based Graphical Interfaces (TGUI)

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
*   Articles on `tmux`, `htop`, etc.

## Conclusion

*   The command line, while seemingly archaic, remains a powerful and essential tool for developers, system administrators, and anyone working extensively with computers, especially remotely.
*   Basic navigation, file manipulation, and understanding redirection/piping unlocks significant capabilities.
