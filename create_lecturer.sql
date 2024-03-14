-- SQLBook: Code
--Script for creating lecturer table fields: lecturer_id,name,title,office_room
USE sandy;
CREATE TABLE IF NOT EXISTS lecturers (
    lecturer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    office_room VARCHAR(100) NOT NULL,
    school_id INT NOT NULL,
    supervisor_id INT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id),
    FOREIGN KEY (supervisor_id) REFERENCES lecturers(lecturer_id)
);




