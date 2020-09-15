select count(assistance_requests.*) as total_assistance_requests,  students.name as student
from assistance_requests 
join students on (student_id = students.id)
where students.name = 'Elliot Dickinson'
group by students.name;