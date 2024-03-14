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
INSERT INTO courses (course_title) VALUES
('Introduction to Programming'),
('Databases'),
('Web Development'),
('Data Science'),
('Surgery'),
('Internal Medicine'),
('Pharmacology'),
('Architectural Design Studio'),
('Architectural History'),
('Building Technology and Materials'),
('Cinematography'),
('Film Editing'),
('Animal Breeding and Genetics'),
('Animal Nutrition'),
('Food Processing and Preservation'),
('Food Analysis and Quality Control'),
('Ecology'),
('Environmental Impact Assessment'),
('Climate Change and Sustainability'),
('Crop Science'),
('Soil Science'),
(''),
('Galactic Astronomy'),
('Advanced Astrophysics'),
('Stellar Astrophysics'),
('Advanced Studio Practice'),
('Installation and Site-Specific Art');




