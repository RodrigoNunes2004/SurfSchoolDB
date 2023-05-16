--CREATE new database
CREATE DATABASE SurfSchool_DB;

--create table customes
CREATE  TABLE Customers(
    cust_ID INT IDENTITY (100, 1) PRIMARY KEY NOT NULL,
    cust_F_name VARCHAR (50) NOT NULL,
    cust_L_name VARCHAR (50) NOT NULL,
    cust_DOB DATE,
    cust_Ph_number VARCHAR(20),
    Email VARCHAR(50),
    Notes VARCHAR(100)
);

SELECT * FROM Customers;
UPDATE Customers SET cust_Ph_number = 021352592 WHERE cust_ID = 100;
UPDATE Customers SET cust_Ph_number = 021398623 WHERE cust_ID = 101;
UPDATE Customers SET cust_Ph_number = 027335582 WHERE cust_ID = 102;
UPDATE Customers SET cust_Ph_number = 022873334 WHERE cust_ID = 103;
UPDATE Customers SET cust_Ph_number = 021339977 WHERE cust_ID = 104;
UPDATE Customers SET cust_Ph_number = 022124471 WHERE cust_ID = 105;
UPDATE Customers SET cust_Ph_number = 027182235 WHERE cust_ID = 106;
UPDATE Customers SET cust_Ph_number = 021997711 WHERE cust_ID = 107;
UPDATE Customers SET cust_Ph_number = 027824343 WHERE cust_ID = 108;
UPDATE Customers SET cust_Ph_number = 022223452 WHERE cust_ID = 109;

SELECT * FROM Customers WHERE cust_ID = 100;
--DROP TABLE Customers;
--INSERT VALUES INTO CUSTOMES TABLE
INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Dylan', 'Smith', CONVERT(date, '22-03-1979', 104), 0213372234, 'dilando@gmail.com', 'He is aready kows how to pop up');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Alex', 'Sousa', CONVERT(date, '12-06-1994', 104), 0213127277, 'sousa_sa@gmail.com', 'he is confident on pedaling to outside');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Bob', 'Stivenson', CONVERT(date, '18-03-2003',104), 0226670333, 'bobstv@goutlook.com', 'He is aready kows how to pop up');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Patrik', 'Stuart', CONVERT(date, '18-09-2010',104), 0213372234, 'patrdo@yahoo.com', 'He is scare of big waves');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Jasmine', 'Crosby', CONVERT(date, '10-12-1978', 104), 0271126228, 'jassz@gmail.com', 'She has never surf before');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Mark', 'Richards', CONVERT(date, '17-02-2000',104), 0213199250, 'richMk@outlook.com', 'His aready kows how to pop up');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Alice', 'Taylor', CONVERT(date, '12-09-1988', 104), 0213500244, 'dilando@gmail.com', 'She is beginner but knows how to surf');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Maya', 'Oliveira', CONVERT(date, '17-07-2000', 104), 0272257333, 'dmayer@gmail.com', 'She is at beginner to intermediate level');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Andrew', 'Morgan', CONVERT(date, '03-06-2005', 104), 0213372555, 'morgan@outlook.com', 'He is at very beginner level');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Antonny', 'Garcia', CONVERT(date, '28-09-1972', 104), 02246702888, 'dilando@gmail.com', 'He is never surf before');



--Insert new records on Customers table
INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Deborah', 'Forsyth', CONVERT(date, '17-07-1988', 104), 0271024322, 'forsythand@gmail.com', 'he is at beginner to intermediate level');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Andrew', 'Clark', CONVERT(date, '03-06-1986', 104), 0213577555, 'claketandrew@outlook.com', 'He is at very beginner level');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Nathan', 'White', CONVERT(date, '28-09-1979', 104), 0224450299, 'nathwh@gmail.com', 'He is never surf before');

INSERT INTO Customers(cust_F_name, cust_L_name, cust_DOB, cust_Ph_number, Email, Notes) VALUES('Abigail', 'White', CONVERT(date, '28-09-1999', 104), 0224450299, 'abb@gmail.com', 'she is never surf before');

--Read records from table Customers

SELECT cust_ID, cust_F_name, cust_Ph_number, Email
FROM Customers;

--Update record from table Customers
UPDATE Customers SET cust_Ph_number = 022456222, Email = 'bobthenob@outlook.com'
WHERE cust_ID = 102;

--New Customer (Customer Update)

DBCC CHECKIDENT ('Customers', RESEED, 100);

UPDATE Customers SET cust_F_name = 'John', cust_L_name = 'Doe', cust_DOB = CONVERT(date, '01-01-1990', 104), cust_Ph_number = 0211234567,
Email = 'johndoe@gmail.com',Notes = 'John Knows how to pop up and paddling out' WHERE cust_ID = 100;



SELECT * FROM Customers WHERE cust_F_name = 'John';


SELECT * FROM Customers WHERE cust_ID = 102;

--Delete a record from table Customer
DELETE  FROM Customers WHERE cust_ID = 101;




CREATE TABLE Instructor(
    inst_ID INT IDENTITY(100, 1) PRIMARY KEY NOT NULL,
    Inst_F_name VARCHAR(20),
    Inst_L_name VARCHAR(20),
    Inst_Ph_number VARCHAR(20),
    Email VARCHAR(20)
);

SELECT * FROM Instructor;

UPDATE Instructor SET inst_Ph_number = 0275572366 WHERE inst_ID = 100;
UPDATE Instructor SET inst_Ph_number = 0212253555 WHERE inst_ID = 101;
UPDATE Instructor SET inst_Ph_number = 0212344333 WHERE inst_ID = 102;
UPDATE Instructor SET inst_Ph_number = 0227744222 WHERE inst_ID = 103;
UPDATE Instructor SET inst_Ph_number = 0271266826 WHERE inst_ID = 104;
UPDATE Instructor SET inst_Ph_number = 0271110899 WHERE inst_ID = 106;


--Read records from table Customers

SELECT Inst_F_name, inst_Ph_number
FROM Instructor WHERE inst_ID = 104;

--Update record from table Customers

UPDATE Instructor SET inst_Ph_number = 022336272
WHERE inst_ID = 102;


--Delete a record from the table  Instructor
DELETE  FROM Instructor WHERE inst_ID = 108;


--Insert records on table Instructor

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Camila', 'Lenhart', 027-5591-216, 'camilalenh@yahoo.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Rodrigo', 'Nunes', 021-2253-555, 'rodrigorfn@gmail.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Donna', 'Aderne', 027-7023-211, 'addonna@yahoo.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Diego', 'Lessa', 027-5353-222, 'lesdiego@gmai.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Vivian', 'Messina', 022-5566-766, 'vmessina@outlook.com');


--create new records in the Instructor table

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Nick', 'Brown', 0225566766, 'nickita@outlook.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Vitor', 'Martines', 0225244422, 'vivima@outlook.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Victoria', 'Taylor', 0225566766, 'victaylor@outlook.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Adam', 'Crosby', 0225566766, 'crosbyad@outlook.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Karlos', 'Arsen', 02788999321, 'arsenfer@gmail.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Roger', 'Bever', 0215663555, 'roggen@gmail.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Angus', 'Morrisey', 0215543782, 'morrisss@gmail.com');

INSERT INTO Instructor(Inst_F_name, Inst_L_name, Inst_Ph_number, Email)
VALUES('Paulo', 'Lanca', 0212344222, 'lan@gmail.com');

SELECT * FROM Instructor;


CREATE TABLE Equipment_Rented(
    Rental_ID INT IDENTITY(100, 1) PRIMARY KEY NOT NULL,
    cust_id INT,
    CONSTRAINT FK_custID FOREIGN KEY (cust_ID) REFERENCES Customers(cust_ID)
    on UPDATE CASCADE
    on DELETE CASCADE,
    Equip_Category VARCHAR(50),
    Equip_Description VARCHAR(50),
    Equip_Price DECIMAL,
    Payment_Type VARCHAR(10),
    Rental_Date DATE,
    Rental_Time TIME
);
--DROP TABLE Equipment_Rented;

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(100, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit XXS', 15.00, 'cash', CONVERT(date, '11-01-2023',104),'13:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(101, 'surfboard and wetsuit', 'surfboard 8ft 84L wetsuit XM', 15.00, 'cash', CONVERT(date, '11-02-2023',104),'15:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(113, 'surfboard and wetsuit', 'surfboard 8ft 84L wetsuit S', 15.00, 'cash', CONVERT(date, '07-01-2023',104),'13:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(103, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit L', 15.00, 'cash', CONVERT(date, '09-01-2023',104),'15:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(104, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit XXS', 15.00, 'cash', CONVERT(date, '11-01-2023',104),'17:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(100, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit XXS', 15.00, 'cash', CONVERT(date, '25-01-2023',104),'13:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(102, 'surfboard and wetsuit', 'surfboard 8ft 84L wetsuit XM', 15.00, 'cash', CONVERT(date, '25-02-2023',104),'15:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(113, 'surfboard and wetsuit', 'surfboard 8ft 84L wetsuit S', 15.00, 'cash', CONVERT(date, '06-03-2023',104),'13:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(114, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit L', 15.00, 'cash', CONVERT(date, '09-03-2023',104),'15:00');

INSERT INTO Equipment_Rented (cust_ID, Equip_Category, Equip_Description, Equip_Price, Payment_Type, Rental_Date, Rental_Time)
VALUES(104, 'surfboard and wetsuit', 'surfboard 8ft 87L wetsuit XXS', 15.00, 'cash', CONVERT(date, '11-03-2023',104),'17:00');



SELECT * FROM Equipment_Rented;


--Read records from table Equipment_Rented

SELECT cust_ID, Equip_Category, Equip_Price, Rental_Date, Rental_Time
FROM Equipment_Rented;

--Update record from table Equipment_Rented
UPDATE Equipment_Rented SET Payment_Type = 'eftpos'
WHERE cust_ID = 102;

DELETE FROM Equipment_Rented WHERE cust_id = 101;


CREATE TABLE Booking_Lessons(
Booking_ID INT IDENTITY(100, 1) PRIMARY KEY NOT NULL,
cust_ID INT,
CONSTRAINT fk_cust FOREIGN KEY (cust_ID) REFERENCES Customers (cust_ID)
ON UPDATE CASCADE
ON DELETE CASCADE,
Inst_id INT,
CONSTRAINT fk_inst FOREIGN KEY (inst_ID) REFERENCES Instructor (inst_ID)
ON UPDATE CASCADE
ON DELETE CASCADE,
Booking_Date DATE,
Booking_Time TIME,
Booking_price DECIMAL,
Payment_Type VARCHAR(20),
Booking_Notes VARCHAR(100) NULL
);

--DROP TABLE Booking_Lessons;


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(100, 100, CONVERT(date,'11-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer has knee pain');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(101, 101,  CONVERT(date,'11-01-2023',104), '16:00', 80.00, 'eftpos', 'the customer is afraid of rocks');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(102, 102, CONVERT(date,'11-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer has cancelled the booking');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(103, 103, CONVERT(date,'15-01-2023',104), '16:00', 80.00, 'cash', 'the customer has cancelled the booking');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(104, 104, CONVERT(date,'15-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer has change the booking to 15:00');

INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(105, 100, CONVERT(date,'15-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer  knows how to pop up');

INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(106, 101, CONVERT(date,'15-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer has back pain');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(107, 102,  CONVERT(date,'16-01-2023',104), '16:00', 80.00, 'eftpos', 'the customer is afraid of deep water');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(108, 103, CONVERT(date,'16-01-2023',104), '13:00', 80.00, 'eftpos', 'the customer has cancelled the booking');


INSERT INTO Booking_Lessons(cust_ID, inst_ID, Booking_Date, Booking_Time, Booking_price, Payment_Type, Booking_Notes)
VALUES(109, 104, CONVERT(date,'16-01-2023',104), '16:00', 80.00, 'cash', 'the customer has change the booking for 17-01-2023');


SELECT * FROM Booking_Lessons;

--Read records from table Booking_Lessons


SELECT cust_ID, Booking_Date, Booking_ID, Booking_Time, cust_ID
FROM Booking_Lessons;

--Update record from table Equipment_Rented
UPDATE Booking_Lessons SET Booking_Notes = 'customer has change the book for 15:00 o clock'
WHERE cust_ID = 102;

--Delete record from table Booking_Lessons
DELETE FROM Booking_Lessons WHERE cust_id = 101;

SELECT bl.Booking_ID, bl.Booking_price, bl.Payment_Type, c.cust_F_name, c.cust_Ph_number, bl.Booking_Date, 
bl.Booking_Time, i.Inst_F_name, i.Inst_L_name 
FROM Booking_Lessons bl 
JOIN Customers c ON c.cust_ID = bl.cust_ID 
JOIN Instructor i ON i.inst_ID = bl.inst_ID;

SELECT er.Rental_ID, er.Equip_Price, er.Payment_Type, c.cust_F_name, c.cust_Ph_number, er.Rental_Date,
er.Rental_Time, er.Equip_Category, er.Equip_Description
FROM Equipment_Rented er 
JOIN Customers c ON c.cust_ID = er.cust_ID 


--CREATE new user acount in the database
CREATE LOGIN [Rodrigo] WITH PASSWORD = 'surfdb123';
USE SurfSchool_DB;
CREATE USER [Rodrigo] FOR LOGIN [Rodrigo];

USE SurfSchool_DB;
GRANT VIEW DEFINITION TO [Rodrigo];

USE SurfSchool_DB;
GRANT SELECT ON Customers TO [Rodrigo];
GRANT SELECT on Instructor to[Rodrigo];
GRANT SELECT ON Equipment_Rented TO [Rodrigo];
GRANT SELECT on BooKing_Lessons to[Rodrigo];



CREATE VIEW Customers_Never_Surfed_Very_Beginner AS
SELECT * FROM Customers WHERE Notes IN ('He is never surf before', 'He is at very beginner level');

SELECT * FROM Customers_Never_Surfed_Very_Beginner;

CREATE VIEW Customers_Beginner_Intermediate AS
SELECT * FROM Customers WHERE Notes = 'She is at beginner to intermediate level';


SELECT * FROM Customers_Beginner_Intermediate;

CREATE VIEW vw_CustomerByID AS SELECT * FROM Customers WHERE cust_ID = 100;

SELECT * FROM vw_CustomerByID;

CREATE VIEW vw_AllInstructors AS SELECT * FROM Instructor;

SELECT * FROM vw_AllInstructors;

CREATE VIEW vw_AllCustomers AS SELECT * FROM Customers;

SELECT * FROM vw_AllCustomers;

















