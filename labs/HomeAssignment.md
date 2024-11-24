# Home Assignment - SQL practice


## Submission instructions
- Submit on D2L
   - SQL file with all the queries you wrote
   - A screenshot with a query you liked the most, or found the most challenging
   - Include your name in the file and on the screenshot
- DO NOT
  - Do not publish the SQL file on your GitHub 


For exercises that are phrased as questions, include your answer as a comment and then add the query you used to get that answer. Example:
```sql
-- Student Name

-- Q1: List all assignments
SELECT * from assignments;

-- Q2: What's the title of the assignment with the earliest due date?
-- A: "Logic Gates Exercise"
SELECT * FROM assignments 
ORDER BY due_date;

...
```

## Introduction
This exercise is based on an SQLite database. In addition to the two tables we used in the labs it contains another table that is defined as follows:

```sql
CREATE TABLE rectangles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    -- top left corner coordinates
    x REAL NOT NULL,
    y REAL NOT NULL,
    width REAL NOT NULL,
    height REAL NOT NULL,
    color TEXT -- css style color
); 
```

The `REAL` data type in SQLite is an 8-byte floating point number. For us it means the sizes can be fractional, like 3.25.

The rectangles represent rectangles on the screen. In many computer applications, including in HTML & CSS, coordinates of objects on the screen are given from the top left corner.


<img src="img/rectangles.png" width="400">

Definition and data for the rectangles table can be found in [rectangels.sql](../examples/sql/rectangles.sql)

The courses and assignments tables are defined, as before, in
[t177.sql](../examples/sql/t177.sql)

Documentation for SQLite built-in functions can be found at https://www.sqlite.org/lang_corefunc.html

Refer to labs 11 and 12 for examples.

## Open the practice database
It's the same link we used for the labs. The DB file has been updated with new data.

https://sqliteonline.com/#urldb=https://raw.githubusercontent.com/kamrik/IntroText/refs/heads/main/examples/sql/t177.db


## Questions - write queries for the following tasks
One point per question

1. **List all the rectangles**  
   - Take a look at the data from the rectangles table.

1. **How many rectangles are there?**  
   
1. **What color is the widest rectangle?** 

1. **What color is the tallest rectangle?**

1. **List all rectangles that are wider than they are tall**
   - That is the width is larger than height

1. **Calculate and select area of each rectangle**
   - Area is `width` times `height` (just in case)
   - Use the `AS` keyword to call the column Area

1. **What color is the largest rectangle?** 
   - Largest by area

1. **What color is the rectangle that extends the most to the right?**
   - Hint: the coordinates of the bottom right corner are  
   `x + width, y + height`

1. **Find rectangle(s) with NULL color**
   - List all the rectangles with color set to NULL

1. **List all the different colors**
   - Without duplicates

1. **List all the different _named_ colors**
   - Without duplicates
   - Do not include NULL
   - Named colors are colors like `red` as opposed to RGB colors that look like `#abcdef`
   
1. **List rectangle colors in upper case letters**
   - Like this `RED` or `#FF12B2`

1. **What is the course_id of the course with the longest name?**

1. **How many assignments are there with due dates in 2024?**

1. **Concatenate Course ID and name:**  
   - Write a query to list all courses, concatenating the `course_id` and `course_name` fields with a colon and a space between them. Like this:   
   "COMP1151: IT Essentials"
   
1. **List courses with Labs on Mondays:**  
   - Write a query to find all courses that have a lab session scheduled on Monday. Include only the `course_id`, `course_name`, and `lab_time` in the result.  
   
1. **Past Assignments:**  
   - Write a query to list all assignments with a due date before the current date.  
   
1. **How many assignments are there for each course:**  
   - Write a query to count the number of assignments for each course.  
   Hint: `GROUP BY`


## Bonus tasks
One point each, but the total grade can't be above 18.
1. **List the number of assignments per semester**  
   - Write a query that list all semesters along with the number (count) of assignments for courses in that semester.

1. **Show the red component of all the RGB colors**  
   - The red component is the first 2 digits after the `#`. For example, for the color `#a2cb89` the red component is `a2`.



