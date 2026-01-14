/* SQL BASICS */

-- 1 & 2. view the table (SELECT, FROM)
SELECT student_name, gpa, school_lunch 
FROM students
LIMIT 5;

-- 3. show who gets school lunch (Where)
SELECT COUNT(*) -- student_name, gpa, school_lunch 
FROM students
WHERE school_lunch = 'Yes' AND gpa > 3.3;

-- 4. sort the studentsby gpa (ORDER BY)
SELECT student_name, gpa, school_lunch 
FROM students
WHERE school_lunch = 'Yes' AND gpa > 3.3
ORDER BY gpa DESC;

SELECT DISTINCT gpa
FROM students
ORDER BY gpa DESC;

-- 5. show the average gpa for each grade level (GROUP BY)
SELECT grade_level, AVG(gpa)
FROM students
GROUP BY grade_level
ORDER BY grade_level;

-- 6. Show the grade levels with an average gpa below 3.3 (HAVING)
SELECT grade_level, AVG(gpa) AS avg_gpa
FROM students
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;

-- 7. show the final grades for each student: LEFT JOIN
SELECT * 
FROM students;

SELECT*
FROM student_grades;

SELECT*
FROM students LEFT JOIN student_grades
ON students.id = student_grades.student_id;
