--creating table for user

CREATE TABLE user(
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(64),
    email VARCHAR(30),
    user_role VARCHAR(30)
    );
--creating table  user details
CREATE TABLE user details(
    DOB DATE,
    address VARCHAR(50),
    gender VARCHAR(30),
    user_id INT(11),
    fullname VARCHAR(30),
    phonenumber INT(11)
    );
--creating table validation
CREATE TABLE validation(
    validation_id INT PRIMARY KEY,
    status VARCHAR(64),
    email VARCHAR(50),
    sent_otp INT(11),
    entered_otp INT(11)
    );