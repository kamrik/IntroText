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
    *   Fireship videos (short, fast-paced tech explanations).