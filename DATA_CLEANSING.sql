select * from 
(select job,deptno,sal from emp)
pivot(sum(sal) for job in ('ANALYST','CLERK','SALESMAN','MANAGER','PRESIDENT'))


create table goals_per_season(player varchar(10), year_2018 int, year_2019 int, year_2020 int);


insert into goals_per_season values ('Rick', 51,31,38);
insert into goals_per_season values ('Jeff', 28,37,36);
insert into goals_per_season values ('George', 40,55,48);

select * from goals_per_season

SELECT * FROM GOALS_PER_SEASON
UNPIVOT(GOALS FOR SEASON IN (YEAR_2018 AS '2018', YEAR_2019 AS '2019', YEAR_2020 AS '2020'));
