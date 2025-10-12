# Lab 9 - JSON and YAML

## Material covered during the lecture:
- Structured data
- JSON and JSON data types
- YAML
- Data Serialization and Deserialization

---

## The Goal for Today
Explore JSON & YAML:
- Convert a simple CSV file to JSON
- Add comments in YAML with keywords describing JSON data types (number, string, etc.)
- Validate JSON and YAML
- Format files neatly (optional with VSCode)
- Submit files through GitHub Classroom for automatic grading

---

## Submission Process
Follow the assignment invitation link:  
https://classroom.github.com/a/2EFJbUi9

Please save your work in the following two files in the **root directory of your repository**:
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
[Comma-separated values](https://en.wikipedia.org/wiki/Comma-separated_values),
which is a common format for storing table-like data. 
GitHub renders CSV files as a tables, but you can see the raw text content by clicking either the `Code` or the `Raw` buttons above the file.


- `N/A` stands for Not Applicable—in this case, because this tennis player has no team. What data type would be appropriate in JSON/YAML to represent this?
- How many **columns** and **rows** are there in this file? How can the CSV format be mapped to JSON and YAML?

---

### Step 2 - create JSON & YAML versions of `players.csv`
Open 
[this JSON-YAML converter](https://www.bairesdev.com/tools/json2yaml/)
and type in the data from players.csv manually in JSON format.

> Add several empty lines at the top of the text boxes to prevent the pop-up error message from hiding your text.


Observe how the converter turns green whenever you type valid JSON. Start from typing in `[]` which is a valid empty JSON array. 
Start adding objects, one per player, like this:
```js
[
    {
        "name": "James Brown"
        ...
    },
    {
        ...
        
]

```

Store the team info as a sub-object like this:
```js
{   
    "sports": "Basketball",
    "team": {"name":"Raptors", "city":"Toronto"},
    ...
}
```

After adding some info, you can switch to typing on the YAML side, and the converter will convert back to JSON. This can save you some typing but YAML can be slightly more confusing for beginners.

   - The JSON file should start with `[` and end with `]` to indicate a **list (array)** in JSON.
   - Each row of the CSV should become an **object** in the JSON list.
   - Store team information as a **sub-object** under the `team` key.

Example:
```json
[
    {
        "name": "Lebron James",
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
   - Include comments next to several fields in the YAML file. The comment should contain the data type of the field. For example: `age: 38 # number`
   
   - The autograder will be looking for at least one of the following words in the comments: `number`, `string`, `null`, `boolean`, `object`, `array`.

Example:
```yaml
# The top-level structure is a list (array)
- name: Lebron James
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

### Step 3 (Optional) - Format Your Files with VSCode
1. Open your files in VSCode (or `github.dev`).
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
  - Are there some comments (`#`) with field data types containing at least one of the following words: `number`, `string`, `null`, `boolean`, `object`, `array`?


