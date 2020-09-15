

select cohorts.name as cohort_name, count(assignment_submissions.*) as number_assignments from assignment_submissions join students on (students.id=student_id) 
join cohorts on (cohorts.id = students.cohort_id)
group by cohorts.name
order by number_assignments DESC;