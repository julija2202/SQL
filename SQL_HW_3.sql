--1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id;
--2.������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary  from employee_salary  
inner join employees on employee_salary.employee_id = employees.id 
inner join salary on employee_salary.salary_id  = salary.id 
where monthly_salary < 2000;
--3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary 
right join employees  on employee_salary.employee_id = employees.id 
right join salary  on employee_salary.salary_id  = salary.id 
where employees.employee_name is null;
--4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������.(�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null 
and salary.monthly_salary < 2000;
--5.����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;
--6.������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id;
--7.������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Java developer');
--8.������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Python developer');
--9.������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%QA engineer');
--10.������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Manual QA engineer');
--11.������� ����� � ��������� ��������������� QA
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Automation QA engineer');
--12.������� ����� � �������� Junior ������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Junior%');
--13.������� ����� � �������� Middle ������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Middle%');
--14.������� ����� � �������� Senior ������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Senior%');
--15.������� �������� Java �������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Java %');
--16.������� �������� Python �������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Python%');
--17.������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%Python%'); 
--18.������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Middle%JavaScript%'); 
--19.������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Senior%Java%');
--20.������� �������� Junior QA ���������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%QA%');
--21.������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%');
--22.������� ����� ������� JS �������������
select sum(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%JavaScript%');
--23.������� ����������� �� QA ���������
select min(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--24.������� ������������ �� QA ���������
select max(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--25.������� ���������� QA ���������
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--26.������� ���������� Middle ������������.
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Middle%');
--27.������� ���������� �������������
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%developer%');
--28.������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id;
--29.������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary asc;
--30.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;
--31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;
--32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary = 1100 or salary.monthly_salary =  1500 or salary.monthly_salary =  2000
order by salary.monthly_salary asc;
