use student;

SELECT * from students;

SELECT * from courses;

-- INNER JOIN
SELECT students.Roll_No, students.FirstName, students.LastName
FROM students
INNER JOIN Courses ON students.Course_Id = Courses.Course_Id;


-- LEFT JOIN
SELECT students.FirstName, Courses.Course_Name
FROM students
LEFT JOIN Courses
ON students.Course_Id = Courses.Course_Id;