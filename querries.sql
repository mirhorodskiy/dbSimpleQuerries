-- список сотрудников, работающих над заданным проектом (Telegram);
SELECT e.employee_id, e.lastname FROM  Employees AS e
JOIN Employees_projects AS ep ON e.employee_id = ep.employee_id 
WHERE 
(SELECT Projects.project_id FROM Projects WHERE Projects.project_title = 'Telegram') = ep.project_id;


-- список проектов, в которых участвует заданный сотрудник;
SELECT * FROM Projects AS pr
JOIN Employees_projects AS ep ON pr.project_id = ep.project_id
WHERE (SELECT Employees.employee_id FROM Employees WHERE Employees.lastname = 'Myskina') = ep.employee_id;


-- список сотрудников, не участвующих ни в одном проекте;
SELECT e.employee_id, e.lastname FROM Employees AS e
LEFT JOIN Employees_projects AS ep ON ep.employee_id = e.employee_id WHERE ep.employee_id IS NULL;


-- список сотрудников из заданного отдела (programming), не участвующих ни в одном проекте;
SELECT e.employee_id, e.lastname FROM Employees AS e
LEFT JOIN Employees_projects AS ep ON ep.employee_id = e.employee_id
WHERE (SELECT Departments.department_id FROM Departments 
	   WHERE Departments.title = 'Programming') = e.department_id AND ep.employee_id IS NULL;
	   
	   
-- список подчиненных для заданного руководителя (Schevchenko) (по всем проектам, которыми он руководит);
SELECT e.employee_id, e.lastname, pr.project_title FROM Employees AS e
JOIN Employees_projects AS ep ON ep.employee_id = e.employee_id
JOIN Projects AS pr ON ep.project_id = pr.project_id 
	WHERE (SELECT e.employee_id FROM Employees AS e 
		  WHERE e.lastname = 'Shevchenko') = pr.leader_id
		  ORDER BY pr.project_title;
		  

-- список проектов, выполняемых для заданного заказчика(Mykhailenko);
SELECT pr.project_title, pr.project_start_date FROM Projects AS pr
WHERE(SELECT c.customer_id FROM Customers AS c 
	  WHERE c.lastname = 'Mykhailenko') = pr.customer_id
	  ORDER BY pr.project_start_date;


-- список сотрудников, участвующих в проектах, выполняемых для заданного заказчика(Mykhailenko).
SELECT e.employee_id, e.lastname, pr.project_title FROM Employees AS e
JOIN Employees_projects AS ap ON ap.employee_id = e.employee_id
JOIN Projects AS pr ON ap.project_id = pr.project_id
	  WHERE(SELECT c.customer_id FROM Customers AS c 
			WHERE c.lastname = 'Mykhailenko') = pr.customer_id
			ORDER BY pr.project_title;


-- список сотрудников, участвующих в тех же проектах, что и заданный сотрудник (Koropie);
SELECT DISTINCT  e.firstname, e.lastname, d.title FROM Departments d  
JOIN Employees e ON e.department_id = d.department_id 
JOIN Employees_projects p ON p.employee_id = e.employee_id 
WHERE p.project_id IN 
	(SELECT DISTINCT  p.project_id FROM Employees e 
	 JOIN employees_projects p ON p.employee_id = e.employee_id 
	 WHERE e.lastname = 'Koropie' );
 
 
 -- список руководителей для заданного сотрудника (Koropie) (по всем проектам, в которых он участвует);
SELECT DISTINCT  e.firstname, e.lastname FROM  Employees e  
LEFT JOIN Projects p ON p.leader_id = e.employee_id 
WHERE p.project_id IN (SELECT DISTINCT  p.project_id FROM Employees e 
	JOIN Employees_projects p ON p.employee_id = e.employee_id 
		WHERE e.lastname = 'Koropie');
		
		
/*
В связи с введением History понадобятся запросы на поиск уже выполнненых проектов,
предыдущих руководителей проекта, соотношения уволенных и новых сотрудников,
вычисление стажа работы, средней продолжительности работы над проектами.
*/
