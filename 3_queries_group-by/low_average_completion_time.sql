select students.name as student, avg(assignments.duration) as average_assignment_duration, avg(assignment_submissions.duration) as average_assignment_estimation from assignment_submissions join students on (students.id=assignment_submissions.student_id)
join assignments on (assignments.id=assignment_submissions.assignment_id)
where students.end_date is null
Group by student
having  avg(assignments.duration) > avg(assignment_submissions.duration)
order by avg(assignment_submissions.duration) Desc
