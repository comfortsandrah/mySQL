-- SQLBook: Code
--Script to create schools table fields: school_id,name,building
USE sandy;
DROP TABLE schools;

SHOW TABLES;
CREATE TABLE IF NOT EXISTS schools (
    school_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    building VARCHAR(100) NOT NULL,
    faculty_id INT NOT NULL,
    campus_id INT,  
    FOREIGN KEY (faculty_id) REFERENCES faculties(faculty_id),
    FOREIGN KEY (campus_id) REFERENCES campuses(campus_id)
);
--Script to insert values into schools table: name,building
INSERT INTO schools (name, building, faculty_id) VALUES 
('School of Astronomy', 'SoAst Block',1),
('School of Computing', 'SoCo Block',1),
('School of Medicine', 'SoMe Block',1),
('School of Architecture', 'SoArc Block',2),
('School of Film and Media', 'SoFaM Block',2),
('School of Fine Arts', 'SoFA Block',2),
('School of Environmental Science', 'SoES Block',3),
('School of Agronomy', 'SoAg Block',3),
('School of Food Science', 'SoFS Block',3);


SELECT s.name,s.building FROM schools AS s JOIN faculties AS f ON s.faculty_id = f.faculty_id
WHERE f.faculty_name = 'Science Faculty';