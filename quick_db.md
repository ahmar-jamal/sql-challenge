EMPLOYEES
---------
Emp_No PK INT
Birth_Date DATE
First_Name VARCHAR
Last_Name VARCHAR
Gender VARCHAR(10)
Hire_Date DATE

SALARIES
--------
Emp_No INT FK - EMPLOYEES.Emp_No
Salary INT
From_Date DATE
To_Date DATE

TITLES
------
Emp_No INT FK - EMPLOYEES.Emp_No
Title VARCHAR
From_Date DATE
To_Date DATE

DEPARTMENTS
-----------
Dept_No VARCHAR(10) PK
Dept_Name VARCHAR

DEPT_MANAGER
------------
Dept_No VARCHAR(10) FK >- DEPARTMENTS.Dept_No
Emp_No INT FK - EMPLOYEES.Emp_No
From_Date DATE
To_Date DATE

DEPT_EMP
--------
Emp_No INT FK - EMPLOYEES.Emp_No
Dept_No VARCHAR(10) FK >- DEPARTMENTS.Dept_No
From_Date DATE
To_Date DATE
