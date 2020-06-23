SELECT students.name, AVG(assignment_submissions.duration), AVG(assignment_submissions.duration)
FROM students
JOIN assignment_submissions ON students.id=assignment_submissions.student_id
GROUP BY students.name,assignment_submissions.assignment_id;