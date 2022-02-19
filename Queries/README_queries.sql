SELECT * FROM retiring_titles
;

SELECT COUNT(emp_no) FROM mentorship_eligibility;

SELECT title, COUNT(emp_no)
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

SELECT de.dept_no, ut.title, COUNT(ut.title)
FROM unique_titles as ut
LEFT JOIN dept_emp as de
ON ut.emp_no=de.emp_no
GROUP BY de.dept_no, ut.title
ORDER BY dept_no;
