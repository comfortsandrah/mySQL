USE sandy;
CREATE TABLE IF NOT EXISTS student_course_enrollment (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    year INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    term VARCHAR(10) NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);