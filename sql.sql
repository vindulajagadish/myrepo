create database cognizant63;
use cognizant63;
select * from workers;

select first_name as worker_name from workers;
select upper(first_name) from workers;
select distinct department from workers;
select substring(first_name,1,3) from workers;
select instr(first_name,'a') from workers where first_name='amitabh';
select rtrim(first_name) from workers;
select ltrim(first_name) from workers;
select distinct length(department) from workers;
select replace(first_name,'a','A') from workers;
select concat(first_name,last_name) as complete_name from workers;


select * from workers order by first_name ASC;
select * from workers  order by first_name ASC , department desc;
select * from workers where first_name in ('vipul','satish');
select * from workers where first_name not in ('vipul','satish');
select * from workers where first_name like '%a%';
select * from workers where first_name like '%a';
select * from workers where first_name like '_____h';
select * from workers where salary between 100000 and 500000;
select * from workers where joining_date=2014-02;


select count(*) from workers where department='admin';
select first_name,last_name from workers where salary >=50000 and salary<= 100000;
select department,count(worker_id) no_of_workers from worker group by department order by no_of_workers desc;
select * from workers where WORKER_ID in(select worker_ref_id from title where worker_title='manager');
select first_name,salary,count(*) from workers group by first_name,salary having count(*)>1;
select * from workers where mod(worker_id,2) <> 0;
select * from workers where mod(worker_id,2) <> 1;
CREATE TABLE worker_copy select * from workers;

select * from workers where WORKER_ID  not in(select worker_ref_id from title);






