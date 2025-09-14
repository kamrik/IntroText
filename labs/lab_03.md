# COMP1238 - Week 3 Lab - Markdown practice

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Markdown-mark.svg/208px-Markdown-mark.svg.png)

## Material Covered During the Lecture:
- Structure of a text file
- Punctuation, whitespace, line breaks
- Markup languages, raw vs rendered view. MarkDown, HTML
- Structured data, JSON and XML formats
- Special characters and “escaping”


## Goals for Today
- Practice using Markdown
- If finished early, practice touch-typing focusing on accuracy rather than speed


## Accept the Assignment on GitHub Classroom page
 - Open the assignment invitation link in a new tab and accept the assignment  
   https://classroom.github.com/a/TBD
 - If this is your first lab, select your own GBC email from the list. This will associate your GitHub username with your GBC email for the rest of this semester (if you can't find your GBC email in the list, click "Skip" and email the prof to fix this)
 - A new repository will be created for you, this repository belongs to the `f25gbc` organization and the address will look like  
 `https://github.com/f25gbc/comp1238-lab3-username`

## Complete the assignment in your new repository
- In your new repository edit the `README.md` file by
 clicking the edit button (looks like a pencil).
- When editing a Markdown file on GitHub you can alternate between the raw `Edit` and `Preview` views using the buttons on the upper left side.
- When you save (commit) this file, an auto-grading script will run. Results can be seen under **Actions** tab - see screenshots in the [autograder instructions](autograder_instructions.md).
- If you don't know what the autograder expects, find it out experimentally - save and see the output, it usually comes with hints.
- The autograder is dumb, it may complain if it gets a section named "Image" when it expects "Images" (plural), just check the output and change your phrasing accordingly, it's an iterative process.
- Parts phrased as questions, as opposed to instructions, are for you to think, the autograder won't be looking for those answers.

### Useful references
- [How to edit a file and check for results](https://github.com/kamrik/IntroText/blob/main/labs/autograder_instructions.md)

- [GitHub MarkDown Reference](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [List of emojis you can use on GitHub](https://gist.github.com/rxaviers/7360908)
- [Example of a file using emojis in titles](https://github.com/skeletonlabs/skeleton/blob/dev/README.md) - click `Code` to see the raw unrendered MarkDown


## Instructions
Edit the `README.md` file in your repository as follows:

#### 1. **Number Row Characters**
1. Create a section in your README with the title `Number Row Characters`. Use `##` for your sections headings.
2. Write down all the characters you can type using the number row of your keyboard while holding the `Shift` key (this is the row above the QWERTY row).
3. Write each character on a new line as part of a **bullet list**. (Hint: the first section of the README contains an example of a bullet list)
4. For each character, list all the names you know for it. Feel free to include names in your native language if applicable.
    - For example:
      ```
      - # - Hash, Pound, Sharp, Number sign
      ```

5. Some characters may require “escaping” to display properly in Markdown. Use a backslash (`\`) to escape them if necessary. 
   - For example, to display the asterisk `*` you may need to type `\*`.
   - * This is how an unescaped asterisk gets rendered when used in a bullet list context
   - \* This is an escaped asterisk in the same context

#### 2. **Links**
1. Create another section titled `Links`.
2. Add 2-3 useful links as part of a bullet list. The Markdown syntax for creating hyperlinks looks like this:

    ```
    [Link name in square brackets](URL goes here in parentheses)
    ```

3. For example:
    ```
    - [GitHub Pages](https://pages.github.com/)
    - [Markdown Guide](https://www.markdownguide.org/)
    ```

4. Note that there is no space between the closing `]` and the opening `(`
If you add a space there, it will not display as a link.

#### 3. **Emojis**
1. Create a section titled `Emojis`.
2. Use emojis in your text! Here's a handy resource to find GitHub-supported emojis: [GitHub Emoji Cheat Sheet](https://github.com/ikatyang/emoji-cheat-sheet). For example:
     ```
     :smile: becomes 😄
     ```

#### 4. **Images**
1. Create a new section called `Images`.
1. Add an image to your README file. Use the Markdown syntax for images:
    ```
    ![Alt text goes here](Image URL or file path goes here)
    ```
1. For example:
    ```
    ![GBC Logo as SVG](https://www.georgebrown.ca/themes/custom/de_theme/logo.svg)
    ```
1. Gets rendered like this (hover with your mouse over the image to see if the alt text will show as a tooltip):  
   ![GBC Logo](https://www.georgebrown.ca/themes/custom/de_theme/logo.svg)

1. You can use this address `https://picsum.photos/320` to show a random image. 320 is the width in pixels.
1. If you’re feeling adventurous, try using an animated GIF!

#### 5. **Checklist**
1. Create a section titled `Checklist`.
2. Use Markdown to create a checklist of tasks you want to work on.  
Hint: Use `- [ ]` for an unchecked box and `- [x]` for a checked box.
3. For example:
    ```
    - [x] Learn Markdown basics
    - [ ] Create a cool GitHub README
    - [ ] Complete this exercise
    ```

#### 6. **ASCII Art**
1. Create a section titled `ASCII Art`.
1. Experiment with creating ASCII art for your name (or any phrase you like) using an online ASCII art generator. A simple and fun one to use is [Patorjk's Text Art Generator](https://patorjk.com/software/taag/).
2. Choose a font style you like from the tool and generate your ASCII art.
3. Copy and paste the ASCII art directly into your `README.md` file. 
4. Does the ASCII art display correctly after adding it to your README? If not, think about the type of formatting you might need to make it look right. Hint: Wrapping the ASCII art in a
[code block](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-and-highlighting-code-blocks) 
usually preserves the alignment and formatting. Use triple backticks (```) to create a code block, like this:

````
``` 

  __  __  __  __  ___  __  ___  ___  ___ 
 / _)/  \(  \/  )(  ,\(  )(__ \(__ )( , )
( (_( () ))    (  ) _/ )( / __/ (_ \/ , \
 \__)\__/(_/\/\_)(_)  (__)\___)(___/\___/


```
````


**Questions to Consider**:
- Why does the ASCII art break down when pasted into Markdown without the code block guards?
- What is the benefit of using a fixed-width (monospaced) fonts when working with ASCII art?

---

### Checklist for Completing the Exercise:
Before submitting or showing your work, double-check the following:

- [ ] I created all the specified sections - `Number Row Characters`, `Links`, `Emojis`, `Images`, `Checklist`, `ASCII Art`.
- [ ] I experimented with bullet lists, links, headings, code blocks, emojis, and other Markdown features.
- [ ] My Markdown syntax works correctly, and the document looks tidy.
- [ ] I had fun experimenting with Markdown and feel more confident using it!

