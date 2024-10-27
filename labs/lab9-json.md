# Lab 9 - JSON

## Material covered during the lecture:
- Structured data
- JSON and JSON data types
- YAML

## The goal for today
Explore JSON & YAML and VSCode command palette:
- Convert a simple CSV file to JSON
- Identify data types in your JSON
- Use a JSON validator/converter to check the file is compliant with JSON grammar
- Use VSCode to nicely format the file

If you have VSCode installed locally, clone this repo and perform the tasks locally in VSCode.

Alternatively, you can work using the github.dev editor.


## Step 1
Take a look at [players.csv](players.csv). 
It lists several players from different sports.

`N/A` stands for Not Applicable - in this case because the tennis player has no team. What JSON data type will be useful to describe this?

How many columns and rows do we have in this file?

What other terms are often used instead of the word "row" in this context?

CSV stands for 
[Comma-separated values](https://en.wikipedia.org/wiki/Comma-separated_values),
it's a common format for storing table-like data. 
GitHub renders the CSV files as a table, but you can see the raw text content by clicking on the `Code` or the `Raw` buttons above the file.

## Step 2 - create a JSON version of players.csv
Open 
[this JSON-YAML converter](https://www.bairesdev.com/tools/json2yaml/)
and type in the data from players.csv manually in JSON format.

Observe how the converter turns green whenever you type in valid JSON. Start from typing in `[]` which is a valid empty JSON array. Start adding objects, one per player, like this:
```json
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
```json
{   
    "sports": "Basketball",
    "team": {"name":"Raptors", "city":"Toronto"},
    ...
}
```

After adding at least 2 players, you can switch to typing on the YAML side, the converter will convert back to JSON. This can save you some typing but YAML tends to be a bit more confusing for beginners.

## Step 3 - add JSON and YAML files to your GitHub
Create new files, for example `docs/players.json` and `docs/players.yml` copy the JSON and YAML data from the converter.

In the JSON file add comments after each field (of the tennis player only), indicating what data type this field is. Like this:
```json
{ 
    "name": "James" // string 
}
```

Note that while `// comment` is a valid JavaScript syntax, it is NOT a valid JSON syntax. Unfortunately JSON has no syntax for comments. But many applications do accept JSON with this style of comments, even though it's not part of the standard.

YAML uses `#` for comments, like this
```yaml
# Any text intended for humans, YAML will ignore it
someKey: someValue # another comment
```

Commit your changes.

## Step 4
Experiment with formatting the JSON file using VSCode (or github.dev) auto-formatter.



With the JSON file open, bring up the command palette by pressing `Ctrl-Shift-P` and start typing "Format", find the `Format Document` command and run it. See how the file gets re-formatted. If you see no change, it might be because the file is already formatted exactly the way auto-formatter wants it to be, remove some whitespace and try again.

Take a look at the VSCode settings file. Open the command palette and start typing "Default Settings", run the following command:  
`Preferences: Open Default Settings (JSON)`  
Note that the file has lots of comments even though it's not part of the standard.


## Submission instructions
Submit on D2L:
1. Link to the JSON file in your GitHub repository
1. Screenshot showing the content of the JSON file in your repo with data type comments visible


