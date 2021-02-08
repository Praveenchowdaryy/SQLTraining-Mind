 create table if not exists countries (country_id varchar(2),country_name varchar(40),region_id decimal(10,0));
 
 
create table if not exists countries ( 
  country_id int default 0,
  country_name varchar(40),
  region_id decimal(10,0));
  drop table dup_countries;
  create table if not exists dup_countries
  like countries;
  desc dup_countries;





drop table dup_countries;
create table if not exists  dup_countries  as  select * from  countries;
insert into dup_countries values(101,'india',5000);
Desc dup_countries;



drop table countries;
create table if not exists countries ( 
  country_id varchar(2) not null,
  country_name varchar(40) not null,
  region_id decimal(10,0) not null);
desc countries;




create table if not exists jobs ( job_id varchar(10) not null , job_title varchar(35) not null, 
min_salary decimal(6,0), 
max_salary decimal(6,0) 
check(max_salary<=25000));
desc jobs;



drop table countries;
CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40)
CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
REGION_ID decimal(10,0)
);
desc countries;




drop table job_history;
CREATE TABLE IF NOT EXISTS job_history ( 
EMPLOYEE_ID decimal(6,0) NOT NULL, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL
CHECK (END_DATE LIKE '--/--/----'), 
JOB_ID varchar(10) NOT NULL, 
DEPARTMENT_ID decimal(4,0) NOT NULL 
);
desc job_history;


drop table countries;
CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL,
UNIQUE(COUNTRY_ID)
);
desc countries;



drop table jobs;
CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID varchar(10) NOT NULL UNIQUE, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
);

desc jobs;



drop table countries;
CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL
);
desc countries;




drop table countries;
create table if not exists countries ( country_id integer not null unique auto_increment primary key,
  country_name varchar(40) not null, region_id decimal(10,0) not null );
  desc countries;



drop table countries;
CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID varchar(2) NOT NULL UNIQUE DEFAULT '',
COUNTRY_NAME varchar(40) DEFAULT NULL,
REGION_ID decimal(10,0) NOT NULL,
PRIMARY KEY (COUNTRY_ID,REGION_ID));
desc countries;


drop table departments;


create table if not exists departments(
DEPARTMENT_ID decimal(4,0) not null  DEFAULT 0,
DEPARTMENT_NAME VARCHAR(30) NOT NULL,
MANAGER_ID  decimal(6,0) not null default 0,
LOCATION_ID decimal(4,0) DEFAULT NULL,
primary key(department_id,manager_id)
);
desc departments;

drop table jobs;
drop table job_history;
create table if not exists jobs (
 job_id varchar(10) not null unique, 
job_title varchar(35) not null default ' ',
min_salary decimal(6,0) default 8000, 
max_salary decimal(6,0) default null);
create table job_history ( 
employee_id decimal(6,0) not null primary key, 
start_date date not null, 
end_date date not null, 
job_id varchar(10) not null, 
department_id decimal(4,0) default null, 
foreign key (job_id) references jobs(job_id));
desc job_history;



drop table jobs;
drop table job_history;
drop table departments;
create table if not exists departments(
DEPARTMENT_ID decimal(4,0) not null primary key DEFAULT 0,
DEPARTMENT_NAME VARCHAR(30) NOT NULL,
MANAGER_ID  decimal(6,0) default null,
LOCATION_ID decimal(4,0) DEFAULT NULL
);
DESC DEPARTMENTS;


CREATE TABLE IF NOT EXISTS jobs( 
JOB_ID varchar(10) NOT NULL primary key default ' ', 
JOB_TITLE varchar(35) NOT NULL, 
MIN_SALARY decimal(6,0), 
MAX_SALARY decimal(6,0) 
);
desc jobs;