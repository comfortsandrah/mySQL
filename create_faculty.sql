--Script to create faculty table fields: facultyId,building,dean 
USE sandy;
CREATE TABLE IF NOT EXISTS faculties (
    facultyId INT AUTO_INCREMENT PRIMARY KEY,
    building VARCHAR(100) NOT NULL,
    dean VARCHAR(100) NOT NULL
);
