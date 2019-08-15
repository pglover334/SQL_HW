drop table if exists department_employee cascade;
drop table if exists department_manager cascade ;
drop table if exists departments cascade ;
drop table if exists employees cascade ;
drop table if exists salaries cascade;
drop table if exists titles cascade;


CREATE TABLE Departments (
    Dept_Number varchar   NOT NULL,
    Dept_Name varchar   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_Number
     )
);

CREATE TABLE Department_Employee (
    Emp_No int   NOT NULL,
    Dept_Number varchar   NOT NULL,
    From_Date varchar   NOT NULL,
    To_Date varchar   NOT NULL
);

CREATE TABLE Department_Manager (
    Dept_Number varchar   NOT NULL,
    Emp_No int   NOT NULL,
    From_Date varchar   NOT NULL,
    To_Date varchar   NOT NULL
);

CREATE TABLE Employees (
    Emp_No int   NOT NULL,
    Birth_Date varchar   NOT NULL,
    First_Name varchar   NOT NULL,
    Last_Name varchar   NOT NULL,
    Gender varchar   NOT NULL,
    Hire_Date varchar   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
    Salary int   NOT NULL,
    From_Date varchar   NOT NULL,
    To_Date varchar   NOT NULL
);

CREATE TABLE Titles (
    Emp_No int   NOT NULL,
    Title varchar   NOT NULL,
    From_Date varchar   NOT NULL,
    To_Date varchar   NOT NULL
);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Dept_Number FOREIGN KEY(Dept_Number)
REFERENCES Departments (Dept_Number);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Dept_Number FOREIGN KEY(Dept_Number)
REFERENCES Departments (Dept_Number);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);


select * from department_employee;
select * from department_manager;
select * from departments;
select * from employees;
select * from salaries;
select * from titles;

