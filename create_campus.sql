-- SQLBook: Code
-- Script to create campus table fields: campusId,name,address,distance_to_the_city_center,bus_plate_number
USE sandy;

CREATE TABLE IF NOT EXISTS campuses (
    campus_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    distance_to_the_city_center INT NOT NULL,
    bus_plate_number VARCHAR(10) NOT NULL
);
ALTER TABLE campuses
MODIFY bus_plate_number VARCHAR(25) NOT NULL; 
-- Script to insert into campuses values 
INSERT INTO campuses (name, address, distance_to_the_city_center, bus_plate_number) VALUES
('Nairobi Campus', '20100 nrb', 5, 'NAIROBI-1ABC'),
('Nakuru Campus', '20200 nkr', 10, 'NAKURU-1ABC'),
('Mombasa Campus', '20300 msa', 15, 'MOMBASA-1ABC'),
('Eldoret Campus', '20400 eld', 10, 'ELDORET-1ABC'),
('Kisii Campus', '20500 kis', 15, 'KISII-1ABC');  

SELECT * FROM campuses;
