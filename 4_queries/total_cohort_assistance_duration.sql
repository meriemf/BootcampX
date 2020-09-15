select cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_assistance_time
from assistance_requests join students on (student_id = students.id)
join cohorts on (students.cohort_id = cohorts.id)
group by cohorts.name
order by total_assistance_time;