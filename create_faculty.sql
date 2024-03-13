-- SQLBook: Code
--Script to create faculty table fields: facultyId,building,dean 
USE sandy;
CREATE TABLE IF NOT EXISTS faculties (
    facultyId INT AUTO_INCREMENT PRIMARY KEY,
    building VARCHAR(100) NOT NULL,
    dean VARCHAR(100) NOT NULL
);

ALTER TABLE faculties
ADD faculty_name VARCHAR(50);

--Script to insert  into faculties table values:
INSERT INTO faculties (building, dean, faculty_name) VALUES
('Science', 'Dr.Kendi', 'Science Faculty'),
('Art', 'Dr.Sandrah', 'Arts Faculty'),
('Agriculture', 'Dr.Rebecca', 'Agriculture Faculty');

