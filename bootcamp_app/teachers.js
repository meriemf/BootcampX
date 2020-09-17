const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests 
join teachers on (assistance_requests.teacher_id = teachers.id)
join students on (assistance_requests.student_id= students.id)
join cohorts on (cohorts.id= students.cohort_id)
where cohorts.name LIKE '%${process.argv[2]}%' 
order by teacher;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`The teacher ${user.teacher} assisted the cohort ${user.cohort}`);
  })
});
