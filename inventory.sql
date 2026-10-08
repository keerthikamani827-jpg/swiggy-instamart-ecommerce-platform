-- INVENTORY TABLE

CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    SellerID NUMBER NOT NULL,
    Product_ID NUMBER NOT NULL,
    Stock_Quantity NUMBER DEFAULT 0,
    Stock_Status VARCHAR2(20) DEFAULT 'In Stock',
    Last_Updated DATE DEFAULT SYSDATE,

    CONSTRAINT fk_inventory_seller
        FOREIGN KEY (SellerID)
        REFERENCES Seller(SellerID),

    CONSTRAINT fk_inventory_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);

-- INVENTORY DATA

INSERT INTO Inventory
VALUES (1, 101, 1, 50, 'In Stock', SYSDATE);

INSERT INTO Inventory
VALUES (2, 102, 2, 0, 'Out of Stock', SYSDATE);

INSERT INTO Inventory
VALUES (3, 103, 3, 20, 'In Stock', SYSDATE);

INSERT INTO Inventory
VALUES (4, 104, 4, 40, 'In Stock', SYSDATE);

INSERT INTO Inventory
VALUES (5, 105, 5, 0, 'Out of Stock', SYSDATE);

COMMIT;

-- VIEW INVENTORY TABLE

SELECT * FROM Inventory;