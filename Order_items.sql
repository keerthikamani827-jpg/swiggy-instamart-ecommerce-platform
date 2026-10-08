
      CREATE TABLE Order_Item (
    OrderItem_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Product_ID NUMBER,
    Quantity NUMBER CHECK (Quantity > 0),
    Unit_Price NUMBER(10,2) CHECK (Unit_Price > 0),
    CONSTRAINT fk_orderitem_order
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),
    CONSTRAINT fk_orderitem_product
    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID)
);

Table created.

INSERT INTO Order_Item VALUES (1, 1001, 1, 2, 150.00);

1 row created.

INSERT INTO Order_Item VALUES (2, 1001, 2, 1, 120.00);

1 row created.

INSERT INTO Order_Item VALUES (3, 1002, 3, 3, 80.00);

1 row created.

INSERT INTO Order_Item VALUES (4, 1002, 4, 2, 200.00);

1 row created.

INSERT INTO Order_Item VALUES (5, 1003, 5, 1, 320.00);

1 row created.

INSERT INTO Order_Item VALUES (6, 1004, 1, 2, 150.00);

1 row created.

INSERT INTO Order_Item VALUES (7, 1005, 2, 4, 120.00);

1 row created.

INSERT INTO Order_Item VALUES (8, 1006, 3, 2, 80.00);

1 row created.

INSERT INTO Order_Item VALUES (9, 1007, 4, 3, 200.00);

1 row created.

INSERT INTO Order_Item VALUES (10, 1008, 5, 2, 320.00);

1 row created.

COMMIT;

Commit complete.

SELECT * FROM Order_Item;

ORDERITEM_ID   ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE
------------ ---------- ---------- ---------- ----------
           1       1001          1          2        150
           2       1001          2          1        120
           3       1002          3          3         80
           4       1002          4          2        200
           5       1003          5          1        320
           6       1004          1          2        150
           7       1005          2          4        120
           8       1006          3          2         80
           9       1007          4          3        200
          10       1008          5          2        320

10 rows selected.

UPDATE Order_Item
SET Quantity = 3,
    Unit_Price = 160.00
WHERE OrderItem_ID = 1;

1 row updated.

COMMIT;

Commit complete.

UPDATE Order_Item
SET Quantity = 2,
    Unit_Price = 210.00
WHERE OrderItem_ID = 2;

1 row updated.

COMMIT;

Commit complete.

SELECT 
    OrderItem_ID, 
    Order_ID, 
    Product_ID, 
    Quantity, 
    Unit_Price 
FROM Order_Item 
WHERE OrderItem_ID IN (1, 2);

ORDERITEM_ID   ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE
------------ ---------- ---------- ---------- ----------
           1       1001          1          3        160
           2       1001          2          2        210
