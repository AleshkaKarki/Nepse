--populating user table
INSERT into user(user_id, username, password, email, user_role)
VALUES
	(11, 'John', 'hellohello', 'johncapps@gmail.com', 'user'),
	(22, 'George', 'hihello', 'george@gmail.com', 'user'),
	(33, 'Ronik', 'heyoohi', 'roniks@gmail.com', 'user'),
	(44, 'Ivan', 'yoyohi', 'Ivu@gmail.com', 'user');
--populating user details table
INSERT INTO `user details` (DOB, address, gender, user_id, full_name, phone_number)
VALUES
    ('2024-01-02', 'Ratopul', 'male', '11', 'John Capps', 1234566),
    ('2024-02-03', 'Chabel', 'male', '22', 'George Capps', 3456788),
    ('2024-03-04', 'Bagbazar', 'male', '33', 'Ronik Singh', 4567899),
    ('2024-04-05', 'Baneshwor', 'male', '44', 'Ivan Singh', 2341244);
--using UPDATE, SELECT and WHERE clause
SELECT * FROM user WHERE user_id = 11;
UPDATE user
SET user_id = 12
WHERE username = 'John';
--using JOIN statement
SELECT user.email, validation.sent_otp
FROM user
INNER JOIN validation ON user.email = validation.sent_otp
LIMIT 0, 25;
--using SELECT DISTINCT
SELECT DISTINCT user_id, username
FROM user;