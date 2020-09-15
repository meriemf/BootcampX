select cohorts.name as cohort, avg(assistance_requests.completed_at - assistance_requests.started_at) as duration
from students  join assistance_requests on (students.id = student_id)
join cohorts on (students.cohort_id = cohorts.id)
group by cohorts.name
order by duration desc
limit 1;