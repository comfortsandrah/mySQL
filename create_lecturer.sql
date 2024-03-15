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

INSERT INTO lecturers (name, title, office_room,school_id) VALUES
('Dr.Kahenya', 'Professor', 'A101',1),
('Ms.Leila', 'Associate professor', 'A102',1),
('Dr.Karanja', 'Assistant Professor', 'A103',1),
('Ms.Lewa', 'Lecturer', 'A104',1),
('Mr.Mokaya', 'Lecturer', 'A104',1),
('Ms.Akalwa', 'Lecturer', 'A104',1);



UPDATE lecturers SET supervisor_id = 1 WHERE lecturer_id = 2; -- Dr.Kahenya is the supervisor of Ms.Leila
UPDATE lecturers SET supervisor_id = 1 WHERE lecturer_id = 3; -- Dr.Kahenya is also the supervisor of Dr.Karanja
UPDATE lecturers SET supervisor_id = 2 WHERE lecturer_id = 4;
UPDATE lecturers SET supervisor_id = 3 WHERE lecturer_id = 5;
UPDATE lecturers SET supervisor_id = 3 WHERE lecturer_id = 6;   

SELECT * FROM lecturers;

SELECT name 
FROM lecturers;
