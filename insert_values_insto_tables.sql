-- insert into table students
insert into students (name, birthdate, gender, grade)
VALUES ('Alex', '2007-11-08', 'male', 80),
       ('John', '2008-02-24', 'male', 90),
       ('Mary', '2007-10-22', 'female', 95),
       ('Jane', '2007-03-12', 'female', 100);



-- insert into table courses
insert into courses( course_name, course_code, teacher_id)
values ('Physics', 'A01', 1),
       ('Maths', 'A02', 2),
       ('Biology', 'A03', 3),
       ('History', 'A04', 4),
        ('Algebra','AL01', 6);


-- insert into table departments

INSERT INTO departments(department_name)
VALUES ('Physics'),
       ('Mathematics'),
       ('Biology'),
       ('History');

-- insert into table teachers
insert into teachers(name, department_id)
VALUES ('Ann', 1),
       ('Bob', 2),
       ('Arnold',3),
       ('Lisa', 4),
       ('Alice Johnson', 2);


-- insert into table enrollments
insert into enrollments (student_id, course_id)
values (1,1),
       (1,2),
       (1,3),
       (1,4),
       (2,2),
       (2,3),
       (2,4),
       (3,1),
       (3,2),
       (3,3),
       (3,4),
       (4,1),
       (4,2),
       (4,3),
       (4,4),
       (1,5),
       (2,5),
       (3,5)


