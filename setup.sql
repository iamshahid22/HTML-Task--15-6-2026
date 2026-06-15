-- 1. Create Tables
CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE Projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL
);

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    project_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- 2. Insert Sample Data
INSERT INTO Departments VALUES (101, 'Engineering'), (102, 'Marketing'), (103, 'HR');
INSERT INTO Projects VALUES (501, 'Cloud Migration'), (502, 'Website Redesign');
INSERT INTO Employees VALUES 
(1, 'Alice Smith', 101, 501),
(2, 'Bob Jones', 102, 502),
(3, 'Charlie Brown', 101, 501);

-- 3. Write Assignment Query (Finds employees on 'Cloud Migration')
SELECT 
    Employees.name AS employee_name,
    Projects.project_name,
    Departments.department_name
FROM Employees
JOIN Projects ON Employees.project_id = Projects.project_id
JOIN Departments ON Employees.department_id = Departments.department_id
WHERE Projects.project_name = 'Cloud Migration';