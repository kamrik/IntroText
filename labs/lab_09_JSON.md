# Lab 9 - JSON and YAML

## Material Covered in the Lecture
- Structured data
- JSON and JSON data types
- YAML
- Data serialization and deserialization

---

## Today's Goal
Explore JSON and YAML:
- Convert a simple CSV file to JSON
- Add comments to YAML with keywords describing data types (number, string, etc.)
- Validate JSON and YAML
- Format files neatly (optional with VS Code)
- Submit files for automatic grading

---

## Submission Process
Follow the [email bot instructions](email_bot.md) to get your new repository link from the bot.

Save your work in the following two files in the **root directory of your repository**:
1. `players.json`
2. `players.yaml` (or `players.yml`)

The autograder script will:
- Check for a valid `players.json` file.
- Check for a valid `players.yaml` (or `.yml`) file with the correct structure.
- Ensure at least 3 players are present in both files.
- Verify YAML contains comments with relevant keywords (e.g., number, string, null).
---

## Steps for the Lab

### Step 1 - Explore the CSV File
Take a look at [players.csv](../examples/players.csv).  
It lists several players from different sports.

CSV stands for
[comma-separated values](https://en.wikipedia.org/wiki/Comma-separated_values),
which is a common format for storing table-like data.
GitHub renders CSV files as tables, but you can see the raw text content by clicking either the `Code` or the `Raw` buttons above the file.


- `N/A` stands for "Not Applicable"—in this case, because this tennis player has no team. What data type would be appropriate in JSON or YAML to represent this value?
- How many **columns** and **rows** are in this file? How can the CSV format be mapped to JSON and YAML?

---

### Step 2 - Create JSON and YAML Versions of `players.csv`
Open [this JSON-to-YAML converter](https://www.bairesdev.com/tools/json2yaml/)
and manually enter the data from `players.csv` in JSON format.

> Add several empty lines at the top of the text boxes to prevent the pop-up error message from hiding your text.


Observe how the converter turns green whenever you type valid JSON. Start by typing `[]`, which is a valid empty JSON array.
Add one object per player, like this:
```js
[
    {
        "name": "James Brown",
        ...
    },
    {
        ...
    }
]

```

Store the team information as a sub-object like this:
```js
{   
    "sport": "Basketball",
    "team": {"name": "Raptors", "city": "Toronto"},
    ...
}
```

After adding some information, you can switch to the YAML side, and the converter will convert it back to JSON. This can save you some typing, but YAML can be slightly more confusing for beginners.

   - The JSON file should start with `[` and end with `]` to indicate a **array (list)** in JSON.
   - Each row of the CSV should become an **object** in the JSON array.
   - Store team information as a **sub-object** under the `team` key.

Example:
```json
[
    {
        "name": "LeBron James",
        "sport": "basketball",
        "position": "forward",
        "age": 38,
        "team": {
            "name": "Lakers",
            "city": "Los Angeles"
        }
    }
]
```


For the YAML version:
   - Include comments next to several fields in the YAML file. Each comment should contain the field's data type. For example: `age: 38 # number`
   
   - The autograder will look for at least one of the following words in the comments: `number`, `string`, `null`, `boolean`, `object`, `array`.

Example:
```yaml
# The top-level structure is an array (list)
- name: LeBron James
  sport: basketball
  position: forward  # string
  age: 38  # number
  team:  # object
    name: Lakers
    city: Los Angeles
- name: Someone Else
  sport: Prompt engineering
  ...
```

---

### Step 3 (Optional) - Format Your Files with VS Code
1. Open your files in VS Code (or `github.dev`).
2. Use the "Format Document" option to format your JSON and YAML files neatly:
   - Press `Ctrl-Shift-P` (or `Cmd-Shift-P` on Mac) to open the command palette.
   - Type "Format Document" and run the command.

---

### What the Autograder Checks:
- **`players.json`:**
  - Is the file present and correctly named?
  - Is it valid JSON (parsable)?
  - Does it contain a top-level list with at least 3 objects?
  - Does each object have:
    - Fields like `name`, `sport`, `position`, `age`, and `team`?
    - A `team` sub-object with `name` and `city` fields?

- **`players.yaml`:**
  - Is the file present and correctly named?
  - Is it valid YAML (parsable)?
  - Does it contain a top-level list with at least 3 objects?
  - Are there comments (`#`) that indicate field data types and contain at least one of the following words: `number`, `string`, `null`, `boolean`, `object`, `array`?
