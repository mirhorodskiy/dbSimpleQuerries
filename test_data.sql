-- customers
INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(1, 'Nazar', 'Myrhorodskyi', 'mirhorodskiy@gmail.com', '0633729033');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(2, 'Gleb', 'Mykhailenko', 'mykhailenko@gmail.com', '0975614973');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(3, 'Tatyana', 'Onyshchenko', 'onyshchenko@gmail.com', '0982456987');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(4, 'Timofey', 'Rybchynskyi', 'rybchynskyi@gmail.com', '0675214468');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(5, 'Irina', 'Stetsenko', 'stetsenko@gmail.com', '0973654197');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(6, 'Dmytro', 'Kovalenko', 'kovalenko@gmail.com', '0982197568');

INSERT INTO Customers(customer_id, firstname, lastname, email, phone_number) 
VALUES(7, 'Konstantin', 'Haievych', 'haievych@gmail.com', '0975237428');



-- departments
INSERT INTO Departments(department_id, title) VALUES(1, 'Programming');

INSERT INTO Departments(department_id, title) VALUES(2, 'Design');

INSERT INTO Departments(department_id, title) VALUES(3, 'Analytics');

INSERT INTO Departments(department_id, title) VALUES(4, 'Management');

INSERT INTO Departments(department_id, title) VALUES(5, 'Finance');


-- employees
-- employees without projects
INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(1, 'Andrew', 'Hrom', 'hromandrew@gmail.com', 1);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(2, 'Dmytro', 'Karpenko', 'karpenko@gmail.com', 2);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(3, 'Konstantin', 'Kazymyrchuk', 'kazymyrchuk@gmail.com', 3);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(4, 'Margarita', 'Trots', 'trotsmargo@gmail.com', 4);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(5, 'Nikolay', 'Khariton', 'khariton@gmail.com', 4);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(6, 'Alexander', 'Tsarev', 'tsarev@gmail.com', 5);

-- employees with projects
INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(7, 'Elena', 'Ivankova', 'ivankova@gmail.com', 3);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(8, 'Filipp', 'Harashchenko', 'harashchenko@gmail.com', 3);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(9, 'Petro', 'Shostka', 'shostka@gmail.com', 4);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(10, 'Nataliіa', 'Shevchenko', 'shevchenko@gmail.com', 4);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(12, 'Ulyana', 'Yaroshenko', 'yaroshenko@gmail.com', 4);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(13, 'Boris', 'Filipchuk', 'filipchuk@gmail.com', 5);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(14, 'Pavel', 'Sharov', 'sharov@gmail.com', 5);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(15, 'Sergey', 'Zhezheliv', 'zhezheliv@gmail.com', 2);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(16, 'Roman', 'Koropie', 'koropie@gmail.com', 2);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(17, 'Olga', 'Myskina', 'myskina@gmail.com', 1);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(18, 'Yury', 'Ivashchenko', 'ivashchenko@gmail.com', 1);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(19, 'Andrew', 'Shchepkin', 'shchepkin@gmail.com', 1);

INSERT INTO Employees(employee_id, firstname, lastname, email, department_id) 
VALUES(20, 'Yaroslav', 'Medvyn', 'medvyn@gmail.com', 1);


-- projects
-- released projects
INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date, project_release_date)
VALUES(1, 'Instagram', 1, 9, '2006-04-05', '2006-12-12');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date, project_release_date)
VALUES(2, 'Facebook', 2, 9, '2006-05-07', '2007-01-12');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date, project_release_date)
VALUES(3, 'CoD 4', 2, 10, '2006-10-15', '2007-11-30');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date, project_release_date)
VALUES(4, 'Warcraft', 2, 10, '2007-08-01', '2008-08-01');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date, project_release_date)
VALUES(5, 'Telegram', 3, 9, '2012-04-05', '2013-10-10');

-- not released projects
INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(6, 'DOTA 3', 4, 9, '2020-04-05');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(7, 'Smart Beer', 5, 10, '2020-05-04');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(8, 'Holohram', 6, 12, '2020-07-07');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(9, 'Robodog', 7, 12, '2021-01-01');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(10, 'Social network for alcoholics', 7, 12, '2021-07-07');

INSERT INTO Projects(project_id, project_title, customer_id, leader_id, project_start_date)
VALUES(11, 'Smart watch', 6, 10, '2021-07-08');


-- employees and projects
-- project 1
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 13);
-- project 2
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 20);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 15);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 8);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 14);
-- project 3
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 13);
-- project 4
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 13);
-- project 5
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 20);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 15);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 8);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 14);
-- project 6
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 20);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 15);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 8);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 14);
-- project 7
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 13);
-- project 8
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 13);
-- project 9
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 20);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 15);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 8);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 14);
-- project 10
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 20);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 15);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 8);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 14);
-- project 11
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 7);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 18);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 19);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 16);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 17);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 13);
--adding leaders
INSERT INTO Employees_projects(project_id, employee_id) VALUES (1, 9);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (2, 9);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (3, 10);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (4, 10);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (5, 10);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (6, 9);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (7, 10);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (8, 12);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (9, 12);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (10, 12);
INSERT INTO Employees_projects(project_id, employee_id) VALUES (11, 10);

