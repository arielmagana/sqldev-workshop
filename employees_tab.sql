CREATE TABLE employees
( employee_id NUMBER PRIMARY KEY
, job_id 	  NUMBER FOREIGN KEY
, first_name  VARCHAR2(25)
, last_name   VARCHAR2(25) not null
, hire_date   DATE
, salary      NUMBER
, email       VARCHAR2(25)
, commisions_pct NUMBER
);
