-- List all students who are enrolled in the "Physics" course

SELECT students.id,students.name, students.birthdate, students.gender,students.grade,courses.course_name
FROM students,courses,enrollments
WHERE   students.id = enrollments.student_id and courses.id = enrollments.course_id and courses.course_name = 'Physics'

-- List all courses taught by teachers from the "Maths" department

SELECT  courses.id, courses.course_name, courses.course_code, teachers.name, teachers.department
FROM courses,teachers
WHERE courses.teacher_id = teachers.id and teachers.department = 'Mathematics'

-- Count students are enrolled in each course

SELECT courses.course_name, count(enrollments.student_id) as students_count
FROM courses, enrollments
WHERE enrollments.course_id = courses.id
GROUP BY courses.course_name