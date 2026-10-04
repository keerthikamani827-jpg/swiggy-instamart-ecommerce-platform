CREATE TABLE Payment (
    Payment_ID NUMBER(10) PRIMARY KEY,
    Order_ID NUMBER(10),
    Payment_Method VARCHAR2(30) NOT NULL,
    Payment_Status VARCHAR2(20) NOT NULL,
    Payment_Date DATE,
    Amount NUMBER(10,2) NOT NULL
);

Table created.

INSERT INTO Payment
VALUES (1, 1001, 'UPI', 'Paid', DATE '2026-09-15', 500);

1 row created.

INSERT INTO Payment
VALUES (2, 1002, 'Card', 'Paid', DATE '2026-09-16', 500);

1 row created.

INSERT INTO Payment
VALUES (3, 1003, 'Cash', 'Paid', DATE '2026-09-17', 320);

1 row created.

INSERT INTO Payment
VALUES (4, 1004, 'UPI', 'Paid', DATE '2026-09-18', 150);

1 row created.

INSERT INTO Payment
VALUES (5, 1005, 'Card', 'Paid', DATE '2026-09-19', 120);

1 row created.

INSERT INTO Payment
VALUES (6, 1006, 'UPI', 'Pending', DATE '2026-09-20', 80);

1 row created.

INSERT INTO Payment
VALUES (7, 1007, 'Cash', 'Paid', DATE '2026-09-21', 200);

1 row created.

INSERT INTO Payment
VALUES (8, 1008, 'UPI', 'Paid', DATE '2026-09-22', 320);

1 row created.

INSERT INTO Payment
VALUES (9, 1001, 'Card', 'Refunded', DATE '2026-09-23', 500);

1 row created.

INSERT INTO Payment
VALUES (10, 1002, 'UPI', 'Pending', DATE '2026-09-24', 500);

1 row created.

COMMIT;

Commit complete.

SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001 UPI                            Paid
15-SEP-26        500

         2       1002 Card                           Paid
16-SEP-26        500

         3       1003 Cash                           Paid
17-SEP-26        320


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004 UPI                            Paid
18-SEP-26        150

         5       1005 Card                           Paid
19-SEP-26        120

         6       1006 UPI                            Pending
20-SEP-26         80


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         7       1007 Cash                           Paid
21-SEP-26        200

         8       1008 UPI                            Paid
22-SEP-26        320

         9       1001 Card                           Refunded
23-SEP-26        500


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
        10       1002 UPI                            Pending
24-SEP-26        500


10 rows selected.

SELECT *
FROM Payment
WHERE Payment_Status = 'Paid';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001 UPI                            Paid
15-SEP-26        500

         2       1002 Card                           Paid
16-SEP-26        500

         3       1003 Cash                           Paid
17-SEP-26        320


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004 UPI                            Paid
18-SEP-26        150

         5       1005 Card                           Paid
19-SEP-26        120

         7       1007 Cash                           Paid
21-SEP-26        200


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         8       1008 UPI                            Paid
22-SEP-26        320


7 rows selected.

UPDATE Payment
SET Payment_Status = 'Paid'
WHERE Payment_ID = 6;

1 row updated.

UPDATE Payment
SET Payment_Status = 'Paid'
WHERE Payment_ID = 10;

1 row updated.

COMMIT;

Commit complete.

SELECT *
FROM Payment
WHERE Payment_ID IN (6, 10);

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         6       1006 UPI                            Paid
20-SEP-26         80

        10       1002 UPI                            Paid
24-SEP-26        500

SELECT Payment_Method,
       COUNT(*) AS Total_Payments
FROM Payment
GROUP BY Payment_Method
ORDER BY Total_Payments DESC;

PAYMENT_METHOD                 TOTAL_PAYMENTS
------------------------------ --------------
UPI                                         5
Card                                        3
Cash                                        2

SELECT 
    p.Payment_Method,
    SUM(o.Total_Amount) AS Total_Amount
FROM Payment p
INNER JOIN Orders o
    ON p.Order_ID = o.Order_ID
GROUP BY p.Payment_Method
ORDER BY Total_Amount DESC;

PAYMENT_METHOD                 TOTAL_AMOUNT
------------------------------ ------------
UPI                                    2980
Card                                   2270
Cash                                   1195

SELECT
    p.Payment_ID,
    p.Order_ID,
    o.Order_Date,
    o.Total_Amount,
    p.Payment_Method,
    p.Payment_Status,
    p.Payment_Date
FROM Payment p
INNER JOIN Orders o
    ON p.Order_ID = o.Order_ID
ORDER BY p.Payment_Date;

PAYMENT_ID   ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- --------- ------------ ------------------------------
PAYMENT_STATUS       PAYMENT_D
-------------------- ---------
         1       1001 15-SEP-26          500 UPI
Paid                 15-SEP-26

         2       1002 16-SEP-26          850 Card
Paid                 16-SEP-26

         3       1003 17-SEP-26          320 Cash
Paid                 17-SEP-26


PAYMENT_ID   ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- --------- ------------ ------------------------------
PAYMENT_STATUS       PAYMENT_D
-------------------- ---------
         4       1004 18-SEP-26          650 UPI
Paid                 18-SEP-26

         5       1005 19-SEP-26          920 Card
Paid                 19-SEP-26

         6       1006 20-SEP-26          550 UPI
Paid                 20-SEP-26


PAYMENT_ID   ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- --------- ------------ ------------------------------
PAYMENT_STATUS       PAYMENT_D
-------------------- ---------
         7       1007 21-SEP-26          875 Cash
Paid                 21-SEP-26

         8       1008 22-SEP-26          430 UPI
Paid                 22-SEP-26

         9       1001 15-SEP-26          500 Card
Refunded             23-SEP-26


PAYMENT_ID   ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- --------- ------------ ------------------------------
PAYMENT_STATUS       PAYMENT_D
-------------------- ---------
        10       1002 16-SEP-26          850 UPI
Paid                 24-SEP-26


10 rows selected.

COMMIT;

Commit complete.