CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE NOT NULL,
    Order_Status VARCHAR2(20) NOT NULL,
    Total_Amount NUMBER(10,2) CHECK (Total_Amount > 0),
    CONSTRAINT fk_orders_customer
    FOREIGN KEY (Customer_ID)
    REFERENCES Customer(Customer_ID)
);

Table created.

INSERT INTO Orders
VALUES (1001, 101, DATE '2026-09-15', 'Placed', 450.00);

1 row created.

INSERT INTO Orders
VALUES (1002, 102, DATE '2026-09-16', 'Delivered', 780.00);

1 row created.

INSERT INTO Orders
VALUES (1003, 103, DATE '2026-09-17', 'Pending', 320.00);

1 row created.

INSERT INTO Orders
VALUES (1004, 104, DATE '2026-09-18', 'Shipped', 650.00);

1 row created.

INSERT INTO Orders
VALUES (1005, 105, DATE '2026-09-19', 'Delivered', 920.00);

1 row created.

INSERT INTO Orders
VALUES (1006, 101, DATE '2026-09-20', 'Placed', 550.00);

1 row created.

INSERT INTO Orders
VALUES (1007, 102, DATE '2026-09-21', 'Delivered', 875.00);

1 row created.

INSERT INTO Orders
VALUES (1008, 103, DATE '2026-09-22', 'Shipped', 430.00);

1 row created.

INSERT INTO Orders
VALUES (1009, 104, DATE '2026-09-23', 'Pending', 690.00);

1 row created.

INSERT INTO Orders
VALUES (1010, 105, DATE '2026-09-24', 'Delivered', 1050.00);


1 row created.

COMMIT;

Commit complete.

SELECT * FROM Orders;

ORDER_ID CUSTOMER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
---------- ----------- --------- -------------------- ------------
      1001         101 15-SEP-26 Placed                        450
      1002         102 16-SEP-26 Delivered                     780
      1003         103 17-SEP-26 Pending                       320
      1004         104 18-SEP-26 Shipped                       650
      1005         105 19-SEP-26 Delivered                     920
      1006         101 20-SEP-26 Placed                        550
      1007         102 21-SEP-26 Delivered                     875
      1008         103 22-SEP-26 Shipped                       430
      1009         104 23-SEP-26 Pending                       690
      1010         105 24-SEP-26 Delivered                    1050

10 rows selected.

UPDATE Orders
SET Total_Amount = 500.00,
    Order_Status = 'Delivered'
WHERE Order_ID = 1001;


1 row updated.

COMMIT;

Commit complete.

UPDATE Orders
SET Total_Amount = 850.00,
    Order_Status = 'Shipped'
WHERE Order_ID = 1002;

1 row updated.

COMMIT;

Commit complete.

SELECT 
    Order_ID, 
    Customer_ID, 
    Order_Date, 
    Total_Amount, 
    Order_Status 
FROM Orders 
WHERE Order_ID IN (1001, 1002);

ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
      1001         101 15-SEP-26          500 Delivered
      1002         102 16-SEP-26          850 Shipped

      

      SELECT
    c.Customer_ID,
    c.FIRST_NAME || ' ' || c.LAST_NAME AS Customer_Name,
    o.Order_ID,
    o.Order_Date,
    p.Product_Name,
    oi.Quantity,
    oi.Unit_Price,
    o.Total_Amount,
    o.Order_Status
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Item oi
    ON o.Order_ID = oi.Order_ID
JOIN Product p
    ON oi.Product_ID = p.Product_ID
WHERE c.Customer_ID = 101
ORDER BY o.Order_Date;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        101
Rahul Sharma
      1001 15-SEP-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
Milk
         3        160          500 Delivered


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        101
Rahul Sharma
      1001 15-SEP-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
Bread
         2        210          500 Delivered


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        101
Rahul Sharma
      1006 20-SEP-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
Apple
         2         80          550 Placed


SELECT
    c.Customer_ID,
    c.FIRST_NAME || ' ' || c.LAST_NAME AS Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders,
    SUM(o.Total_Amount) AS Total_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.FIRST_NAME,
    c.LAST_NAME
ORDER BY c.Customer_ID;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_AMOUNT
------------ ------------
        101
Rahul Sharma
           2         1050

        102
Priya Kumar
           2         1725

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_AMOUNT
------------ ------------

        103
Arun Ravi
           2          750

        104
Sneha Iyer

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_AMOUNT
------------ ------------
           2         1340

        105
Vikram Singh
           2         1970



