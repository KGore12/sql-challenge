
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6j5qmK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.



CREATE TABLE Employee (
    EmployeeID varchar(30)   NOT NULL,
	EmployeeTitleID varchar(30)   NOT NULL,
	BirthDate date   NOT NULL,
    FirstName varchar(30)   NOT NULL,
    LastName varchar(30)   NOT NULL,
    Gender varchar(30)   NOT NULL,
    HireDate date   NOT NULL,
    CONSTRAINT pk_Employee PRIMARY KEY(
        EmployeeID
     )
);
CREATE TABLE Departments (
    DepartmentID varchar(30)  NOT NULL,
    DepartmentName varchar(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        DepartmentID
     )
);
CREATE TABLE Dep_Emp (
	EmployeeID varchar(30)   NOT NULL,
    DepartmentID varchar(30)   NOT NULL
   
);

CREATE TABLE DepartmentManager ( 
	DepartmentID varchar(30)   NOT NULL,
    EmployeeID varchar(30)   NOT NULL
   
);

CREATE TABLE Salaries (
    SalaryID  serial  NOT NULL,
	EmployeeID varchar(30)   NOT NULL,
    Salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        SalaryID
     )
);
CREATE TABLE Title (
    TitleID varchar(30)   NOT NULL,
    Title varchar(50)   NOT NULL,
    CONSTRAINT pk_Title PRIMARY KEY (
        TitleID
     )
);
