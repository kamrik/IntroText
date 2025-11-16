# Lab 12: SQL - Part 2



## Material covered during the lecture:
- Relational databases and more SQL
- Primary and foreign keys
- Table joins
- ERDs 
- ACID principles

## The goal for today
Gain experience running SQL SELECT queries with built in functions.

## Submission instructions
Follow the assignment invitation link  
https://classroom.github.com/a/ZL1IeKbL

In the repo created by GitHub Classroom, modify the `queries.sql` file. It will be auto-graded on each commit.

## Step 1 - open the database in sqliteonline.com
Open the practice SQLite database using the link below.
You should see the Courses and Assignments tables in the left panel.

https://sqliteonline.com/#urldb=https://raw.githubusercontent.com/kamrik/IntroText/refs/heads/main/examples/sql/t177.db

> This DB was initialized using this SQL file [t177.sql](../examples/sql/t177.sql)


## Step 2 - run some queries to get started
Run each of the following SELECT queries.
To execute the query on sqliteonline.com, you can either press `Shift-Enter` on the keyboard or click the green triangle `▶ Run` button at the top of the page.

Observe the results for each query and try to understand them.

```sql

-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
```

## Step 3 - write queries for the following tasks

Documentation for SQLite built-in functions can be found at https://www.sqlite.org/lang_corefunc.html

### Exercise Questions  
   
1. **Concatenate Course Name and Semester:**  
   - Write a query to list all courses, concatenating the `course_name` and `semester` fields with a hyphen between them. Like this:  
   "IT Essentials - 2024-3"
   
2. **Find Courses with Labs on Fridays:**  
   - Write a query to find all courses that have a lab session scheduled on Friday. Include only the `course_id`, `course_name`, and `lab_time` in the result.  
   Hint: Use `LIKE`  
   
3. **Assignments due in 2025:**  
   - Write a query to list all assignments with a due date in 2025.  
   
4. **Count Assignments by Status:**  
   - Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").  
   Hint: Use `GROUP BY`
   
5. **Longest Course Name:**  
   - Write a query to find the course with the longest `course_name`. Use the `length()` function to compare the lengths.  
   Hint: Either use `ORDER BY ... DESC` or do it in two steps: first find the maximum length, then find the course with that length.
   
6. **Uppercase Course Names:**  
   - Write a query to return a list of all course names in uppercase.  
   
7. **Assignments Due in September:**  
   - Write a query to list the titles of all assignments that are due in September, regardless of year. Use the `LIKE` operator to filter by `due_date`.
   
8. **Assignments with Missing Due Dates:**  
   - Write a query to find all assignments where the `due_date` is missing. Note: There might be no assignments with NULL due_dates initially, but one was added if you ran the INSERT statement in the examples above.
   Hint: `due_date IS NULL`
   


