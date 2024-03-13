-- SQLBook: Code
--Script to create schools table fields: school_id,name,building
USE sandy;
CREATE TABLE IF NOT EXISTS schools (
    school_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    building VARCHAR(100) NOT NULL
);
--Script to insert values into schools table: name,building
INSERT INTO schools (name, building) VALUES 
('School of Astronomy', 'SoAst Block'),
('School of Computing', 'SoCo Block'),
('School of Medicine', 'SoMe Block'),
('School of Architecture', 'SoArc Block'),
('School of Film and Media', 'SoFaM Block'),
('School of Fine Arts', 'SoFA Block'),
('School of Environmental Science', 'SoES Block'),
('School of Agronomy', 'SoAg Block'),
('School of Food Science', 'SoFS Block');
