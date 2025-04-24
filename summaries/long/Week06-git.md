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
    *   Software is relatively lucky: Text files are easier for computers to compare than complex blueprints.

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
    *   This email-based workflow was inconvenient and led to confusion. Linus was reportedly frustrated with existing commercial VCS and decided to write his own.
    *   Git was created by Linus in April 2005.

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

*   **Bonus Tip: Command Palette UI Pattern:**
    *   A UI pattern where typing into a search box reveals and allows execution of commands or actions (e.g., macOS Spotlight, Windows Start Menu search).
    *   Common in development tools:
        *   *VS Code:* `Ctrl+P` (file quick open), `Ctrl+Shift+P` (command palette for all commands).
        *   *Windows Terminal:* `Ctrl+Shift+P` (command palette for terminal settings/actions).
    *   Similar to command line in that you type to find functionality, but provides immediate visual suggestions and executes actions directly in the GUI.

*   **Bonus Tip: Debugging GitHub Pages:**
    *   If your GitHub Pages site isn't updating after pushing changes, check the "Actions" tab in your GitHub repository online.
    *   Look for workflow runs (often triggered by pushes to the main branch) that are marked red (failed).
    *   Click into the failed workflow run, then click on the failing job/step (also often red).
    *   Read the build logs for error messages (e.g., "theme not found" indicates a typo in the theme name in the `_config.yml` file).


*   **Next Steps:**
    *   The upcoming lab will provide hands-on practice with Git/GitHub workflow, likely focusing on the web interface initially, but local cloning is also an option for practice.
    *   Topics like merging and resolving conflicts are more advanced and can be explored with external resources (e.g., online tutorials).