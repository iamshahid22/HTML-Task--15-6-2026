# HTML-Task--15-6-2026

# Table Creation and Data Retrieval Assignment

A simple relational database schema design and web-based data rendering project built using SQL, HTML, and JavaScript. This project satisfies the requirements of a database management system assignment, showing data organization, relationships, and queries.

## 🚀 Live Demo
You can view the live deployed webpage here: 
👉 **[]**

---

## 📋 Assignment Requirements Covered
- **Database Schema Design**: Structured tables for Employees, Departments, and Projects.
- **Relationships**: Configured explicit Primary Keys and Foreign Keys.
- **Data Insertion**: Seeded tables with a minimum of 5 records of realistic test data.
- **Data Retrieval Query**: Wrote an optimized JOIN query to retrieve employees filtered by a specific project name.
- **Web Interface**: Displayed the executed relational data results dynamically inside a web viewport.

---

## 🛠️ Technology Stack
* **SQL**: Used for DDL (Table Structure) and DML (Data Injection and Queries).
* **HTML5 & CSS3**: Used for structural layout and clean table interface presentation.
* **JavaScript (ES6)**: Simulates the database query results on the client side for static deployment hosting.
* **VS Code**: Core IDE environment used for writing code and local database previews.

---

## 🗄️ Database Structure & Queries

### 1. Schema Creation (DDL)
```sql
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    project_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);
```

### 2. Assignment Specific Target Query
```sql
SELECT 
    e.name AS employee_name,
    p.project_name,
    d.department_name
FROM Employees e
INNER JOIN Projects p ON e.project_id = p.project_id
INNER JOIN Departments d ON e.department_id = d.department_id
WHERE p.project_name = 'Cloud Migration';
```

---

## 🖥️ How to Run Locally

1. Clone or download this project folder.
2. Open the directory inside **VS Code**.
3. Install the **Live Server** extension in VS Code.
4. Right-click on `index.html` and select **"Open with Live Server"**.
5. Your browser will automatically open the live web execution interface.
