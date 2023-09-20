
/*################################## BASIC MYSQL DATABASE COMMANDS ##########################################################*/


CREATE DATABASE DEMO2;

USE DEMO2;

CREATE TABLE TEST1(ID INT,NAME VARCHAR(30),DEPT VARCHAR(30),POST VARCHAR(30),SAL DOUBLE);

INSERT INTO TEST1 VALUES (106,'AJAY','SOFWARE','SE',1000000),
                         (107,'ABHAY','ML','SE',900000),
						 (108,'YASH','SW','SE',800000),
                         (109,'UJJWAL','SW','SE',1200000),
						 (110,'OM','AI','SE',45000000);
                         
CREATE TABLE TEST2(ID INT,CITY VARCHAR(30),STATE VARCHAR(30));                         

/*INSERT DATA INTO TABLE*/
INSERT INTO TEST2 VALUES (101,'PUNE','MAHARASHTRA'),
						 (102,'HYD','TELAGANA'),
                         (103,'BANGLORE','KARNATAKA'),
                         (104,'DELHI','DELHI'),
                         (105,'PUNE','MAHARASHTRA');

 

DROP TABLE TEST3;

ALTER TABLE TEST2 ADD PINCODE INT;


/*GET DATA FROM SINGLE TABLE*/
SELECT * FROM TEST1;

SELECT * FROM TEST2;

/*GET DATA FROM TWO TABLE USING JOIN*/
SELECT * FROM TEST1 JOIN TEST2 ON TEST1.ID=TEST2.ID;

/*THIS CAMMAND IS USE WHEN SAFE UPDATE IS ON*/
SET SQL_SAFE_UPDATES=0;

/*DELETE ALL DATA FROM TABLE*/
DELETE FROM TEST1;

/*DELETE DATA USING CONDITION*/
DELETE FROM TEST1 WHERE ID=101;


/*################################## JOINS IN MYSQL ##########################################################*/

SELECT * FROM TEST1 RIGHT JOIN TEST2 ON TEST1.ID=TEST2.ID;

SELECT * FROM TEST1 LEFT JOIN TEST2 ON TEST1.ID=TEST2.ID;

SELECT * FROM TEST1 INNER JOIN TEST2 ON TEST1.ID=TEST2.ID;

/*################################## PROCEDURE ##########################################################*/

DELIMITER //
CREATE PROCEDURE GET_TEST1ANDTEST2_DATA()
BEGIN 
SELECT * FROM TEST1 JOIN TEST2 ON TEST1.ID=TEST2.ID;
END //
DELIMITER ;

CALL GET_TEST1ANDTEST2_DATA();

/*********************** PARAMETERISED PROCEDURE **********************************************/

DELIMITER //
CREATE PROCEDURE GETBYID(IN ID INT)
BEGIN
SELECT * FROM TEST1 JOIN TEST2 ON TEST1.ID=ID;
END //
DELIMITER ;

/*DELETE PROCEDURE */
DROP PROCEDURE GETBYID;

CALL GETBYID(104);


/*################################## FUNCTIONS ##########################################################*/

SELECT AVG(SAL) AS SAL_TOTAL FROM TEST1;

SELECT MAX(SAL) AS MAX_SAL FROM TEST1;

SELECT SUM(SAL) AS TOTAL_SAL FROM TEST1;

SELECT CURRENT_TIMESTAMP();

SELECT VERSION();

SELECT * FROM TEST1 LIMIT 4;

SELECT COUNT(ID) FROM TEST1;


/*################################## TRIGGERS ##########################################################*/

/*A trigger in MySQL is a set of SQL statements that reside in a system catalog. 
It is a special type of stored procedure that is invoked automatically in response to an event. 
Each trigger is associated with a table, which is activated on any DML statement such as INSERT, UPDATE, or DELETE

ITS A SPECIAL PROCEDURE

Before Insert: It is activated before the insertion of data into the table.
After Insert: It is activated after the insertion of data into the table.
Before Update: It is activated before the update of data in the table.
After Update: It is activated after the update of the data in the table.
Before Delete: It is activated before the data is removed from the table.
After Delete: It is activated after the deletion of data from the table.
.*/

  

DELIMITER //
CREATE TRIGGER BEFORE_INSERT_SAL
BEFORE  INSERT ON TEST1 FOR EACH ROW
BEGIN
IF NEW.SAL < 0 THEN SET NEW.SAL=5000;
END IF;
END //

DELIMITER // 
CREATE TRIGGER AFTER_INSERTSAL
AFTER INSERT ON TEST1 FOR EACH ROW
BEGIN

END //

INSERT INTO TEST1 VALUES (113,'JAY','SOFWARE','SE',-500),
                         (114,'BHAY','ML','SE',90);
						  
SELECT * FROM TEST1;

 /*IT USE TO VIEW ALL TRIGGERS OF TABLE*/
SHOW TRIGGERS;


 







