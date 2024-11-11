-- Create the courses table  
CREATE TABLE courses (  
    course_id TEXT PRIMARY KEY,  -- String ID for courses, e.g., "COMP1234"  
    semester TEXT NOT NULL,  -- Semester the course is offered (e.g., "2024-3" for Fall 2024)
    course_name TEXT NOT NULL,
    lab_time TEXT,  -- Time of the lab session (e.g., "Tue 10")
    lecture_time TEXT,  -- Time of the lecture session (e.g., "Mon 13")
    notes TEXT  
);  
  
-- Create the assignments table  
CREATE TABLE assignments (  
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Unique ID for each assignment  
    course_id TEXT NOT NULL,  -- Foreign key referencing courses  
    title TEXT NOT NULL,
    status TEXT NOT NULL,  -- Status of the assignment (e.g., "Not Started", "In Progress", "Completed") 
    due_date TEXT,  -- Due date stored as a string (e.g., "YYYY-MM-DD")  
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE  
); 


-- List of courses from https://www.georgebrown.ca/programs/computer-programming-and-analysis-program-t177
-- SEMESTER 1, 2024-3  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP1151', '2024-3', 'IT Essentials', 'Wed 09', 'Mon 13', 'Basics of IT infrastructure.'),  
('COMP1236', '2024-3', 'Fundamentals of Computing Logic', 'Thu 14', 'Tue 10', 'Focus on logic and algorithms.'),  
('COMP1234', '2024-3', 'Introduction To Web Development', 'Fri 11', 'Wed 15', 'Introduction to HTML, CSS, and JavaScript.'),  
('COMP1238', '2024-3', 'Introduction to Data Management', 'Tue 13', 'Thu 09', 'Basic concepts of data storage and retrieval.'),  
('MATH1162', '2024-3', 'Mathematics for Computer Technology I', 'Mon 10', 'Fri 12', 'Mathematical principles for computing.'),  
('COMM2000', '2024-3', 'Communicating Across Contexts', 'Tue 09', 'Thu 11', 'Effective communication in various settings.');  
  
-- SEMESTER 2, 2025-1  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP1168', '2025-1', 'Database Management', 'Fri 10', 'Mon 14', 'Introduction to database systems.'),  
('COMP1202', '2025-1', 'Object-Oriented Programming', 'Wed 13', 'Tue 11', 'Core concepts of OOP using Java.'),  
('COMP1235', '2025-1', 'Introduction To Full-Stack Development', 'Thu 10', 'Mon 15', 'Web development from front to back end.'),  
('COMP3044', '2025-1', 'Linux Essentials', 'Tue 14', 'Wed 12', 'Introduction to Linux OS.'),  
('GSSC1027', '2025-1', 'Personal Finance', 'Fri 09', 'Thu 13', 'Managing personal financial matters.'),  
('MATH1172', '2025-1', 'Mathematics for Computer Technology II', 'Mon 11', 'Fri 15', 'Advanced mathematical concepts.');  
  
-- SEMESTER 3, 2025-3  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP1230', '2025-3', 'Advanced Web Programming', 'Wed 10', 'Mon 13', 'Advanced web technologies and frameworks.'),  
('COMP2130', '2025-3', 'Application Development using Java', 'Thu 09', 'Tue 14', 'Building applications with Java.'),  
('COMP2136', '2025-3', 'Software Quality Assurance', 'Fri 12', 'Wed 15', 'Ensuring software quality and standards.'),  
('COMP2139', '2025-3', 'Web Application Development', 'Tue 10', 'Thu 11', 'Developing scalable web applications.'),  
('COMP2147', '2025-3', 'System Analysis, Design And Testing', 'Mon 14', 'Fri 11', 'Systems analysis and design methodologies.'),  
('GNED', '2025-3', 'General Education Elective', 'Thu 15', 'Tue 12', 'Elective course for general education.');  
  
-- SEMESTER 4  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP2080', '2026-1', 'Data Structures and Algorithms', 'Mon 09', 'Wed 13', 'Efficient data storage and manipulation.'),  
('COMP2148', '2026-1', 'Professional Workplace Competencies', 'Tue 11', 'Thu 14', 'Skills for professional work environments.'),  
('COMP2151', '2026-1', 'Agile Software Development', 'Wed 14', 'Mon 15', 'Agile methodologies and practices.'),  
('COMP2152', '2026-1', 'Open Source Development', 'Thu 09', 'Fri 10', 'Contributing to open source projects.'),  
('COMP2154', '2026-1', 'System Development Project', 'Fri 14', 'Tue 13', 'Capstone project for system development.'),  
('GNED1', '2026-1', 'General Education Elective', 'Wed 10', 'Thu 12', 'Elective course for general education.');  
  
-- SEMESTER 5  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP3059', '2026-3', 'Capstone Project I', 'Tue 09', 'Mon 14', 'First phase of the capstone project.'),  
('COMP3074', '2026-3', 'Mobile Application Development I', 'Thu 11', 'Wed 15', 'Building mobile applications for iOS/Android.'),  
('COMP3095', '2026-3', 'Web Application Development Using Java', 'Fri 13', 'Tue 10', 'Developing Java-based web applications.'),  
('COMP3104', '2026-3', 'DevOps', 'Mon 12', 'Thu 09', 'Practices for development and operations integration.'),  
('COMP3122', '2026-3', 'Applied Data Science', 'Wed 15', 'Fri 11', 'Applying data science techniques in practice.'),  
('COMP3123', '2026-3', 'Full Stack Development I', 'Tue 12', 'Mon 10', 'Comprehensive full-stack development.');  
  
-- SEMESTER 6  
INSERT INTO courses (course_id, semester, course_name, lab_time, lecture_time, notes) VALUES  
('COMP3078', '2027-1', 'Capstone Project II', 'Fri 15', 'Wed 09', 'Final phase of the capstone project.'),  
('COMP3134', '2027-1', 'Introduction to Cyber Security', 'Thu 13', 'Mon 11', 'Fundamentals of cyber security.'),  
('COMP3097', '2027-1', 'Mobile Application Development II', 'Mon 15', 'Tue 14', 'Advanced mobile application development.'),  
('COMP3132', '2027-1', 'Applied Machine Learning', 'Wed 12', 'Thu 10', 'Practical machine learning applications.'),  
('COMP3133', '2027-1', 'Full Stack Development II', 'Tue 11', 'Fri 14', 'Advanced full-stack development techniques.');  


-- Assignments for SEMESTER 1, 2024-3  
INSERT INTO assignments (course_id, title, status, due_date) VALUES  
('COMP1151', 'Network Setup Assignment', 'Not Started', '2024-09-15'),  
('COMP1151', 'Hardware Installation Project', 'In Progress', '2024-10-01'),  
('COMP1236', 'Logic Gates Exercise', 'Completed', '2024-09-10'),  
('COMP1236', 'Algorithm Design Task', 'In Progress', '2024-10-05'),  
('COMP1234', 'HTML/CSS Basics', 'Not Started', '2024-09-20'),  
('COMP1234', 'JavaScript Interactive Page', 'Not Started', '2024-10-10'),  
('COMP1238', 'SQL Query Assignment', 'Completed', '2024-09-18'),  
('COMP1238', 'Data Normalization Task', 'In Progress', '2024-10-08'),  
('MATH1162', 'Calculus Problem Set', 'Completed', '2024-09-12'),  
('MATH1162', 'Linear Algebra Quiz', 'Not Started', '2024-10-15'),  
('COMM2000', 'Communication Skills Essay', 'In Progress', '2024-09-25'),  
('COMM2000', 'Presentation Project', 'Not Started', '2024-10-20');  
  
-- Assignments for SEMESTER 2, 2025-1  
INSERT INTO assignments (course_id, title, status, due_date) VALUES  
('COMP1168', 'Database Design Project', 'Not Started', '2025-02-10'),  
('COMP1168', 'SQL Optimization Assignment', 'In Progress', '2025-03-01'),  
('COMP1202', 'Java OOP Basics', 'Completed', '2025-02-05'),  
('COMP1202', 'Inheritance and Polymorphism Task', 'Not Started', '2025-03-15'),  
('COMP1235', 'Frontend Development Exercise', 'Completed', '2025-02-18'),  
('COMP1235', 'Backend API Development', 'In Progress', '2025-03-10'),  
('COMP3044', 'Linux Command Line Basics', 'Not Started', '2025-02-25'),  
('COMP3044', 'Shell Scripting Project', 'Completed', '2025-03-20'),  
('GSSC1027', 'Budget Planning Assignment', 'In Progress', '2025-02-22'),  
('GSSC1027', 'Investment Strategies Essay', 'Not Started', '2025-03-12'),  
('MATH1172', 'Probability Problem Set', 'Completed', '2025-02-15'),  
('MATH1172', 'Complex Numbers Quiz', 'In Progress', '2025-03-05');  