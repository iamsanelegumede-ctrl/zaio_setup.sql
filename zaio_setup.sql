--Task 1: Database Creation 
CREATE DATABASE zaio_bootcamp;


--Task 2: Table Creation
CREATE TABLE zaio_students (
    id SERIAL PRIMARY KEY,
   full_name VARCHAR(100) NOT NULL,
   bootcamp_track VARCHAR(50) NOT NULL,
    cohort_year INTEGER DEFAULT 2026
);


--Task 3: Data Insertion
COPY zaio_students(full_name, bootcamp_track, cohort_year) 
FROM 'C:\Users\Public\Downloads\zaio_50_students_data.txt' 
WITH (format csv, delimiter ',');


--Task 4: Data Retrieval
SELECT 
COUNT(*)
FROM zaio_students;

SELECT 
bootcamp_track,
COUNT(*) AS total_students
FROM zaio_students
GROUP BY bootcamp_track
ORDER BY total_students DESC;

--Task 5: GitHub Submission