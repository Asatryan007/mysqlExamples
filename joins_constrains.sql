-- Created query to get list of all teachers even if they don`t currently teach any course

SELECT  teachers.name, courses.course_name
FROM teachers
         left join  courses
                    ON teachers.id = courses.teacher_id

