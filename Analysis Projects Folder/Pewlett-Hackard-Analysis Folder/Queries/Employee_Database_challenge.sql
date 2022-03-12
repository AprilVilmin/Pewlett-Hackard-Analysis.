SELECT e.emp_no, 
e.first_name, 
e.last_name, 
tit.title, 
tit.from_date, 
tit.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS tit
		ON e.emp_no = tit.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT *
FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows 
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT *
FROM unique_titles

SELECT COUNT(TITLE) AS title_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title_count DESC;

SELECT *
FROM retiring_titles

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date, 
de.from_date,
de.to_date,
tit.title
INTO mentorship_eligibilty
FROM employees AS e
	JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	JOIN titles AS tit
		ON e.emp_no = tit.emp_no
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no

SELECT *
FROM mentorship_eligibilty