--Script to create table lecturer_courses with fields lecturer_id , course_id
USE sandy;
CREATE TABLE IF NOT EXISTS lecturer_courses (
    lecturer_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (lecturer_id, course_id),
    FOREIGN KEY (lecturer_id) REFERENCES lecturers(lecturer_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO lecturer_courses VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9);