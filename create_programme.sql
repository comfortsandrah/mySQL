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
INSERT INTO programmes (title, duration, level,school_id) VALUES 
('B.Sc. Computer Science', 4, 'Undergraduate',2),
('B.Sc. Information Technology', 4, 'Undergraduate',2),
('B.Sc. Astronomy', 4, 'Undergraduate',1),
('M.Sc. Astrophysics', 2, ' Postgraduate',1),
('B.Sc. Medicine and Surgery', 6, 'Undergraduate',3),
('B.Sc. Clinical Medicine', 4, 'Undergraduate',3),
('B.Arch. Architecture', 5, 'Undergraduate',4),
('B.Sc. Film Production', 3, 'Undergraduate',5),
('MFA. Fine Arts', 2, 'Postgraduate',6),
('B.Sc. Environmental Science ', 4, 'Undergraduate',7),
('B.Sc. Food Science and Technology ', 4, 'Undergraduate',9),
('MSc. Agronomy', 2, 'Postgraduate',8),
('B.Sc. Animal Sciences', 3, 'Undergraduate',9);

SELECT *  FROM programmes;



