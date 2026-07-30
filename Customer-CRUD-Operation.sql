CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Email VARCHAR2(100),
    Phone_Number VARCHAR2(15)
);
INSERT INTO Customer VALUES (101, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210');

INSERT INTO Customer VALUES (102, 'Priya', 'Kumar', 'priya@gmail.com', '9876543211');

INSERT INTO Customer VALUES (103, 'Arun', 'Ravi', 'arun@gmail.com', '9876543212');

INSERT INTO Customer VALUES (104, 'Sneha', 'Iyer', 'sneha@gmail.com', '9876543213');

INSERT INTO Customer VALUES (105, 'Vikram', 'Singh', 'vikram@gmail.com', '9876543214');

INSERT INTO Customer VALUES (106, 'Anjali', 'Menon', 'anjali@gmail.com', '9876543215');

INSERT INTO Customer VALUES (107, 'Karthik', 'Raj', 'karthik@gmail.com', '9876543216');

INSERT INTO Customer VALUES (108, 'Divya', 'Nair', 'divya@gmail.com', '9876543217');

INSERT INTO Customer VALUES (109, 'Rohit', 'Patel', 'rohit@gmail.com', '9876543218');

INSERT INTO Customer VALUES (110, 'Meena', 'Das', 'meena@gmail.com', '9876543219');

COMMIT;

SELECT * FROM Customer;

INSERT INTO Customer
VALUES (111, 'Sonakshi', 'Verma', 'sonakshi@gmail.com', '9876543220');

COMMIT;

SELECT * FROM Customer;

SELECT * FROM Customer
WHERE Customer_ID = 101;

UPDATE Customer
SET First_Name = 'Anushya',
    Email = 'anushya@gmail.com'
WHERE Customer_ID = 107;

COMMIT;

DELETE FROM Customer
WHERE Customer_ID = 111;

COMMIT;
