-------1---------
create database lab7;
-------2--------
create table locations(
  location_id serial primary key ,
  street_address varchar(25),
  postal_code varchar(12),
  city varchar(30),
  state_province varchar(12)
);

create table departments(
  department_id serial primary key ,
  department_name varchar(50) unique ,
  budget integer,
  location_id integer references locations
) ;

create table employees(
  employee_id serial primary key ,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(50),
  phone_number varchar(20),
  salary integer,
  manager_id integer references employees,
  department_id integer references departments
);

create table job_grades(
  grade char(1),
  lowest_salary integer,
  highest_salary integer
);

---------3--------
select e.last_name , e.first_name, e.department_id, l.city, l.state_province
from employees as e join departments as d on d.department_id = e.department_id join locations l on (e.last_name like '%b%');

---------4---------
select d.department_name, l.city, l.state_province from departments as d left join locations as l using(location_id);
---------5---------
select e1.first_name,e2.first_name from employees as e1 full outer join employees e2 on e1.employee_id = e2.manager_id;
---------6---------
select j.grade, avg(e.salary) from employees as e inner join departments using(department_id) inner join job_grades as j on(grade);
---------7---------
SELECT e.first_name, e.last_name from employees as e JOIN departments USING (department_id) JOIN locations USING (location_id) WHERE city = 'London'
