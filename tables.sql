CREATE TABLE IF NOT EXISTS Departments
(
    Department_id int NOT NULL,
    Title varchar(50),
    PRIMARY KEY (Department_id)
);

CREATE TABLE IF NOT EXISTS Employees (
	Employee_id int NOT NULL,
    Firstname varchar(255),
    Lastname varchar(255),
    Email varchar(255),
	Department_id int NOT NULL,
    PRIMARY KEY (Employee_id),
	FOREIGN KEY (Department_id) REFERENCES Departments(Department_id) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Customers
(
    Customer_id int NOT NULL,
    Firstname varchar(255),
    Lastname varchar(255),
    Email varchar(255),
    Phone_number varchar(255),
    PRIMARY KEY (Customer_id)
);


CREATE TABLE IF NOT EXISTS Projects
(
    Project_id int NOT NULL,
	Project_title varchar(255) NOT NULL,
	Customer_id int NOT NULL,
	Leader_id int NOT NULL,
	Project_start_date date,
	Project_release_date date,
    PRIMARY KEY (Project_id),
	FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id) ON UPDATE CASCADE,
	FOREIGN KEY (Leader_id) REFERENCES Employees (Employee_id) ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS Employees_projects
(
    Employee_id int NOT NULL,
    Project_id int NOT NULL,
	FOREIGN KEY (Employee_id) REFERENCES Employees (Employee_id) ON DELETE CASCADE,
	FOREIGN KEY (Project_id) REFERENCES Projects (Project_id) ON UPDATE CASCADE
);
