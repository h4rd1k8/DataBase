create database lab8;--1
create table salesman( ---------------------2
  salesman_id int primary key ,
  name varchar(255),
  city varchar(255),
  commission float
);
create table customers(
  customer_id int primary key ,
  cust_name varchar(255),
  city varchar(255),
  grade int,
  salesman_id int references  salesman
);
create table orders(
  ord_no int primary key ,
  purch_amt float,
  ord_date varchar(255),
  customer_id int references  customers,
  salesman_id int references  salesman
);
create role junior_dev login; --3
create view salesman1 as select * from salesman --4
      where salesman_id = customers.salesman_id and customers.city = 'New York';
create view view5 as select s.name, c.name from orders as o left outer join salesman s
 on s.salesman_id = o.salesman_id left join customers c2 on o.customer_id = c2.customer_id;
create view view6 as select * from customers group by customer_id having grade = max(grade);
create view view7 as select * from salesman s join customers c using (salesman_id) where count(salesman_id)>1;

