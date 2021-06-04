/* Question 15: 
Sort according to the scores of each subject, 
and display the rankings. 
When the scores are repeated, the rankings are combined */

/* Solution:  sc do a self join on cid */

select sc_a.cid, sc_a.sid, sc_a.score,
count(sc_b.score)+1 as rank
from sc sc_a
left join sc sc_b
on sc_a.score < sc_b.score and sc_a.cid = sc_b.cid
group by sc_a.cid, sc_a.sid, sc_a.score
order by sc_a.cid, rank ASC