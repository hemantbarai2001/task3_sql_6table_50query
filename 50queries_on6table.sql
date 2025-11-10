1.Show all details of employees.
Select * from employees;

2.Display employee names and salaries where salary > 40000.
select emp_name,salary from employees where salary>40000;

3.List all clients from India, ordered by client name.
select * from clients where country='India' order by client_name;

4.Get the top 5 highest-paid employees.
select * from employees order by salary desc limit 5;

5.Skip first 10 and show next 5 employees.
select * from employees order by emp_id limit 5 offset 10 ;

6.Show employees with salary between 30000 and 60000.
select * from employees where salary between 30000 and 60000;

7.Display employees whose hiring  is either '"2023-01-20"' or '"2019-09-14"'.
select * from employees  WHERE hire_date IN ('2023-01-20','2019-09-14');

8.List all clients from 'India', 'USA', or 'UK'.
Select * from Clients where country in ('India','USA','UK');

9.find projects that are ongoing and have budget above 5,00,000.
select * from projects where status='Ongoing' and budget>500000;

10.find projects that are completed and have budget less than or equal to 5,00,000
select * from projects where status='Completed' and budget<=500000;

11.show projects with low budget (< 1,00,000) or completed status.
select * from projects where budget <100000 or status='Completed';

12.Count employees in each department.
select dept_id,count(*) from employees group by dept_id;

13.Find average salary of each department.
select avg(salary),dept_id from employees group by dept_id;

14.Show departments having total salary above 2,00,000.
select dept_id,sum(salary) from employees group by dept_id having sum(salary)>200000;

15.Count how many clients are in each country.
select count(*),country from clients group by country;

16.Count how many tasks belong to each project.
select project_id, count(*) from tasks group by project_id;

17.Show employee name with their department name.
select emp_name,dept_name from employees e inner join departments d on e.dept_id=d.dept_id;

18.Show all projects with their client names.
select project_name,client_name  from clients c inner join projects p on c.client_id=p.client_id;

19.Show task names and which employee they are assigned to.
select task_name,emp_id from tasks t inner join employees e on t.assigned_to=e.emp_id

20.Display all payment details with client and project names.
select payment_id,amount,client_name,project_name from clients c inner join payments p on c.client_id=p.client_id
inner join projects pc on p.project_id=pc.project_id

21.List all projects with any assigned tasks (even if none).
select p.project_id,p.project_name,t.task_id,t.task_name from projects p left join tasks t on p.project_id=t.project_id

22.Count total employees.
select count(emp_id) from employees;

23.Find total amount received in payments.
select sum(amount) from payments;

24.Get average salary of employees.
select avg(salary) from employees;

25.Find highest and lowest project budgets.
select max(budget),min(budget) from projects

26.Count distinct client countries.
select  count(distinct country) from clients;

27.List all distinct hire_date.
select distinct hire_date from employees;

28.Find all projects with no end date.
select * from projects where end_date is null;

29.Show employees whose phone number is available.
select * from employees where phone is not null;

30.List clients with missing email.
select * from clients where email is  null;

31.Get all unique task statuses.
select distinct status from tasks;

32.Combine names of clients and employees.
select client_name from clients union 
select emp_name from employees;

33.Show all project names (completed or ongoing).
select project_name from projects where status='Completed' union all
select project_name from projects where status='Ongoing'

34.show total payments grouped by client country.
select c.country, sum(amount) from payments p inner join clients c on p.client_id=c.client_id group by c.country

35.Show average salary by department for IT department only.
select dept_name, avg(salary) from employees e inner join departments d on e.dept_id=d.dept_id where dept_name='IT' group by dept_name;

36.Show average salary by department for data analytics department only.
select dept_name,avg(salary) from employees e inner join departments d on e.dept_id=d.dept_id
where dept_name='Data Analytics'
group by dept_name
;

37.Find projects having more than 3 tasks.
select p.project_name,count(task_id) from projects as p inner join tasks as t on p.project_id=t.project_id
group by p.project_name
having count(task_id)>3;

38.Find projects having greater than or equal to 2 tasks.
SELECT p.project_id, COUNT(t.task_id)
FROM projects p
JOIN tasks t ON p.project_id = t.project_id
GROUP BY p.project_id
HAVING COUNT(t.task_id) >=2;

39.Top 3 departments by average salary.
select d.dept_name, avg(salary) from departments as d inner join employees e 
on d.dept_id=e.dept_id 
group by d.dept_name
order by avg(salary) desc
limit 3

40.Top 5 clients by total payment amount.
select c.client_id,c.client_name,sum(amount) from clients as c inner join payments as p 
on c.client_id=p.client_id
group by c.client_id ,c.client_name
order by sum(amount) desc
limit 5

41.Count number of tasks per project (descending).
select project_id,count(task_id) from tasks 
group by project_id
order by count(task_id) desc

42.Show employees with 2 or more tasks assigned.
select assigned_to,count(task_id) from tasks
group by assigned_to
having count(task_id)>=2;

43.Find country with most clients.
select country,count(client_id) from  clients
group by country
order by count(client_id)desc
limit 1

44.Show payments made between Jan–Jun 2025.
select payment_id,amount from payments
WHERE payment_date between '2025-01-01' and '2025-06-30'

SELECT * FROM payments
WHERE payment_date BETWEEN '2025-01-01' AND '2025-06-30';


45.Show payments between ₹10,000 and ₹50,000.
SELECT payment_id,amount from payments
where amount between 10000 and 50000;

46.Find employees with no assigned tasks.
select * from tasks
where assigned_to is null

47.Show clients whose total payments exceed ₹50,000.
select client_name,sum(amount) from clients c inner join payments p 
on c.client_id=p.client_id
group by client_name
having sum(amount)>50000;

48.Find employees with  assigned tasks
select * from tasks 
where assigned_to is not null

49.Show payments made between november 2025.
select * from payments where payment_date between '2025-11-01' and '2025-11-30';

50.Show payments made between december 2025. and amount greater than 11,000
select * from payments where amount>11000 and payment_date between '2025-12-01' and '2025-12-31' 







