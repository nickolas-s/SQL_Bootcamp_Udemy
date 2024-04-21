-- Create students table:
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INT,
	phone TEXT UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE,
	graduation_year INT
);

-- Create teachers table:
CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INT,
	department VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	phone TEXT UNIQUE NOT NULL
);

-- Insert into students table:
INSERT INTO students(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark', 'Watney', 5, '777-555-1234', 2035);

-- Insert into teachers table:
INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES ('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321');