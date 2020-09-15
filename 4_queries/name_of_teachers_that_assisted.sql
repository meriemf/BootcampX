select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests 
join teachers on (teacher_id = teachers.id)
join students on (assistance_requests.student_id= students.id)
join cohorts on (cohorts.id= students.cohort_id)
where cohorts.name = 'JUL02' 
order by teacher;