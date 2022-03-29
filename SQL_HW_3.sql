--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id;
--2.Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary  from employee_salary  
inner join employees on employee_salary.employee_id = employees.id 
inner join salary on employee_salary.salary_id  = salary.id 
where monthly_salary < 2000;
--3.Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select employee_name, monthly_salary from employee_salary 
right join employees  on employee_salary.employee_id = employees.id 
right join salary  on employee_salary.salary_id  = salary.id 
where employees.employee_name is null;
--4.Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí.(ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select employee_name, monthly_salary from employee_salary
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null 
and salary.monthly_salary < 2000;
--5.Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;
--6.Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id;
--7.Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Java developer');
--8.Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Python developer');
--9.Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%QA engineer');
--10.Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ.
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Manual QA engineer');
--11.Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employee_name, role_name from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where role_name like ('%Automation QA engineer');
--12.Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Junior%');
--13.Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Middle%');
--14.Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('Senior%');
--15.Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Java %');
--16.Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Python%');
--17.Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%Python%'); 
--18.Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Middle%JavaScript%'); 
--19.Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Senior%Java%');
--20.Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%QA%');
--21.Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select avg(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Junior%');
--22.Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select sum(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%JavaScript%');
--23.Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select min(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--24.Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
select max(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--25.Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%QA%');
--26.Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%Middle%');
--27.Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select count(roles.role_name) from roles_employee
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like ('%developer%');
--28.Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select sum(salary.monthly_salary) from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id;
--29.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary asc;
--30.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;
--31.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;
--32.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
select employee_name, monthly_salary, role_name from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
left join roles_employee on employee_salary.id = roles_employee.role_id 
left join roles on roles_employee.role_id = roles.id
where salary.monthly_salary = 1100 or salary.monthly_salary =  1500 or salary.monthly_salary =  2000
order by salary.monthly_salary asc;
