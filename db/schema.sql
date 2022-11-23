DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  employee_name VARCHAR(100) NOT NULL
);

CREATE TABLE reviews (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (employee_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);
