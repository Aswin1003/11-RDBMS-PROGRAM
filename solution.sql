USE CollegeDB;

-- Remove the view if it already exists
DROP VIEW IF EXISTS StudentDetails;

-- Create StudentDetails view
CREATE VIEW StudentDetails AS
SELECT
    s.StudentName,
    c.CourseName,
    d.DepartmentName
FROM Student s
INNER JOIN Enrollment e
    ON s.StudentID = e.StudentID
INNER JOIN Course c
    ON e.CourseID = c.CourseID
INNER JOIN Department d
    ON s.DepartmentID = d.DepartmentID;

-- Display the view
SELECT * FROM StudentDetails;
