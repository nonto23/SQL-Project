
SQl-PROJECT
=====================================================

CREATE TABLE `UmuziDB`.`CustomerTable` (
`Customer-ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`First-name` VARCHAR( 50 ) NOT NULL ,
`Last-name` VARCHAR( 50 ) NOT NULL ,
`gender` VARCHAR( 5 ) NOT NULL ,
`address` VARCHAR( 200 ) NOT NULL ,
`phone` INT( 10 ) NOT NULL ,
`email` VARCHAR( 100 ) NOT NULL ,
`city` VARCHAR( 20 ) NOT NULL ,
`country` VARCHAR( 50 ) NOT NULL ,

) ;

CREATE TABLE `umuzidb`.`Employee-table` (
`EmployeeID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`first-name` VARCHAR( 50 ) NOT NULL ,
`last-name` VARCHAR( 50 ) NOT NULL ,
`email` VARCHAR( 100 ) NOT NULL ,
`job-tiltle` VARCHAR( 20 ) NOT NULL
)  ;

CREATE TABLE `umuzidb`.`orderTbl` (
`orderID` INT NOT NULL AUTO_INCREMENT ,
`productID` INT NOT NULL ,
`paymentID` INT NOT NULL ,
`FulfilledByEmployeeID` INT NOT NULL ,
`DateRequired` DATETIME NOT NULL ,
`DateShipped` DATETIME NOT NULL ,
`Status` VARCHAR( 20 ) NOT NULL ,
PRIMARY KEY ( `orderID` )
)  ;


CREATE TABLE `umuzidb`.`PaymentsTbl` (
`CustomerId` INT NOT NULL ,
`PaymentID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`PaymentDate` DATETIME NOT NULL ,
`Amount` DATETIME NOT NULL
) ;

CREATE TABLE `umuzidb`.`ProductsTbl` (
`ProductId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`ProductName` VARCHAR( 100 ) NOT NULL ,
`Description` VARCHAR( 300 ) NOT NULL ,
`BuyPrice` DECIMAL NOT NULL
) ;


3
INSERT INTO `umuzidb`.`customertable` (`Customer-ID`, `First-name`, `Last-name`, `gender`, 
`address`, `phone`, `email`, `city`, `country`)
 VALUES (NULL, 'John', 'Hibert', 'Male',
 '284 chaucer st', '084789657', 'john@gmail.com', 'Johannesburg', 'South Africa');
 
INSERT INTO `umuzidb`.`customertable` (`Customer-ID`, `First-name`, `Last-name`, `gender`,
 `address`, `phone`, `email`, `city`, `country`)
 VALUES (NULL, 'Thando', 'Sithole', 'Female',
 '240 Sect 1', '0794445584', 'thando@gmail.com', 'Cape Town', 'South Africa');
 
 INSERT INTO `umuzidb`.`customertable` (`Customer-ID`, `First-name`, `Last-name`, `gender`,
 `address`, `phone`, `email`, `city`, `country`)
 VALUES (NULL, 'Leon', 'Glen', 'Male',
 '81 Everton Rd,Gillits', '0820832830', 'Leon@gmail.com', 'Durban', 'South Africa');
 
  INSERT INTO `umuzidb`.`customertable` (`Customer-ID`, `First-name`, `Last-name`, `gender`,
 `address`, `phone`, `email`, `city`, `country`)
 VALUES (NULL, 'Charl', 'Muller', 'Mal',
 '290A Dorset Ecke', '+44856872553', 'Charl.muller@yahoo.com', 'Berlin', 'Germany');
 
 INSERT INTO `umuzidb`.`customertable` (`Customer-ID`, `First-name`, `Last-name`, `gender`,
 `address`, `phone`, `email`, `city`, `country`)
 VALUES (NULL, 'Julia', 'Stein', 'Female',
 '2 Wernerring', '+448672445058', 'Js234@yahoo.com', 'Frankfurt', 'Germany');
 
 //inserting to employee-table`
 ================================
 INSERT INTO `umuzidb`.`employee-table` (`EmployeeID`, `first-name`, `last-name`, `email`, `job-tiltle`)
 VALUES (NULL, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager');
 
 INSERT INTO `umuzidb`.`employee-table` (`EmployeeID`, `first-name`, `last-name`, `email`, `job-tiltle`)
 VALUES (NULL, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk');
 
 INSERT INTO `umuzidb`.`employee-table` (`EmployeeID`, `first-name`, `last-name`, `email`, `job-tiltle`)
 VALUES (NULL, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');
 
  //inserting to Orders Table
  ==================================
INSERT INTO `umuzidb`.`ordertbl` (`orderID` ,`productID` ,`paymentID` ,`FulfilledByEmployeeID` ,`DateRequired` ,`DateShipped` ,`Status`)
VALUES (NULL , '1', '1', '2', '2018-09-05 20:22:18', '0000-00-00 00:00:00', 'Not Shipped');

INSERT INTO `umuzidb`.`ordertbl` (`orderID` ,`productID` ,`paymentID` ,`FulfilledByEmployeeID` ,`DateRequired` ,`DateShipped` ,`Status`)
VALUES (NULL , '1', '2', '2', '2018-09-04 20:22:18', '2018-09-03 20:22:18', 'Shipped');

INSERT INTO `umuzidb`.`ordertbl` (`orderID` ,`productID` ,`paymentID` ,`FulfilledByEmployeeID` ,`DateRequired` ,`DateShipped` ,`Status`)
VALUES (NULL , '3', '3', '3', '2018-09-06 20:22:18', '0000-00-00 00:00:00', 'Not Shipped');
 
  //inserting to Payament Table
  ==================================
 INSERT INTO `umuzidb`.`paymentstbl` (`CustomerId` ,`PaymentID` ,`PaymentDate` ,`Amount`)
VALUES ('1', '1', '2018-09-01 20:41:53', 'R150.75');

 INSERT INTO `umuzidb`.`paymentstbl` (`CustomerId` ,`PaymentID` ,`PaymentDate` ,`Amount`)
VALUES ('5', '2', '2018-09-03 20:41:53', 'R150.75');

 INSERT INTO `umuzidb`.`paymentstbl` (`CustomerId` ,`PaymentID` ,`PaymentDate` ,`Amount`)
VALUES ('4', '3', '2018-09-03 20:41:53', 'R700.75');

//inserting to Product Table
  ====================================
 
 INSERT INTO `umuzidb`.`productstbl` (`ProductId` ,`ProductName` ,`Description` ,`BuyPrice`)
VALUES (NULL , 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 'R150.75');

INSERT INTO `umuzidb`.`productstbl` (`ProductId` ,`ProductName` ,`Description` ,`BuyPrice`)
VALUES (NULL , 'Classic Car', 'Turnable front wheels, steering function', 'R550.75');

INSERT INTO `umuzidb`.`productstbl` (`ProductId` ,`ProductName` ,`Description` ,`BuyPrice`)
VALUES (NULL , 'Sport Car', 'Turnable front wheels, steering function', '700.60');
====================================================================

1 SELECT *
 FROM `customertable`;
 
2 SELECT First-name
  FROM `customertable` ;
  
3 SELECT First-name
   FROM `customertable
   where Customer-ID = 1;

4 UPDATE customertable
SET First-name = 'Lerato', Last-name= 'Mabitso'
WHERE CustomerID = 1;

5 DELETE FROM customertable
 WHERE CustomerID = 2;
 
6 SELECT COUNT ( DISTINCT Status ) AS "Number of employees" 
FROM orderTbl;

7 SELECT MAX(Amount) AS "LargestPrice"
FROM paymentstbl;

8 SELECT * FROM customertable
ORDER BY country;

9 SELECT * FROM ProductsTbl
   WHERE BuyPrice BETWEEN 200 AND 600;
   
10 SELECT *
 FROM `customertable`
  where country ="Germany"
  and city` ="Berlin";
  
11 SELECT * FROM customertable
   WHERE City='Cape Town' 
   OR City='Durban';

12 SELECT * 
     FROM ProductsTbl
    WHERE ProductsTbl > 500;

13 SELECT SUM(Amount)  AS "Total Amount"
     FROM paymentstbl;
	 
14 SELECT COUNT(orderID`)  AS "Total order"
     FROM orderTbl
	 where Status = "Shipped";
	 
15  SELECT  AVG(BuyPrice) AS Price_Rands,AVG(BuyPrice)*12 AS "Price_Dollars"
    FROM productstbl;

16  SELECT *
    FROM paymentstbl
    INNER JOIN customertable ON paymentstbl.CustomerId = Customers.CustomerID;
	
17 SELECT * 
   FROM ProductsTbl
   WHERE Description LIKE '%Turnable front wheels%';
    

 