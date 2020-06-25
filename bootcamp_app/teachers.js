const { Pool } = require('pg');
const cohortName = process.argv[2] || 'JUL02';
const query = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id=assistance_requests.teacher_id
LEFT JOIN students ON assistance_requests.student_id = students.id 
JOIN cohorts ON cohorts.id=students.cohort_id
WHERE cohorts.name = $1
ORDER BY teacher;`

const values = [cohortName]
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
pool.query(query, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })
  });