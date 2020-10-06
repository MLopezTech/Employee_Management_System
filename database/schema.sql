--  drops database if it exists

DROP DATABASE IF EXISTS company_db;

-- creates Database
CREATE database company_db;
-- use of this database
USE company_db;
-- created table department and ID
CREATE TABLE department (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_id)
);




-- created table of company/ salary

CREATE TABLE company_role (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DEC(7,2) NOT NULL,
    dept_id INT,
    PRIMARY KEY (role_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


-- table of employees first and last name

CREATE TABLE employees (
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    emp_role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_role_id) REFERENCES company_role(role_id),
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);