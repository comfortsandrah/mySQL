-- Script to create campus table fields: campusId,name,address,distance_to_the_city_center,bus_plate_number
USE sandy;

CREATE TABLE IF NOT EXISTS campuses (
    campusId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    distance_to_the_city_center INT NOT NULL,
    bus_plate_number VARCHAR(10) NOT NULL
);
