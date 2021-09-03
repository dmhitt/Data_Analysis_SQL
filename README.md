# Data Analysis - SQL

## Employee Database
* This is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.
 
## Tasks
* Design and create the employee’s database
* Import the CSV's into the tables
* Perform the data analysis

### ER diagram

<img src="https://github.com/dmhitt/sql-challenge/blob/main/ERD.png"/>


### Data
* Create the Employee database into PostgreSQL.
* Upload the data from six CSV files into the database.

<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/Image1.png"/>

<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/Image2.png"/>

<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/Image3.png"/>



### Data Analysis
* Database is up and running and the following analyses were done:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query1.png"/>

2. List first name, last name, and hire date for employees who were hired in 1986.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query2.png"/>

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query3.png"/>

4. List the department of each employee with the following information: employee number, last name, first name, and department name.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query4.png"/>

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query5.png"/>

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query6.png"/>

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query7.png"/>

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
<img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/query8.png"/>

### Analysis with Graphs 

#### Histogram to visualize the most common salary ranges for employees.

  <img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/graph1.png"/>

 ####  Bar Chart to visualize the average salary by title.
 
 <img src="https://github.com/dmhitt/sql-challenge/blob/main/resources/images/graph2.png"/>

### Tools
* PostgreSQL, Jupyter Notebook, Python, SqlAlchemy, Pandas, Pyplot
