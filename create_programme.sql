--Script for creating programme table fields: programme_id,title,duration,level
USE sandy;
CREATE TABLE IF NOT EXISTS programmes (
    programme_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    level VARCHAR(100) NOT NULL
); 

