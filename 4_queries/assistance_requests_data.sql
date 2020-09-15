select teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at-assistance_requests.started_at) as duration
from assistance_requests join teachers on (teacher_id = teachers.id)
join students on (student_id = students.id)
join assignments on (assignment_id = assignments.id)
order by duration 