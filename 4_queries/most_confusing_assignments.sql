
select assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) as total_assistances
from assignments join assistance_requests on (assignments.id= assistance_requests.assignment_id)
group by assignments.id
order by total_assistances desc;

 
