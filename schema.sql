-- Drops the employee_db if it already exists --
DROP DATABASE IF EXISTS employees_db;
-- Create a database called employee_db --
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows. --
  id INTEGER AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY (id)
);
CREATE TABLE role(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows. --
  id INTEGER AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INTEGER,
  PRIMARY KEY (id)
);
CREATE TABLE employee(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows. --
  id INTEGER AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER,
  PRIMARY KEY (id)
);
