CREATE TABLE Employee(
			EmployeeID INT NOT NULL,
			FirstName varchar(20),
			LastName varchar(20),
			Gender varchar(3),
			Department varchar(15),
			DateHired date,
			Phone varchar(12));

INSERT INTO Employee(EmployeeID,FirstName,LastName,Gender,Department,DateHired,Phone)
			VALUES (5101,'Jim','Alexander','M','Design','2017-01-15','587-429-9856'),
					(5102,'France','Drake','F','Admin','2018-06-08','403-456-9870'),
					(5103,'David','Thompson','M','Fabrication','2019-05-19','587-987-6785'),
					(5104,'Alexandria','Link','F','Accounts','2019-07-20','587-425-7854'),
					(5105,'Peter','Link','M','Management','2020-04-23','403-258-4521'),
					(5106,'Antoin','Drake','M','Fabrication','2020-05-16','403-412-3214'),
					(5107,'Jeoffery','Bill','M','Design','2020-05-20','587-147-1236'),
					(5108,'sharon','Aliya','M','Accounts','2020-05-25','403-125-5400'),
					(5109,'Roger','Even','M','Management','2020-05-26','403-236-9821'),
					(5110,'Andrea','Smith','F','Admin','2020-06-02','587-321-2589');

SELECT FirstName, LastName, DateHired
FROM Employee
WHERE Department ='Accounts' AND Gender = 'F' and DateHired >='2020-01-01';

UPDATE Employee
SET Gender='F' WHERE EmployeeID=5108;

SELECT EmployeeID, firstName, LastName, Department
FROM Employee
WHERE Department='Accounts' OR EmployeeID <=5105;

********** JOIN OF TWO TABLES **********

CREATE TABLE EmployeeInfo(
			employeeID INT NOT NULL,
			firstName varchar(15),
			lastName varchar(15),
			departmentID varchar(15) NULL);

INSERT INTO EmployeeInfo ( employeeID, firstName, lastName, departmentID)
			VALUES (611,'James','Alexander',1),
					(622,'David','Thompson',1),
					(613,'Frances','Drake',1),
					(614,'Alexanderia','Link',2),
					(625,'Peter','Link',2),
					(617,'David','Cruze',NULL);

CREATE TABLE Department(
			departmentID varchar(15),
			firstName varchar(15),
			lastName varchar(15));

INSERT INTO Department( departmentID, firstName, lastName)
			VALUES ( 1,'Jane','Horton'),
					(2,'Mitch','Simmons'),
					(3,'Paul','Franklin');

********** INNER JOIN *************

SELECT EmployeeInfo.firstName, EmployeeInfo.lastName,
		Department.firstName, Department.lastName
FROM EmployeeInfo INNER JOIN Department
on EmployeeInfo.departmentID=Department.departmentID;

********** LEFT OUTER JOIN ***********

SELECT EmployeeInfo.firstName, EmployeeInfo.lastName,
		Department.firstName, Department.lastName
FROM EmployeeInfo LEFT OUTER JOIN Department
on EmployeeInfo.departmentID=Department.departmentID;

