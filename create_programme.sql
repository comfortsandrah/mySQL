-- SQLBook: Code

-- SQLBook: Code
--Script for creating programme table fields: programme_id,title,duration,level
USE sandy;
CREATE TABLE IF NOT EXISTS programmes (
    programme_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    level VARCHAR(100) NOT NULL,
    school_id INT ,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
); 


--Script to insert values into programmes table
INSERT INTO programmes (title, duration, level) VALUES 
('B.Sc. Computer Science', 4, 'Undergraduate'),
('B.Sc. Information Technology', 4, 'Undergraduate'),
('B.Sc. Astronomy', 4, 'Undergraduate'),
('M.Sc. Astrophysics', 2, ' Postgraduate'),
('B.Sc. Medicine and Surgery', 6, 'Undergraduate'),
('B.Sc. Clinical Medicine', 4, 'Undergraduate'),
('B.Arch. Architecture', 5, 'Undergraduate'),
('B.Sc. Film Production', 3, 'Undergraduate'),
('MFA. Fine Arts', 2, 'Postgraduate'),
('B.Sc. Environmental Science ', 4, 'Undergraduate'),
('B.Sc. Food Science and Technology ', 4, 'Undergraduate'),
('MSc. Agronomy', 2, 'Postgraduate'),
('B.Sc. Animal Sciences', 3, 'Undergraduate');



