# Lab 10 - Airtable
Submit on D2L as a screenshot (not via GitHub). See instructions at the bottom of this page.

## Material covered during the lecture:
- Spreadsheets
- Airtable

## The goal for today
Explore Airtable by creating a simple database with your courses and Assignments


## Step 1 - create an Airtable account
Sign up for the free Airtable account at https://airtable.com/. It does not matter which email you use to sign up. The easiest way is to sign in using your Google or Apple account.

## Step 2 - create a new database
- Don't use any templates, start from scratch
- Create 2 tables: Courses and Assignments
- Use the course code like `COMP1238` as the first column of the Courses table

- In **Assignments** table:
  - Make sure it has a Due Date column of type `Date`
  - Make sure the Course column is of type `Link to Courses`
  - It is recommended that the first column is of type Formula that concatenates the course code with the assignment name. You can use a formula like this: `Course & " - " & Name`. The `&` symbol concatenates (adds) together two strings.
- In **Courses** table create a Gallery view and see how it looks like with at least 2 courses filled in

## Optional tasks
- Make sure there is a Status field of type "Single Select" in the Assignments table and the selectable options include "In progress" and "Done"
- Create a Kanban view for this table. Try dragging the assignment between the columns
- Create a Calendar view based on the Due Date column



## Examples for how the tables should look like

![Courses table example](img/CoursesTable_example.png)

![Assignments table example](img/AssignmentsTable_example.png)

## Submission instructions

Submit a screenshot of your Assignments table. Use full screen or full window screenshots so that the database name is visible.
Use the following checkilst:
1. Database name is visible and includes your name (first name is ok)
1. Your avatar icon in the upper right corner is visible
1. The database contains two tables, Assignments and Courses
1. Assignments table contains a "Course" column of type `Link to Courses`
1. Assignments table contains a "Due date" column of type `Date`
1. Optional: Assignments table contains a "Status" column of type `Single select`
1. Optional: There is at least one view in addition to the default Grid view (for example Calendar, Kanban or Gallery view).
![Submission instructions screenshot](img/aritable_screenshot.png)