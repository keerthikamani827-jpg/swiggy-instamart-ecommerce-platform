SELECT
    c.CUSTOMER_ID,
    c.FIRST_NAME || ' ' || c.LAST_NAME AS CUSTOMER_NAME,
    o.ORDER_ID,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT
FROM Customer c
INNER JOIN Orders o
    ON c.CUSTOMER_ID = o.CUSTOMER_ID;

     AMOUNT                                    NOT NULL NUMBER(10,2)
CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        101
Rahul Sharma
      1001 15-SEP-26          500

        102
Priya Kumar
      1002 16-SEP-26          850

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        103
Arun Ravi
      1003 17-SEP-26          320

        104
Sneha Iyer

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
      1004 18-SEP-26          650

        105
Vikram Singh
      1005 19-SEP-26          920

        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
Rahul Sharma
      1006 20-SEP-26          550

        102
Priya Kumar
      1007 21-SEP-26          875


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        103
Arun Ravi
      1008 22-SEP-26          430

        104
Sneha Iyer
      1009 23-SEP-26          690

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        105
Vikram Singh
      1010 24-SEP-26         1050


10 rows selected.


SELECT
    o.ORDER_ID,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT,
    p.PAYMENT_METHOD,
    p.AMOUNT,
    p.PAYMENT_STATUS
FROM Orders o
INNER JOIN Payment p
    ON o.ORDER_ID = p.ORDER_ID;


    
  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1001 15-SEP-26          500 UPI                                   500
Paid

      1002 16-SEP-26          850 Card                                  500
Paid

      1003 17-SEP-26          320 Cash                                  320
Paid


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1004 18-SEP-26          650 UPI                                   150
Paid

      1005 19-SEP-26          920 Card                                  120
Paid

      1006 20-SEP-26          550 UPI                                    80
Paid


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1007 21-SEP-26          875 Cash                                  200
Paid

      1008 22-SEP-26          430 UPI                                   320
Paid

      1001 15-SEP-26          500 Card                                  500
Refunded


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1002 16-SEP-26          850 UPI                                   500
Paid


10 rows selected.

SELECT
    p.PRODUCT_ID,
    p.PRODUCT_NAME,
    oi.ORDER_ID,
    oi.QUANTITY,
    oi.UNIT_PRICE,
    (oi.QUANTITY * oi.UNIT_PRICE) AS SUBTOTAL
FROM Product p
INNER JOIN Order_Item oi
    ON p.PRODUCT_ID = oi.PRODUCT_ID;

    PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
         1
Milk
      1001          3        160        480

         2
Bread
      1001          2        210        420

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------

         3
Apple
      1002          3         80        240

         4
Biscuits

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
      1002          2        200        400

         5
Fruit Juice
      1003          1        320        320

         1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
Milk
      1004          2        150        300

         2
Bread
      1005          4        120        480


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
         3
Apple
      1006          2         80        160

         4
Biscuits
      1007          3        200        600

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------

         5
Fruit Juice
      1008          2        320        640


10 rows selected.

SELECT
    c.CUSTOMER_ID,
    c.FIRST_NAME || ' ' || c.LAST_NAME AS CUSTOMER_NAME,
    o.ORDER_ID,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT
FROM Customer c
LEFT JOIN Orders o
    ON c.CUSTOMER_ID = o.CUSTOMER_ID;


    CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        101
Rahul Sharma
      1001 15-SEP-26          500

        102
Priya Kumar
      1002 16-SEP-26          850

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        103
Arun Ravi
      1003 17-SEP-26          320

        104
Sneha Iyer

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
      1004 18-SEP-26          650

        105
Vikram Singh
      1005 19-SEP-26          920

        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
Rahul Sharma
      1006 20-SEP-26          550

        102
Priya Kumar
      1007 21-SEP-26          875


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        103
Arun Ravi
      1008 22-SEP-26          430

        104
Sneha Iyer
      1009 23-SEP-26          690

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        105
Vikram Singh
      1010 24-SEP-26         1050

        107
Ananya Raj

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------


        108
Divya Nair


        109

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
Rohit Patel


        110
Meena Das



CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        106
Anjali Menon



15 rows selected.


SELECT
    o.ORDER_ID,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT,
    p.PAYMENT_METHOD,
    p.AMOUNT,
    p.PAYMENT_STATUS
FROM Orders o
INNER JOIN Payment p
    ON o.ORDER_ID = p.ORDER_ID;


     ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1001 15-SEP-26          500 UPI                                   500
Paid

      1002 16-SEP-26          850 Card                                  500
Paid

      1003 17-SEP-26          320 Cash                                  320
Paid


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1004 18-SEP-26          650 UPI                                   150
Paid

      1005 19-SEP-26          920 Card                                  120
Paid

      1006 20-SEP-26          550 UPI                                    80
Paid


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1007 21-SEP-26          875 Cash                                  200
Paid

      1008 22-SEP-26          430 UPI                                   320
Paid

      1001 15-SEP-26          500 Card                                  500
Refunded


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD                     AMOUNT
---------- --------- ------------ ------------------------------ ----------
PAYMENT_STATUS
--------------------
      1002 16-SEP-26          850 UPI                                   500
Paid


10 rows selected.


