# Pewlett-Hackard-Analysis

## Overview

The porpouse of this project was to organaize and update the csv files of "Pewlett-Hackard" into an SQL database. In order to set-up the database, an ERD was created. This will help the company understand their database and how tables relate to each other, and make any future queries to gather data. Once this database was setted-up the company had a question to answer, How many employees are retiring? In order to answer this question, tables were created to provide useful insight, not only on the ammount of total retiring employees but also their tittle and the ammount of retiriments by department. 

For this project I learned how to create an ERD of a database, to fully understand the relation each table had with each other. I used Postgres and PgAdmin to develop and customize the database with the csv files provided. Lastly, I used queries to create and gather specific data to then add it to a new table and export that table into a new csv file. 

## Results

Looking at the tables created during the project, we can analyze and understand "Pewlett-Hackard" cituation regarding retiring employees. The company has a total of 240,124 active employees, and are expecting a retiring ammount of 72,458 employees. Are they prepared for this change?

- **Extremely High values in Senior Staff and Senior Engineer.**

Looking at the retiring_titles table, it is crearly that a huge ammount of senior engineers and staff are retiring. The company need to pay close atention to this two roles and who might replace them in order to mantain the company working in order.

![Retiring_titles](https://user-images.githubusercontent.com/95836718/154814497-542dbe43-82dc-491e-88fa-3eed767f4196.png)

- **Extra support to tech related jobs.**
From the list above, we can identify that 4 out of the 7 retiring titles are tech-related. Clearly, this departments are going to take a seriours hit. Clearly a campaing to recruit younger engineers is long overdue and needs to be backed up with an eficinet mentorship program, to garantee their stay at the company and that they make a good job.

- **Not enough mentors**
By running a quick *count()* query on the mentorship_eligibility table, we see there are only 1,549 employees eligible to mentor a younger employee. As stated before, a campaing to recruit younger employees need to be suported with an eficinet mentorship program, to garantee a sucesfull development. This means that a single employee would need to mentor more than one younger employee, and this might take them a lot of time of their work time.

-**Most retiring roles are covered.**
If we group the mentorship eligibility table by title we can identify that only the manager position has no eligible employee to mentor any future manager. Even if the ammount of employees eligible is way belove the need to fulfill each retiring role, there is a chance of mentoring even a few employees to rise in the company.

![Mentorship_titles](https://user-images.githubusercontent.com/95836718/154815705-f68e12a6-bce6-4320-8e01-a69cc62f7405.png)

## Summary 

**How many roles will need to be filled** 
There are 7 roles that will see a downgrade in ammount of people because of retiring employees. If we take into account each individual role, there will be a total of 72,458 role in need of fulfillment. We obtain this number by simply doing a SUM() query on the retiring_titles table to get the total ammount of roles retiring.

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
Most certainly no! As stated in point 3 of the results sections, there are a mere 1,549 employees ready to participate in the mentorship program, that is only if they accept this request. if we only look at the numbers, taking 1,549 employees to train a roughly 70,000 new employees will requiere all their working time, and maybe even then that would not be enough. Clearly the safest option for the company is to headh-hunt for most of the empty roles with experienced outside talent in the meantime, and stablishe a healthy flow of new and young employees joining the company to ensure this does not happen again in the future.

### Additional Queries
A query that was not requiered for the project, but was used in point 4 of the results section, was the mentor employees grouped by their title. This will give the company an insight of what roles are capable to be mentored, and what other might need to head-hunt or trust in an insede worker and promote it.

![Mentorship_titles](https://user-images.githubusercontent.com/95836718/154815705-f68e12a6-bce6-4320-8e01-a69cc62f7405.png)

***Note:*** Query is in "Queries/README_queries.sql"

Another query that will help understand this crisis, will be a table that contained each title retiring from each department. This will help in involving the managers of each department and get usefull insight from their part, and who know, maybe some roles do not be to be filled in an specific department and might manage to work just fine with fewer people.

![retiring_titles_by_dept](https://user-images.githubusercontent.com/95836718/154816807-d95d6ed4-8dde-4d3b-a7d2-97e02825385d.png)

***Note:*** Query is in "Queries/README_queries.sql"
