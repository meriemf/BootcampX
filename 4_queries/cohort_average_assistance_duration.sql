
select avg (total_assistance_time) as average_total
from(
  select cohorts.name as cohort, sum(completed_at - started_at) as total_assistance_time
from assistance_requests join students on (student_id = students.id)
join cohorts on (students.cohort_id = cohorts.id)
group by cohorts.name
order by total_assistance_time)
as total_assistance_time;
