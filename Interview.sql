 /*
 
 SNAP: Supplemental nutrition Assistance Program
CCAP: chilled care Assistance Program 
Medicaid: Medicaid provides health coverage to milions of Americans, including eligible low income adults, children, pregnant women, elderly adults and people with disabilities.
----------------------------------------------------
Good afternoon, my name is Ajay Bawaskar. I have 2+ years of experience in Java web application development. Using Spring Boot & Microservices. 
I am currently working with Binary Books technology as a software engineer.   
In my recent project I work on the Rest API development according to the client's needs provided by the documents.
Responsible for coding and developing applications using spring boots.
Discuss the implementation approach with the head of the team.
That’s all about me.
	Vishnu Tore--------Interviewer
Project # 2: Health Insurance System 
Environment: Java, JSP, Spring, Spring Boot, Hibernate, Web Services, Restful Services, MySQL. 
Industry: Health and Human Services Service Area 
Role: Team Member 
Description 
The objective of the project is to implement a fully integrated Health Insurance Exchange and Integrated Eligibility System for Kentucky state citizens. As part of this application, 
we are providing below health and insurance plans for citizens. 
1) SNAP: Supplemental nutrition Assistance Program
2) CCAP: chilled care Assistance Program 
------------------------------
PROCEDURE IN DATABASE(MYSQL)
------------------------------

A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

Ex.-------------

DELIMITER \\ 
CREATE PROCEDURE GETALL ()  
BEGIN  
    SELECT * FROM CUSTOMERS;  
    SELECT COUNT(CUSTOMER_ID) AS TOTAL_CUSTOMER FROM CUSTOMERS;    
END \\  
DELIMITER ;  

--------------------
FUNCTION IN SQL
---------------------

Functions in SQL Server are the database objects that contains a set of SQL statements to perform a specific task. A function accepts input parameters, perform actions, and then return the result. We should note that functions always return either a single value or a table. The main purpose of functions is to replicate the common task easily.

----------------
TRIGGER
-----------------

A Trigger is a set of procedural statements which are executed automatically when there is any response to certain events on the particular table in the database. Triggers are used to protect the data integrity in the database.

In SQL, this concept is the same as the trigger in real life. For example, when we pull the gun trigger, the bullet is fired.

1. Write a trigger to ensure that no employee of age less than 25 can be inserted in the database. 

delimiter $$
CREATE TRIGGER  Check_age  BEFORE INSERT ON employee 
FOR EACH ROW
BEGIN
IF NEW.age < 25 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR: 
         AGE MUST BE ATLEAST 25 YEARS!';
END IF;
END; $$
delimiter; 


--------------
VIEWS
--------------

Views in SQL are kind of virtual tables. A view also has rows and columns as they are in a real table in the database. We can create a view by selecting fields from one or more tables present in the database. A View can either have all the rows of a table or specific rows based on certain condition.

CREATE VIEW MarksView AS
SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;
 
 */