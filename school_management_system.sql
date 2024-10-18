-- Create the database

Create database school_managment;

-- Select the database

Use school_managment;

-- Create table students
Create table students(
                         id int PRIMARY KEY  auto_increment,
                         name varchar(40) not null,
                         birthdate date not null,
                         gender varchar(10) not null,
                         grade int not null
);


-- Create table courses
Create table courses(
                        id int primary key auto_increment,
                        course_name varchar(50) not null,
                        course_code varchar(15) not null ,
                        teacher_id int not null
);

-- Create table teachers
create table teachers(
                         id int primary key auto_increment,
                         name varchar(40) not null,
                         department varchar(80) not null
);

-- Create table enrollments
create table enrollments(

                            student_id int not null,
                            course_id int not null
);

insert into students (name, birthdate, gender, grade)