/*Create Table for Student*/
create table Stud(
    Name Varchar(25) NOT NULL,
    RollNo Varchar(10) NOT NULL,
    Dept Varchar(4) NOT NULL,  
    PRIMARY KEY (RollNo)
    );
   
/*Insert the Values For Student Table */
insert into Stud values ('Janu','16IT17','IT');
insert into Stud values ('Jeni','16IT19','IT');
insert into Stud values ('Jeevi','16CSE20','CSE');
insert into Stud values ('Saran','16CSE21','CSE');
insert into Stud values ('Kalai','16ECE22','ECE');
insert into Stud values ('Mona','16MECH23','MECH');

/*Print the Table with All Records*/
Select * from Stud;

/*Add the New Column to Student Table*/
alter table Stud add Year Integer ;

/*Insert the record for new Column */
update Stud set Year='4' where RollNO='16IT17';
update Stud set Year='4' where RollNO='16IT19';
update Stud set Year='3' where RollNO='16CSE20';
update Stud set Year='2' where RollNO='16CSE21';
update Stud set Year='1' where RollNO='16MECH23';
Select * from Stud;


Select * from Stud order by Name ASC;        /*Acending Order*/

SELECT TOP 3 * FROM Stud;        /*Print 1st 3 records in the Table*/

DELETE FROM Stud WHERE RollNo='16IT19';          /*Delete The Record*/
SELECT * FROM Stud;


SELECT MIN(Year) AS Junior FROM Stud;         /* Find Minimum*/
SELECT MAX(Year) AS Senior FROM Stud;          /*Find Maximum*/
SELECT Count(Year) AS NoOfYear FROM Stud;        /*Count the Records'*/
SELECT SUM(Year) AS SumOfYear FROM Stud;       /*Sum the records */
SELECT AVG(Year) AS AvgOfYear FROM Stud;       /*Find Average */

SELECT * FROM Stud where Name LIKE '%i' ;         /*Finds any values that start with "i"*/
SELECT * FROM Stud where Name LIKE 'j%' ;          /*Finds any values that end with "j"*/
SELECT * FROM Stud where Name LIKE '%o%' ;        /*Finds any values that have "o" in any position'*/
SELECT * FROM Stud where Name LIKE '%a__' ;          /*Finds any values that start with "a" and are at least 2 characters in length*/
SELECT * FROM Stud where Name LIKE 'j%u' ;         /*Finds any values that start with "j" and ends with "u"*/
SELECT * FROM Stud where Name LIKE '_a%' ;          /* Finds any values that have "a" in the second position*/


 /*The IN operator allows you to specify multiple values in a WHERE clause.The IN operator is a shorthand for multiple OR conditions.*/
SELECT * FROM Stud where Dept IN ('IT', 'CSE') ;       

create table Staff(
    Name Varchar(25) ,
    ID Varchar(10) NOT NULL,
    Dept Varchar(4) NOT NULL, 
    Experience Varchar(4) NOT NULL,
    PRIMARY KEY (ID)
    );

insert into Staff values ('Sharmi','11','IT','6');
insert into Staff values ('Devi','12','EEE','4');
insert into Staff values ('Naveen','13','CSE','8');
insert into Staff values ('Dinesh','14','MECH','5');
insert into Staff values ('Visha','15','ECE','6');
SELECT * FROM Staff;

/* Alise Name */
SELECT Dept,Experience as SeniorStaff from Staff ;


/* A JOIN clause is used to combine rows from two or more tables, based on a related column between them.*/

SELECT Stud.RollNo, Staff.ID, Stud.Dept FROM Stud
INNER JOIN Staff ON Stud.Dept=Staff.Dept;      /*Inner Join - If 2 table ,Same value like AND function*/

SELECT Stud.Name,Stud.RollNo from Stud LEFT JOIN Staff ON Staff.Dept=Stud.Dept; /*Left Join */

SELECT * from Stud LEFT JOIN Staff ON Staff.Dept=Stud.Dept;

SELECT * from Stud RIGHT JOIN Staff ON Staff.Dept=Stud.Dept;    /*Right Join*/ 

SELECT * from Stud FULL OUTER JOIN Staff ON Staff.Dept=Stud.Dept;  /* Full Outer Join*/

/* JOIN and The FULL OUTER JOIN is also Same*/


create INDEX IN_Name ON Staff(ID); /* Creating Index */

/*Both joins and unions can be used to combine data from one or more tables into a single results. They both go about this is different ways. 
Whereas a join is used to combine columns from different tables, the union is used to combine rows.*/

SELECT Dept FROM Stud UNION SELECT Dept FROM Staff;

SELECT * FROM Stud where Dept='CSE' UNION SELECT * FROM Staff Stud where Dept='CSE';

SELECT * FROM Stud where Dept='CSE' UNION ALL SELECT * FROM Staff Stud where Dept='CSE';

/*SELECT  * FROM Stud GROUP BY Dept ;*/
  	
