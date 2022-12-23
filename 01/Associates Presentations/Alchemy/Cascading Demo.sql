create database AcitivityDatabase; -- sample database for the activity

-- Table named class for the students created

-- class table for students details

CREATE TABLE Class(
    Enrollment INT PRIMARY KEY, 
    Student_Name VARCHAR(20),
    Email_id VARCHAR(20),
    State VARCHAR(20) 
);

-- Thier scores in maths and science

CREATE TABLE Mathematics(
    Enrollment INT,
    Student_Name varchar(20),
    Marks INT,
    PRIMARY KEY(Enrollment, Student_Name),
    FOREIGN KEY(Enrollment) REFERENCES Class(Enrollment) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Science(
    Enrollment INT,
    Student_Name varchar(20),
    Marks INT,
    PRIMARY KEY(Enrollment, Student_Name),
    FOREIGN KEY(Enrollment) REFERENCES Class(Enrollment) ON DELETE CASCADE ON UPDATE CASCADE
);

-- inserting values into the tables

INSERT INTO Class VALUES
    (1, 'Manoj', 'manoj@gmail.com', 'KA'),
    (2, 'Syed Sohail', 'syeds@gmail.com', 'AP'),
    (3, 'Bhargav', 'bbhat@gmail.com', 'KA');


INSERT INTO Science VALUES
    (3, 'Bhargav', 85),
    (1, 'Manoj', 95),
    (2, 'Syed Sohail', 87);

INSERT INTO Mathematics VALUES
    (1, 'Manoj', 86),
    (2, 'Syed Sohail', 83),
    (3, 'Bhargav', 90);

-- re entering the data after deletion

INSERT INTO Class VALUES
    (3, 'Bhargav', 'BhatB@gmail.com', 'KA');

INSERT INTO Mathematics VALUES
    (3, 'Bhargav', 86);

INSERT INTO Science VALUES
    (3, 'Bhargav', 87);



-- fetching data 

select * from Class;
select * from Science;
select * from Mathematics;

-- ON DELETE CASCADE example : here it is deleting from the table CLASS and by 
-- using the property of cascading it will delete from both MATHEMATIC and SCIENCE tables also

DELETE FROM Class WHERE Enrollment=4;

-- ON UPDATE CASCADE example : here it is UPDATING using the table CLASS and by 
-- using the property of cascading it will UPDATE in both MATHEMATICS and SCIENCE tables also

UPDATE Class SET Enrollment = 4 WHERE Enrollment = 3;




