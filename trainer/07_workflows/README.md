# 30K Feet View

## Introduction
In this section we will build understanding around git workflows
* Centralised
* Feature branch
* Gitflow
* Forking


## References
* https://www.atlassian.com/git/tutorials/comparing-workflows

## Assignments
### Must Do
Let's assume you are working in a real project, let's go through the journey of this Project.
Before starting that let me put some assumptions:
* We have 4 environments
  * DEV: Dev environment will be used by dev team to do their integration testing.
  * QA: QA environment will be used by QA team to validate the code.
  * UAT: UAT environment will be used by business to do validation of application to approve the promotion of application to production environment.
  * PROD: This will be the environment where customers would be accessing the application
* We would be releasing code on weekly basis so any code release will go through below lifecycle:
  * WEEK1: Development week, development team will do development and validation of the work that they are doing on DEV environment.
  * WEEK2: QA week, QA team will do QA of the code developed by dev team on QA environment, DEV team will fix bugs reported by QA team.
  * WEEK3: UAT week, Business will do UAT of the release approved by QA team on UAT environment, in case of issues development team will fix the issues QA team will validate and UAT team will re validate if suggested changes are done or not.
  * WEEK4: PROD week, Application approved by UAT team will be made available in production environment. In case of any issues reported by customers, UAT team will validate it in case of issues raise a bug. Development team will fix the bug on highest priority QA team will do validation. UAT team will do business check and fix would be released to production environment.   

Now let's start the story how the development progressed:

#### WEEK1
* A file is committed EmployeeDAO to add an employee to database.
* A file is committed EmployeePojo to contain employee data.
* A file is committed EmployeeController that creates EmployeePojo and sends to EmployeeDAO to add an employee.
* A file is committed AddEmployee.jsp that will take user input for employee.

#### WEEK2
* QA found a bug that there was no validation for employee mail id.
* AddEmployee.jsp get's updated where validation is put to validate if proper Email ID is given.
* EmployeeDAO get's updated to validate mail id if it is valid or not.
* New code is released on QA environment, QA verifies the bug is not there now.

#### WEEK3
* Business found a issue that user input screen is not in accordance with the business requirement.
* AddEmployee.jsp get's updated where input screen is updated as per business requirement.
* New code is released on UAT environment and get's validated by QA team & post that from Business as well.

#### WEEK4
* Customers reported a issue where they have wrong phone number.
* Business came up with solution where post adding an employee an OTP would be sent to employee and post providing the OTP only employee will become active.
* EmployeeController get's updated to add OTP functionality to activate employee.
* New code is released on UAT environment and get's validated by QA team & post that from Business as well. Post that code is made available in production environment.

Simulate above story using git i.e put all the commands in a shell script. Get in touch with trainer how to do it.

### Optional
This assignment is in continuation to previous assignment.
Now we would like to make it more realistic, as you may have figured out this process is not very optimised as there is a lot of waste in this process.
* Developers would be sitting idle in week 2,3,4 if they are good developer.
* QA would be sitting idle in week 1,3 & 4 if they are not fan of Sherlock holmes.
* Business have to wait for a month to get new code to prod environment.

So we are changing story now

#### WEEK2

##### release1
Already briefed

##### release2
* Development team will start working on *release2*, that is listing employees.
* EmployeeDAO is updated to list employees.
* EmployeeController is updated to fetch employees from EmployeeDAO .
* A file is committed ListEmployee.jsp that will list employees.

#### WEEK3

##### release1
Already briefed

##### release2
* QA team will start validating *release2* on QA environment.
* QA team identified an issue where employees are not getting sorted on the basis of their full name i.e if first name matches then secondary name should be taken into consideration
* EmployeeController get's updated where Employees are sorted on the basis of First Name & Last Name.
* New code is released on QA environment and validated by QA team.

##### release3
* Development team will start working on *release3*, that is updating an employee from a list of employees.
* EmployeeDAO is updated to update an employee.
* EmployeeController is updated to update an employee detail.
* A file is committed EditEmployee.jsp, this page will take the relevant data to update employee.

#### WEEK4

##### release1
Already briefed

##### release2
* Business team will start validating *release2* on UAT environment.
* Business team figures out Employee listing pagination is not working as per business requirement i.e by default 10 employees should be listed and a user can change count to 10, 50, 100
* ListEmployee get's updated where these 3 options are added which a user can change.
* EmployeeController get's updated which calls EmployeeDAO to return employees requested.
* Functionality get's delivered in UAT environment and approved by business.

#### release3
* QA team will start validating *release3* on QA environment.
* QA team found an issue employee last name was not getting updated.
* EmployeeController get's updated where earlier last name was skipped due to the bug
* Dev validate functionality on Dev environment.
* QA validate functionality on QA environment.

#### release4
* DEV team will start working on *release4*
* EmployeeDAO get's updated to delete an employee.
* EmployeeController get's updated to invoke EmployeeDAO for employee deletion.
* ListEmployee page get's updated where a delete functionality is added.

Simulate above story using git i.e put all the commands in a shell script. Get in touch with trainer how to do it.

## Learning
Post completion of this topic you should have clear understanding of Git branching & Git workflows.
