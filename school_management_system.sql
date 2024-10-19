-- Create the database

Create database school_management;

-- Select the database

Use school_management;

-- Create table students
Create table students(
                         id int PRIMARY KEY  auto_increment,
                         name varchar(40) not null,
                         birthdate date not null,
                         gender ENUM('male', 'female', 'other'),
                         grade int not null
);


-- Create table courses
Create table courses(
                        id int primary key auto_increment,
                        course_name varchar(50) not null,
                        course_code varchar(15) not null ,
                        teacher_id int not null,
                        FOREIGN KEY (teacher_id)
                        REFERENCES teachers(id)
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
                            course_id int not null,
                            FOREIGN KEY (student_id)
                            REFERENCES students(id),
                            FOREIGN KEY (course_id)
                            REFERENCES courses(id)
);
