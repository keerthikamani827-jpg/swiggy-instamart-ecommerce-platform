CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Category_ID NUMBER,
    Product_Name VARCHAR2(100) NOT NULL,
    Brand VARCHAR2(50),
    Price NUMBER(10,2) NOT NULL,
    Stock NUMBER,
    Weight VARCHAR2(20),
    Expiry_Date DATE,
    Image_URL VARCHAR2(200),

    CONSTRAINT fk_product_category
    FOREIGN KEY (Category_ID)
    REFERENCES Category(Category_ID)
);

INSERT INTO Product
VALUES (1, 101, 'Apple', 'Fresh Farm', 120.00, 50, '1 kg',
        TO_DATE('20-09-2026','DD-MM-YYYY'), 'apple.jpg');

INSERT INTO Product
VALUES (2, 101, 'Banana', 'Farm Fresh', 60.00, 80, '1 kg',
        TO_DATE('18-09-2026','DD-MM-YYYY'), 'banana.jpg');

INSERT INTO Product
VALUES (3, 102, 'Tomato', 'Organic Farm', 45.00, 100, '1 kg',
        TO_DATE('16-09-2026','DD-MM-YYYY'), 'tomato.jpg');

INSERT INTO Product
VALUES (4, 102, 'Potato', 'Fresh Farm', 50.00, 75, '1 kg',
        TO_DATE('25-09-2026','DD-MM-YYYY'), 'potato.jpg');

INSERT INTO Product
VALUES (5, 103, 'Orange Juice', 'Real', 110.00, 40, '1 L',
        TO_DATE('30-10-2026','DD-MM-YYYY'), 'orange_juice.jpg');

INSERT INTO Product
VALUES (6, 103, 'Coca Cola', 'Coca Cola', 45.00, 60, '750 ml',
        TO_DATE('15-12-2026','DD-MM-YYYY'), 'coke.jpg');

INSERT INTO Product
VALUES (7, 104, 'Potato Chips', 'Lays', 30.00, 90, '100 g',
        TO_DATE('10-11-2026','DD-MM-YYYY'), 'lays.jpg');

INSERT INTO Product
VALUES (8, 104, 'Biscuits', 'Parle', 25.00, 120, '200 g',
        TO_DATE('05-12-2026','DD-MM-YYYY'), 'biscuit.jpg');

INSERT INTO Product
VALUES (9, 105, 'Milk', 'Aavin', 30.00, 50, '500 ml',
        TO_DATE('14-09-2026','DD-MM-YYYY'), 'milk.jpg');

INSERT INTO Product
VALUES (10, 105, 'Curd', 'Aavin', 40.00, 45, '500 g',
        TO_DATE('15-09-2026','DD-MM-YYYY'), 'curd.jpg');

        SELECT * FROM Product;

        UPDATE Product
SET Price = 130.00
WHERE Product_ID = 1;

UPDATE Product
SET Stock = 150
WHERE Product_ID = 3;

SELECT * FROM Product;

DELETE FROM Product
WHERE Product_ID = 9;

DELETE FROM Product
WHERE Product_ID = 10;

SELECT * FROM Product;


SELECT
    c.Category_ID,
    c.Category_Name,
    p.Product_ID,
    p.Product_Name,
    p.Brand,
    p.Price,
    p.Stock
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
ORDER BY c.Category_ID;

SELECT
    c.Category_Name,
    COUNT(p.Product_ID) AS Total_Products
FROM Category c
LEFT JOIN Product p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name
ORDER BY c.Category_Name;

SELECT
    c.Category_Name,
    SUM(p.Stock) AS Total_Stock
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name;