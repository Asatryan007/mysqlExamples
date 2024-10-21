
-- avg function for calculated the average grade students which study Biology
SELECT AVG(students.grade) as average_grade, courses_enrollments.course_name
from students,(SELECT * FROM courses
                INNER join enrollments
                ON courses.id = enrollments.course_id) as courses_enrollments
where courses_enrollments.student_id = students.id
                            and courses_enrollments.course_name = 'Biology';