/* SC table do a self-join(table a and b) first on sid to \
get each student's cid in a same line, then filter table a(left side) \
and table b(right side). Last do a outer 'in' query to get student info. */

select * from student 
where sid in (
select a.sid from sc a join sc b 
on a.sid = b.sid
where a.cid=01 and b.cid=02
and a.score>b.score
)