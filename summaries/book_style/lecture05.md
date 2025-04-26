# Lecture 5: Command Line Interfaces

This chapter introduces the concept and practical use of Command Line Interfaces (CLI), exploring their history, advantages, and fundamental commands.

We'll begin with a brief recap of previous topics:
*   The history and structure of writing, text, and numbers before computers.
*   How bits, bytes, and character encodings like ASCII represent text and numbers in computers.
*   The importance of mastering the keyboard and touch typing skills.
*   Text editors as the primary tool for developers, and the ongoing discussion about which one is best.
*   Basic searching (`Ctrl+F`) and the awareness of Regular Expressions (Regex) for more complex pattern matching.

Building upon these foundational tools, we now turn our attention to the command line.

## What is the Command Line?

Command Line Interfaces (CLI) are a way of interacting with a computer by typing text commands. While they might seem intimidating or archaic, they remain a powerful and essential tool for software developers.

### A Look Back: Origins

The concept of the command line dates back to the earliest forms of computer interaction. Initially, computers were connected to teletype machines, which were essentially typewriters with printers. The operator would type a command on the keyboard, which was simultaneously printed on paper. Upon pressing Enter, the computer would process the command and print its response on the same paper. This created a paper-based dialogue between the user and the machine.

Commands were often shortened to two or three letters to minimize typing, leading to many cryptic command names we still see today. While these were intended to be intuitive at the time, their meaning is often lost on modern users.

With the advent of affordable television screens, these were connected to computers, replacing the paper printers. These were called "virtual terminals" (as opposed to the "real" paper terminals). The VT100 was a particularly popular model. This transition saved paper and offered the convenience of seeing what you typed and easily correcting mistakes. However, the mode of operation remained the same: type a command, get a reply.

### CLI as a Chatbot

This interaction model is very similar to talking to a chatbot. You provide input (a command), and the computer provides output (a response). The key difference is that a CLI chatbot has a very limited and specific set of commands it understands, unlike modern free-form language models.

Early text-based games, like Zork (seen in the first week's lab), also used this model. The game would describe a scene, and the player would enter commands like `open mailbox`. This structure of `verb` + `noun` is mirrored in many CLI commands.

### Anatomy of a Modern CLI

A modern command line interface, often seen in a terminal window, has a distinct structure:

```
user@hostname:~/current/directory$ command argument -option --long-option
```

*   **Prompt:** The text before where you type the command (e.g., `user@hostname:~/current/directory$`). It often contains useful information like the username, hostname, and current directory. The `$` typically marks the end of the prompt. A `~` symbol is a common shorthand for the user's home directory.
*   **Command:** The instruction you want the computer to perform (e.g., `command`).
*   **Argument:** Additional information the command needs to operate on (e.g., `argument`, often a file or directory name).
*   **Option/Flag:** Modifiers that change the command's behavior (e.g., `-option`, `--long-option`). Short options use a single dash (`-`) followed by a letter; long options use a double dash (`--`) followed by a word.
*   **Cursor:** A blinking indicator showing where your typed text will appear.

After you type a command and press Enter, the computer executes it and prints its **response** or **output** below the command line. Once the command finishes, a new prompt appears, inviting you to enter the next command.

Example:
```bash
user@hostname:~$ date
Mon Oct 26 10:30:00 EDT 2023
user@hostname:~$
```
Here, `date` is the command, and the line below is the computer's response.

## Why Use the Command Line?

Given graphical user interfaces (GUIs) are prevalent, why bother with the command line?

*   **Access to Functionality:** Some tools and functionalities are only available via the command line. Building GUIs is complex and expensive, so developers often create command-line tools first (or exclusively).
*   **Speed:** For specific tasks, especially repetitive ones or manipulating many files, the command line can be significantly faster than using a GUI.
*   **Precise Control:** CLIs often offer granular control over operations through various options and arguments, allowing you to specify exactly what you want the computer to do.
*   **Automation (Scripting):** Since commands are just lines of text, you can easily write sequences of commands in a file (called a script). Running the script executes all commands automatically, ideal for repetitive tasks.
*   **Remote Work & Low Bandwidth:** CLIs require very little data to communicate (sending text commands, receiving text output). This makes them highly efficient for working on remote computers over slow or unstable network connections.
*   **Low Resource Usage:** CLIs don't require graphical rendering, making them suitable for running on less powerful or specialized computers (like servers or embedded devices) that may not have a GUI.
*   **Looking Cool:** (A humorous bonus) Typing commands in a terminal can make you look like a proficient computer user, or even a "hacker."

## Remote Access with SSH

One of the most powerful use cases for the command line is connecting to and working on remote computers. The primary tool for this is **SSH** (Secure Shell).

SSH provides an encrypted connection between your computer and a remote server, ensuring privacy for your communication. It replaces older, insecure protocols.

To connect using SSH, you typically use the command:
```bash
ssh username@server_address
```
You will then be prompted for the password for that username on the remote server. Once connected, you see a command prompt for that remote server and can execute commands there as if you were sitting in front of it (but limited to text-based interaction).

## Learning CLI with the Bandit Game

A practical way to get hands-on experience with the command line is by playing the Bandit game, an information security wargame available online. The game is entirely text-based and accessed via SSH.

The goal of the game is to progress through levels. Each level requires you to use command-line skills to find a password that allows you to log in to the next level.

To connect to level 0 of the Bandit game:
```bash
ssh bandit0@bandit.labs.overthewire.org
```
The password for `bandit0` is `bandit0`.

Once connected, you'll see a prompt like `bandit0@bandit:~$`. You are now on the remote game server.

### Basic Commands in Action

Let's explore some fundamental commands often used when navigating and inspecting files:

*   **`ls`**: Lists files and directories in the current location.
    ```bash
    bandit0@bandit:~$ ls
    readme
    ```
    (Shows there's one file named `readme`)

*   **`ls -l`**: Lists files in a "long" format, showing more details like permissions, ownership, size, and modification date.
    ```bash
    bandit0@bandit:~$ ls -l
    -rw-r----- 1 bandit0 bandit0 33 Oct 26 10:00 readme
    ```

*   **`ls -a`**: Lists *all* files, including hidden ones (those starting with a dot `.`).
    ```bash
    bandit0@bandit:~$ ls -a
    .  ..  .bash_logout  .bashrc  .profile  readme
    ```
    (`.` refers to the current directory, `..` refers to the parent directory).

*   **`pwd`**: Prints the "working directory" (your current location in the file system).
    ```bash
    bandit0@bandit:~$ pwd
    /home/bandit0
    ```

*   **`cd`**: Changes directory.
    *   `cd ..`: Go up one level to the parent directory.
    *   `cd /some/path`: Go to a specific path.
    *   `cd` or `cd ~`: Go back to your home directory.

*   **`man command_name`**: Displays the manual page for a command, explaining its usage, options, and arguments. This is incredibly useful when you forget how a command works. You can navigate the manual using arrow keys and search using `/`. Press `q` to exit the manual.
    ```bash
    bandit0@bandit:~$ man ls
    ... (manual page for ls appears) ...
    ```

### Viewing File Contents

To read the contents of a text file, two common commands are `cat` and `less`.

*   **`cat file_name`**: Concatenates and prints the entire content of a file to the terminal. It's non-interactive and exits immediately after printing.
    ```bash
    bandit0@bandit:~$ cat readme
    Congratulations on your first step into the bandit game!
    ... (password appears here) ...
    ```

*   **`less file_name`**: Opens the file in an interactive viewer. Useful for long files as it allows you to scroll, search, and navigate. Press `q` to exit the viewer.
    ```bash
    bandit0@bandit:~$ less readme
    ... (file content displayed, can scroll) ...
    ```

**Tip:** Use the **Tab key** for autocompletion! If you start typing a file or command name and press Tab, the terminal will complete it if it's unique, or show options if there are multiple matches. This saves typing and prevents typos.

### Progressing Through the Game

In the Bandit game, you would use `ls` to find files, `cat` or `less` to read them (looking for the password), copy the password, `exit` the SSH session, and then connect to the next level using `ssh bandit1@bandit.labs.overthewire.org` and the password you found.

Level 1 often presents a challenge where the password is in a file named `-`. Because `-` is often interpreted as an option flag, you need a special way to tell the command that `-` is a filename. A common solution is to use `cat ./-`, where `./` explicitly means "in the current directory", forcing `cat` to treat `-` as a filename.

## Starting the Terminal

How you open a terminal window depends on your operating system:

*   **Mac OS:** Open the "Terminal" application. You can find it in Applications > Utilities, or use Spotlight search (Command + Space, then type "terminal").
*   **Windows:**
    *   Search in the Start menu for "Cmd" (Command Prompt), "Powershell", or "Terminal" (Windows Terminal, recommended on Windows 10/11).
    *   For older Windows versions or if built-in options are insufficient, you can install a dedicated SSH client like **PuTTY**.
*   **Windows Subsystem for Linux (WSL):** For Windows users who want a more Linux-like command-line environment, WSL allows you to run a Linux distribution (like Ubuntu) within Windows. You can install it from the Microsoft Store. This is particularly useful for certain types of software development (like web development with Node.js) where tools often work better on Linux or macOS.

## Essential CLI Concepts and Commands

Let's formalize some concepts and introduce more common commands.

The general structure is `command [options] [arguments]`.

### File System Navigation & Manipulation

*   `pwd`: Print working directory.
*   `cd [directory]`: Change directory.
*   `ls [options] [file/directory]`: List directory contents.
*   `cat file_name`: Display file contents (non-interactive).
*   `less file_name`: Display file contents (interactive viewer).
*   `cp source_file destination`: Copy a file.
*   `mv source destination`: Move or rename a file/directory.
*   `mkdir directory_name`: Create a new directory.

### Utilities

*   **`ping hostname`**: Send network packets to a host to test connectivity and measure response time.
    ```bash
    ping google.com
    ```
    (Press Ctrl+C to stop)

*   **`grep [options] pattern [file...]`**: A powerful tool for searching text. It searches for lines that match a given pattern (often a Regex) in one or more files.
    ```bash
    grep build tst.json
    ```
    This would print all lines containing the word "build" in the file `tst.json`. The `-r` option allows recursive searching through directories.

*   **`wc [options] [file...]`**: Word count. Can count lines (`-l`), words (`-w`), or characters (`-c`) in a file or input.

### Redirection and Piping

By default, commands send their output to the **standard output**, which is usually the terminal screen. You can change this behavior:

*   **Redirection (`>`)**: Send the standard output of a command to a file, overwriting the file's contents if it exists.
    ```bash
    ls -l > listing.txt
    ```
    (The output of `ls -l` is saved into `listing.txt` instead of being printed)

*   **Appending (`>>`)**: Send the standard output of a command to a file, adding it to the end of the file.
    ```bash
    date >> log.txt
    ```
    (Adds the current date/time as a new line at the end of `log.txt`)

*   **Piping (`|`)**: Connect the standard output of one command to the **standard input** of another command. This allows you to chain commands together.
    ```bash
    ls -l | wc -l
    ```
    (The output of `ls -l` is sent as input to `wc -l`, which counts the lines, effectively counting the items listed by `ls -l`)

    You can pipe outputs into fun utilities too:
    ```bash
    cowsay "Hello!"
    ```
    ```bash
    cowsay "Hello!" | lolcat
    ```
    (`lolcat` colors the output psychedelically)

## The Unix Philosophy

The ability to combine small, single-purpose tools using pipes and redirection is a core tenet of the "Unix philosophy." This philosophy suggests building programs that do one thing well and work together, rather than creating large, monolithic programs that try to do everything. This principle is seen in modern software architecture like microservices.

## Other Network Tools

Related to SSH for remote access are tools for transferring files:

*   **`scp`**: Secure Copy. Uses SSH to securely copy files between computers.
    ```bash
    scp local_file username@remote_server:/path/to/destination
    ```

*   **`sftp`**: Secure File Transfer Protocol. Also uses SSH. While there's a command-line `sftp` client, it's more commonly accessed through graphical clients like **FileZilla**, which provide a drag-and-drop interface for transferring files between your local machine and a remote server.

## Text-Based User Interfaces (TUI)

Some programs running in the terminal provide a more interactive, graphical-like experience using only text characters. These are called Text-Based User Interfaces (TUI).

*   **`htop`**: A TUI application for monitoring system resources (CPU, memory, processes) in real-time. It provides a visual layout within the terminal window and updates dynamically. You typically press `q` to exit.

*   **`tmux`**: Terminal Multiplexer. A powerful tool for managing multiple terminal sessions within a single window. It allows you to split panes, create windows, and, crucially, keep sessions running on a remote server even if your connection disconnects. You can later reconnect and resume your `tmux` session exactly as you left it.

## Further Learning

To deepen your understanding and proficiency with the command line, hands-on practice is key. Working through the Bandit game levels is highly recommended. Additionally, exploring external resources can provide different perspectives and cover more advanced topics.

*   **Command Line Crash Course Video:** A good introductory video covering basic commands and concepts.
*   **Article on Tmux:** Explains the benefits and usage of this powerful session management tool.
*   **Explanation of Htop:** Details what the different parts of the `htop` display mean.

