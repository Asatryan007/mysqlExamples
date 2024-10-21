-- List all students who are enrolled in the "Physics" course

SELECT students.id,students.name, students.birthdate, students.gender,students.grade,courses.course_name
FROM students,courses,enrollments
WHERE   students.id = enrollments.student_id and courses.id = enrollments.course_id and courses.course_name = 'Physics'

-- List all courses taught by teachers from the "Mathematics" department

SELECT  courses.id, courses.course_name, courses.course_code,teacher_department.name as teacher_name
FROM courses,
     (SELECT teachers.id as teacher_id, teachers.name, school_managment.departments.department_name from teachers
                                                                                                             inner join departments
                                                                                                                        on teachers.department_id = departments.id) as teacher_department

where courses.teacher_id = teacher_department.teacher_id and teacher_department.department_name = 'Mathematics'


-- Count students are enrolled in each course

SELECT courses.course_name, count(enrollments.student_id) as students_count
FROM courses, enrollments
WHERE enrollments.course_id = courses.id
GROUP BY courses.course_name