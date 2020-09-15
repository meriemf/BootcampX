
select assignments.day, count(assignments.*) as assignments, sum(assignments.duration) as duration
from assignments
group by day
order by day;