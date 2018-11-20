drop database if exists zadatak;
create database zadatak;
use zadatak;

create table department(
department_id int not null primary key auto_increment,
name varchar(20) not null,
company_id int
);

create table company(
company_id int not null primary key auto_increment,
name varchar(20) not null
);

create table employee(
employee_id int not null primary key auto_increment,
lastname varchar(20) not null,
firstname varchar(20) not null,
supervisor int not null
);

create table employeeDetail(
employeeDetail_id int not null primary key auto_increment,
age smallint,
gender char(1),
address varchar(30)
);

create table department_employee(
department_id int not null,
employee_id int not null,
title varchar(20)
);

alter table department add foreign key (company_id) references company(company_id);

alter table department_employee add foreign key (department_id) references department(department_id);
alter table department_employee add foreign key (employee_id) references employee(employee_id);

alter table employee add foreign key (supervisor) references employee(employee_id);