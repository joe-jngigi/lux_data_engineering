-- Create a database
CREATE DATABASE mywork;

-- create a table
CREATE TABLE mywork.employee(
    emp_id INT NOT NULL,
    emep_name VARCHAR(60) NOT NULL,
    emp_age INT NOT NULL,
    emp_depatment VARCHAR(45),
    PRIMARY KEY(emp_id)
);

DESC mywork.employee;
SELECT * FROM employee;

CREATE TABLE company (
    id INT NOT NULL,
    user_name VARCHAR(60) NOT NULL,
    employee VARCHAR(45)
);

-- Query
SELECT id FROM company WHERE employees > 10000 ORDER BY ASC;
