--Script to create students table fields: student_id,first_name,last_name,year_of_birth,year_of_enrollment
USE sandy;
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    year_of_birth INT NOT NULL,
    year_of_enrollment INT NOT NULL
);