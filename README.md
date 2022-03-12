# Building a Pewlett Hackard Employee Database with SQL

## Overview of the Analysis:
Pewlett Hackard, a company with thousands of employees, is trying to prepare for what they are calling the "silver tsunami". The "silver tsunami" is the retirement of a large number of baby boomers in a short span of time. Pewlett Hackard is preparring for this in multiple ways. Such as determining what positions will be emptied and offering retirement packages. Bobby has been tasked with creating a SQL database with all six of Pewlett Hackard's employee csv files. This information gathered in this analysis will be used to determine Pewlett Hackard's next steps as the "silver tsunami" approaches. This information will include, but not be limited to the number roles that need to be filled versus the number of employees retiring.


## Results:
- There are employees reiring from Pewlett Hackard have 7 different job titles
- 72,458 are going to be retiring from Pewlett Hackard 
     See the retiring_titles table below
     
### Retiring_Titles Table
 ![title&title_count.png](https://github.com/AprilVilmin/Pewlett-Hackard-Analysis./blob/main/title%26title_count.png)    

### Retiring Titles Code
     SELECT *
     FROM retiring_titles
     
- There are 3,605 people in leadership positions retiring, 50,842 people in senior level positions retiring, 16,921 people in staff positions retiring and 1,090 people in assistant positions retiring from Pewlett Hackard
     See the a breakout of details of the retiring_titles table below
     
### Retiring_Titles Breakout Details
![employee_level.png](https://github.com/AprilVilmin/Pewlett-Hackard-Analysis./blob/main/employee_level.png)


### Retiring Titles Breakout Details Code

     SELECT DISTINCT CASE
		WHEN title = 'Manager' OR title =  'Technique Leader' THEN 'Leadership Level' 
		WHEN title = 'Senior Engineer' OR title = 'Senior Staff' THEN 'Senior Level'
		WHEN title = 'Engineer' OR title = 'Staff' THEN 'Staff Level'
		ELSE 'Assistant Level'
		END AS employee_level
     FROM retiring_titles
     ORDER BY employee_level


- There are 1,549 employees who are mentorship eligible. This includes 437 senior staff members, 384 engineers, 301 senior engineers, 287 staff members, 77 technique leaders and 63 assistant engineers.

### Mentor Eligibility Details
![MENTORSHIP_ELIG.png](https://github.com/AprilVilmin/Pewlett-Hackard-Analysis./blob/main/MENTORSHIP_ELIG.png)

### Mentorship Eligibility Code


     SELECT COUNT (title) AS title_count, title
     FROM mentorship_eligibilty
     GROUP BY title
     ORDER BY title_count DESC



## Summary:

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?



Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

