--- 1.

select a.emp_no, a.last_name, a.first_name, a.gender, b.salary
from employees a
inner join salaries b
on a.emp_no = b.emp_no;

--- 2.

select * 
from employees 
where extract(year from hire_date) = 1986;

--- 3.

-- Not using Dept_Manager for start_date and to_date
-- because an employee can me manager for short time
-- instead using start_date and to_date from salaries
-- which accuretely describes employment dates

select a.dept_no, a.dept_name, b.emp_no, c.last_name, c.first_name, d.from_date, d.to_date
from departments a
inner join dept_manager b
on a.dept_no = b.dept_no
inner join employees c
on b.emp_no = c.emp_no
inner join salaries d
on c.emp_no = d.emp_no;

--- 4.

select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
inner join dept_emp b
on a.emp_no = b.emp_no
inner join departments c
on b.dept_no = c.dept_no;

--- 5.

select * 
from employees
where first_name = 'Hercules' and last_name ~'^B';

--- 6.

select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
inner join dept_emp b
on a.emp_no = b.emp_no
inner join departments c
on b.dept_no = c.dept_no
where c.dept_name = 'Sales';

--- 7.

select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
inner join dept_emp b
on a.emp_no = b.emp_no
inner join departments c
on b.dept_no = c.dept_no
where c.dept_name in ('Sales', 'Development');

--- 8.

select last_name, count(*) as cnt
from employees
group by last_name
order by cnt desc;
