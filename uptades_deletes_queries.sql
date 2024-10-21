-- Update! added new departmant , new teacher and new course with inserted values
INSERT INTO departments( department_name)
VALUES ('Chemistry');

INSERT INTO teachers(name,department_id)
VALUES ('David Thomas', 5);

INSERT INTO courses(course_name, course_code, teacher_id)
VALUES ('Organic Chemistry','CHEM101', 5);