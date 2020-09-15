

select students.name as name, avg(duration) from assignment_submissions join students on (students.id=assignment_submissions.student_id)
where students.end_date is null
Group by name
order by avg(assignment_submissions.duration) Desc
