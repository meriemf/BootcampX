
select distinct teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as number_of_assitances
from assistance_requests 
join teachers on (teacher_id = teachers.id)
join students on (assistance_requests.student_id= students.id)
join cohorts on (cohorts.id= students.cohort_id)
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name 
order by teacher;