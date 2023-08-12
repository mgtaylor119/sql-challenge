drop table if exists departments cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_managers cascade;
drop table if exists employees cascade;
drop table if exists salaries cascade;
drop table if exists titles cascade;

create table employees(
	emp_no int,
	emp_title varchar not null,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar(1) not null,
	hire_date varchar not null,
	PRIMARY KEY (emp_no)
);

create table departments(
	dept_no varchar not null,
	dept_name varchar not null,
	PRIMARY KEY (dept_no)
);

create table dept_emp(
	emp_no int,
	dept_no varchar not null,
	FOREIGN KEY (dept_no) references departments(dept_no),
	FOREIGN KEY (emp_no) references employees(emp_no)
	
);

create table dept_managers(
	dept_no varchar not null,
	emp_no int,
	FOREIGN KEY (dept_no) references departments(dept_no),
	FOREIGN KEY (emp_no) references employees(emp_no)
);

create table salaries(
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) references employees(emp_no)
);

create table titles(
	title_id varchar not null,
	title varchar not null,
	PRIMARY KEY (title_id)
);
