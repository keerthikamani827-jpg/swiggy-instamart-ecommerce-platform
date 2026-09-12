CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(50) UNIQUE NOT NULL,
    Description VARCHAR2(200)
);

INSERT INTO Category VALUES (101, 'Fruits', 'Fresh fruits and seasonal fruits');

INSERT INTO Category VALUES (102, 'Vegetables', 'Fresh vegetables');

INSERT INTO Category VALUES (103, 'Beverages', 'Juices and soft drinks');

INSERT INTO Category VALUES (104, 'Snacks', 'Chips, biscuits and snacks');

INSERT INTO Category VALUES (105, 'Dairy', 'Milk and dairy products');

SELECT * FROM Category;


COMMIT;