/* Question 1-1: 
Query the situation that "01" course and "02" course exist at the same time. */

/* Solution: SC table do a self-join(table a and b) first on sid to 
get each student's cid in a same line, then filter table a(left side) 
and table b(right side). Last do a outer 'in' query to get student info. */

select * from student 
where sid in (
select a.sid from sc a join sc b 
on a.sid = b.sid
where a.cid=01 and b.cid=02
)

/* Question 1-2: 
Query the situation where the "01" course exists but the "02" course may not exist 
(it will be displayed as null if it does not exist). */

/* Solution: set table a as shadow of sc where cid is 01, 
set table b as shadow of sc where cid is 02. 
Do table a left join table b on sid to get null value if not exist.
Last do a outer 'in' query to get student info. */

select * from student 
where sid in (
select a.sid from (
(select sid from sc where cid = 01)a
left join
(select sid from sc where cid = 02)b
on a.sid = b.sid
)
)

/* Question 1-3: 
Query the situation where there is no "01" course but "02" course. */

/* Solution: set table a as shadow of sc where cid=01.
Select sid from sc where sid not in table a and its cid is 02.
Last do a outer 'in' query to get student info. */

select * from student 
where sid in (
select sid from sc
where sid not in (
select a.sid from sc a
where a.cid = 01
) and cid = 02
)