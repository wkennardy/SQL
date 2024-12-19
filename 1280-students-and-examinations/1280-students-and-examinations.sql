-- Write your PostgreSQL query statement below
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students AS s
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS e
ON e.student_id = s.student_id AND e.subject_name = sub.subject_name
GROUP BY 1,2,3
ORDER BY 1,3