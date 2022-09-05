use assign2

create view emp_vie
as
select * from Employee
where Dept_no='d1'

select*from emp_vie

create view pro
as
select project_no,project_name from Project

select*from pro

create view rm
as
select e.emp_fna,e.emp_lna from Employee e join Works_on w on e.emp=w.emp_no 
where Year(enter_date)=1998 and month(enter_date)>=6
sp_rename rm.emp_fna,'first'

select *from rm where emp_lna like 'M%'

create view pro_details
as
select w1.emp_no,w1.project_no,w1.Job,w1.enter_date,e.emp_fna,e.emp_lna from Works_on w1 join Employee e on w1.emp_no=e.emp
where e.emp_lna='Smith'
sp_helptext pro_details
select * from pro_details

alter view rm
as
select w1.emp_no,w1.project_no,w1.Job,w1.enter_date,e.emp_fna,e.emp_lna from Works_on w1 join Employee e on w1.emp_no=e.emp
where e.Dept_no in('d1','d2')

insert into pro values('p2','moon')
select * from pro