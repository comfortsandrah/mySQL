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
INSERT INTO schools (name, building, faculty_id,campus_id) VALUES 
('School of Astronomy', 'SoAst Block',1,1),
('School of Computing', 'SoCo Block',1,2),
('School of Medicine', 'SoMe Block',1,3),
('School of Architecture', 'SoArc Block',2,4),
('School of Film and Media', 'SoFaM Block',2,5),
('School of Fine Arts', 'SoFA Block',2,1),
('School of Environmental Science', 'SoES Block',3,2),
('School of Agronomy', 'SoAg Block',3,3),
('School of Food Science', 'SoFS Block',3,4);


SELECT * FROM schools;