create table Student(RNo int primary key,Name varchar(255),LastName varchar(255),City varchar(255));
show tables;

insert into student values(2,'Abhay','Ugale','Pune');
insert into student values(3,'OM','Dahake','Pune');
insert into student values(4,'Rushikesh','Narkhede','Pune');
insert into student values(5,'Ajay','Bavaskar','Nandura');
insert into student values(6,'Yash','Ugale','Adol');
insert into student values(7,'Ujjwal','Narkhede','Nandura');
insert into student values(8,'Abhay','Ugale','Adol');
insert into student values(9,'Dipak','Narkhede','Nagpur');
insert into student values(10,'Vishal','Bavaskar','Pune');
select * from student;
/*  Delete specific record from Db table*/
Delete from  Student where RNo=5;

/*Set safe update*/
SET SQL_SAFE_UPDATES=0;
Delete From Student;

/*Delete all record where department is IT*/
delete  from demo.gfg_empoyees where department='IT';

/*UPDATE RECORD*/
UPDATE EMPLOYEE SET DEPT='SD' WHERE DEPT='SOFTWARE';

/*GET ALL DATA OF TWO TABLE*/
SELECT * FROM EMPLOYEE INNER JOIN EMP_ADD;

/*Inner Join*/
SELECT NAME,STATE FROM EMPLOYEE INNER JOIN EMP_ADD ON EMPLOYEE.ID=EMP_ADD.ID;

/*Left Join*/
SELECT NAME,STATE FROM EMPLOYEE LEFT JOIN EMP_ADD ON EMPLOYEE.ID=EMP_ADD.ID;

/*Left Join*/
SELECT NAME,STATE FROM EMP_ADD LEFT JOIN EMPLOYEE ON EMPLOYEE.ID=EMP_ADD.ID;

/*Right Join*/
SELECT NAME,STATE FROM EMP_ADD RIGHT JOIN EMPLOYEE ON EMPLOYEE.ID=EMP_ADD.ID;


/*sTORED PROCEDURE without parameter*/

DELIMITER //
CREATE PROCEDURE IDNAME ()
BEGIN
SELECT RNo,Name
FROM STUDENT
WHERE City = 'Pune';
END //
DELIMITER ;

/*It use to call Procedure*/
CALL IDNAME;


/*create stored procedure with parameter*/
DELIMITER //
CREATE PROCEDURE DEMO ( IN S VARCHAR(20))
BEGIN
SELECT RNo,Name,City
FROM STUDENT
WHERE City =S ;
END //
DELIMITER ;

/*################################################################################################################################*/








