const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests 
join teachers on (assistance_requests.teacher_id = teachers.id)
join students on (assistance_requests.student_id= students.id)
join cohorts on (cohorts.id= students.cohort_id)
where cohorts.name LIKE $1 
order by teacher;
`;

const cohortName = process.argv[2];
//const limit = process.argv[3] || 5;
const values = [`%${cohortName}%`];
pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`The teacher ${user.teacher} assisted the cohort ${user.cohort}`);
  })
});


