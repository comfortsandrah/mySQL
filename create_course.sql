-- SQLBook: Code
--Script for creating course table fields: course_id,course_title
USE sandy;
CREATE TABLE IF NOT EXISTS courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,    
    course_title VARCHAR(100) NOT NULL,
    prerequisite_id INT,
    programme_id INT,
    FOREIGN KEY (prerequisite_id) REFERENCES courses(course_id),
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id) ON DELETE CASCADE
);


 
--Script to insert values into courses table: course_title
INSERT INTO courses (course_title, programme_id, prerequisite_id) VALUES
('Introduction to Programming', 1, NULL), -- B.Sc. Computer Science
('Databases', 1, 1), -- B.Sc. Computer Science, prerequisite: Introduction to Programming
('Web Development', 1, 1), -- B.Sc. Computer Science, prerequisite: Introduction to Programming
('Data Science', 1, 2), -- B.Sc. Computer Science, prerequisite: Databases
('Surgery', 5, NULL), -- B.Sc. Clinical Medicine
('Internal Medicine', 5, 5), -- B.Sc. Clinical Medicine, prerequisite: Surgery
('Pharmacology', 5, 5), -- B.Sc. Clinical Medicine, prerequisite: Surgery
('Architectural Design Studio', 7, NULL), -- B.Arch. Architecture
('Architectural History', 7, 7), -- B.Arch. Architecture, prerequisite: Architectural Design Studio
('Building Technology and Materials', 7, 7), -- B.Arch. Architecture, prerequisite: Architectural Design Studio
('Cinematography', 8, NULL), -- B.Sc. Film Production
('Film Editing', 8, 11), -- B.Sc. Film Production, prerequisite: Food Processing and Preservation
('Animal Breeding and Genetics', 12, NULL), -- B.Sc. Animal Sciences
('Animal Nutrition', 12, 11), -- B.Sc. Animal Sciences, prerequisite: Food Processing and Preservation
('Food Processing and Preservation', 11, NULL), -- B.Sc. Food Science and Technology
('Food Analysis and Quality Control', 11, 13), -- B.Sc. Food Science and Technology, prerequisite: Crop Science
('Ecology', 10, NULL), -- B.Sc. Environmental Science
('Environmental Impact Assessment', 10, 15), -- B.Sc. Environmental Science, prerequisite: Ecology
('Climate Change and Sustainability', 10, 15), -- B.Sc. Environmental Science, prerequisite: Ecology
('Crop Science', 13, NULL), -- MSc. Agronomy
('Soil Science', 13, 20), -- MSc. Agronomy, prerequisite: Galactic Astronomy
('Galactic Astronomy', 4, NULL), -- M.Sc. Astrophysics
('Advanced Astrophysics', 4, 22), -- M.Sc. Astrophysics, prerequisite: Stellar Astrophysics
('Stellar Astrophysics', 4, NULL), -- M.Sc. Astrophysics
('Advanced Studio Practice', 9, NULL); -- MFA. Fine Arts

SELECT * FROM courses;