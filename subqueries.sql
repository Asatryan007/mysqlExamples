-- Query for finding names who are enrolled in more than one course

SELECT students.name from students,(SELECT * FROM courses
                                                                                         INNER join enrollments
                                                                                                    ON courses.id = enrollments.course_id
) as courses_enrollments
where student_id = students.id
GROUP BY students.name
having COUNT(course_id)> 1
