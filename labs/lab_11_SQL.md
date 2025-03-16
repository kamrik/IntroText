# Lab 11 - SQL

## The goal for today
Gain experience running simple SQL `SELECT` queries

## Submission Process
Follow the assignment invitation link  
https://classroom.github.com/a/9rvOvsZp

In the repo created by GtiHub Classroom modify the `queries.sql` file. It will be auto-graded on each commit.

## Step 1 - open the database in sqliteonline.com
Open the practice SQLite database using the link below.
You should see the Courses and Assignments tables in the left panel.

https://sqliteonline.com/#urldb=https://raw.githubusercontent.com/kamrik/IntroText/refs/heads/main/examples/sql/t177.db

If you are curious, this DB was initialized using this file - [t177.sql](../examples/sql/t177.sql)


## Step 2 - Run some queries to get started
Run each of the following SELECT queries. Observe the output and try to understand it.

To execute a query on sqliteonline.com you can either press `Shift-Enter` on the keyboard or click the green triangle `▶ Run` button at the top of the page.


```sql
SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

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

## Step 3 - Write and submit the following queries

1. **Assignments for a Specific Course**  
   Write a query to display the `title` and `due_date` of assignments for the course `COMP1234`.


2. **Earliest Assignment Due Date**  
   Write a query to find the earliest assignment due date in the `assignments` table. Hint: use `SELECT min()`

   
3. **Latest Assignment Due Date**  
   Write a query to find the latest assignment due date in the `assignments` table.

4. **Assignments Due on a Specific Date**  
    Write a query to find the `title` and `course_id` of assignments due on `2024-10-08`.

5. **Find All Assignments Due in October**  
   Write a query to display the `title` and `due_date` of assignments due in October 2024. Hint: use `LIKE '2024-10%'`

6. **Find the Most Recent Completed Assignment**  
    Write a query to find the most recent `due_date` of assignments with a status of "Completed".

7. **Count of "Not Started" Assignments**  
   Write a query to find the total number of assignments with a status of "Not Started". Remember to use single quotes for strings in SQL.

8. **Find Courses with Labs on Tuesday**  
   Write a query to find the `course_id` and `course_name` of courses that have lab sessions on Tuesday. Hint: use `LIKE 'Tue%`
   

