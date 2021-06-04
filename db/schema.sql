DROP DATABASE IF EXISTS 
DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;


USE employeeTracker_db;

CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT,
department_name VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE role (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
salary DECIMAL(20,2) NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(department_id)
REFERENCES department(id)
);

CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
PRIMARY KEY (id),

FOREIGN KEY(role_id)
REFERENCES role(id),

FOREIGN KEY(manager_id)
REFERENCES employee(id)
);