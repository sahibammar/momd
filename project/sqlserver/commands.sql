CREATE DATABASE momd
GO

USE momd
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE momd..department (
	department_id INT PRIMARY KEY IDENTITY (1, 1),
	department_name  VARCHAR (50) NOT NULL
)
GO

CREATE TABLE momd..employee (
    employee_id INT PRIMARY KEY IDENTITY (1, 1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    phone VARCHAR(20),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES momd..department (department_id)
)
GO