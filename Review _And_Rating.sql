CREATE TABLE Review (
    Review_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Product_ID NUMBER,
    Review_Text VARCHAR2(200),
    Review_Date DATE
);

Table created.


INSERT INTO Review VALUES
(1, 101, 1, 'Fresh and good quality apples.', TO_DATE('01-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(2, 102, 2, 'Bananas were fresh and tasty.', TO_DATE('02-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(3, 101, 3, 'Fresh tomatoes and good quality.', TO_DATE('03-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(4, 102, 4, 'Potatoes were fresh and good.', TO_DATE('04-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(5, 101, 5, 'Orange juice tasted fresh and delicious.', TO_DATE('05-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(6, 102, 6, 'Good taste and properly packed.', TO_DATE('06-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(7, 101, 7, 'Crispy and tasty chips.', TO_DATE('07-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(8, 102, 8, 'Biscuits were fresh and tasty.', TO_DATE('08-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(9, 101, 9, 'Fresh milk with good quality.', TO_DATE('09-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Review VALUES
(10, 102, 10, 'Curd was fresh and good.', TO_DATE('10-10-2026','DD-MM-YYYY'));

1 row created.

COMMIT;

Commit complete.

SELECT * FROM Review;

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1         101          1
Fresh and good quality apples.
01-OCT-26

         2         102          2
Bananas were fresh and tasty.
02-OCT-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------

         3         101          3
Fresh tomatoes and good quality.
03-OCT-26

         4         102          4
Potatoes were fresh and good.

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
04-OCT-26

         5         101          5
Orange juice tasted fresh and delicious.
05-OCT-26

         6         102          6

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good taste and properly packed.
06-OCT-26

         7         101          7
Crispy and tasty chips.
07-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         8         102          8
Biscuits were fresh and tasty.
08-OCT-26

         9         101          9
Fresh milk with good quality.
09-OCT-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------

        10         102         10
Curd was fresh and good.
10-OCT-26


10 rows selected.

 CREATE TABLE Rating (
  2      Rating_ID NUMBER PRIMARY KEY,
  3      Review_ID NUMBER,
  4      Rating_Value NUMBER(1),
  5      Rating_Date DATE 
  6  );

  Table created.


INSERT INTO Rating VALUES (1, 1, 5, TO_DATE('01-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (2, 2, 4, TO_DATE('02-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (3, 3, 5, TO_DATE('03-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (4, 4, 4, TO_DATE('04-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (5, 5, 5, TO_DATE('05-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (6, 6, 4, TO_DATE('06-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (7, 7, 5, TO_DATE('07-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (8, 8, 4, TO_DATE('08-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (9, 9, 5, TO_DATE('09-10-2026','DD-MM-YYYY'));

1 row created.

INSERT INTO Rating VALUES (10, 10, 4, TO_DATE('10-10-2026','DD-MM-YYYY'));


1 row created.

COMMIT;

Commit complete.

 SELECT * FROM Rating;

 RATING_ID  REVIEW_ID RATING_VALUE RATING_DA
---------- ---------- ------------ ---------
         1          1            5 01-OCT-26
         2          2            4 02-OCT-26
         3          3            5 03-OCT-26
         4          4            4 04-OCT-26
         5          5            5 05-OCT-26
         6          6            4 06-OCT-26
         7          7            5 07-OCT-26
         8          8            4 08-OCT-26
         9          9            5 09-OCT-26
        10         10            4 10-OCT-26

10 rows selected.

SELECT
    P.Product_ID,
    P.Product_Name,
    R.Review_ID,
    R.Customer_ID,
    R.Review_Text,
    R.Review_Date
FROM Product P
JOIN Review R
ON P.Product_ID = R.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1
Milk
         1         101

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Fresh and good quality apples.
01-OCT-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         2
Bread
         2         102

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Bananas were fresh and tasty.
02-OCT-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         3
Apple
         3         101

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Fresh tomatoes and good quality.
03-OCT-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         4
Biscuits
         4         102

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Potatoes were fresh and good.
04-OCT-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         5
Fruit Juice
         5         101

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Orange juice tasted fresh and delicious.
05-OCT-26

SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    ROUND(AVG(RT.RATING_VALUE), 2) AS AVERAGE_RATING
FROM PRODUCT P
JOIN REVIEW R
    ON P.PRODUCT_ID = R.PRODUCT_ID
JOIN RATING RT
    ON R.REVIEW_ID = RT.REVIEW_ID
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
ORDER BY P.PRODUCT_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
         1
Milk
             5

         2
Bread
             4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

         3
Apple
             5

         4
Biscuits

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
             4

         5
Fruit Juice
             5


SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    ROUND(AVG(RT.RATING_VALUE), 2) AS AVERAGE_RATING
FROM PRODUCT P
JOIN REVIEW R
    ON P.PRODUCT_ID = R.PRODUCT_ID
JOIN RATING RT
    ON R.REVIEW_ID = RT.REVIEW_ID
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
HAVING AVG(RT.RATING_VALUE) >= 4
ORDER BY AVERAGE_RATING DESC;


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
         1
Milk
             5

         3
Apple
             5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

         5
Fruit Juice
             5

         4
Biscuits

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
             4

         2
Bread
             4


SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    COUNT(RT.RATING_ID) AS TOTAL_RATINGS,
    ROUND(AVG(RT.RATING_VALUE), 2) AS AVERAGE_RATING,
    MAX(RT.RATING_VALUE) AS HIGHEST_RATING,
    MIN(RT.RATING_VALUE) AS LOWEST_RATING
FROM PRODUCT P
JOIN REVIEW R
    ON P.PRODUCT_ID = R.PRODUCT_ID
JOIN RATING RT
    ON R.REVIEW_ID = RT.REVIEW_ID
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
ORDER BY AVERAGE_RATING DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING HIGHEST_RATING LOWEST_RATING
------------- -------------- -------------- -------------
         1
Milk
            1              5              5             5

         3
Apple
            1              5              5             5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING HIGHEST_RATING LOWEST_RATING
------------- -------------- -------------- -------------

         5
Fruit Juice
            1              5              5             5

         4
Biscuits

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING HIGHEST_RATING LOWEST_RATING
------------- -------------- -------------- -------------
            1              4              4             4

         2
Bread
            1              4              4             4


COMMIT;

Commit complete.

