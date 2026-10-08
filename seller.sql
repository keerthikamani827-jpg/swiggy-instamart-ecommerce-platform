-- SELLER TABLE

CREATE TABLE Seller (
    SellerID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(100) NOT NULL,
    Phone VARCHAR2(15),
    Email VARCHAR2(100),
    Address VARCHAR2(100)
);

-- SELLER DATA

INSERT INTO Seller VALUES
(101, 'Fresh Mart', '9876543210', 'freshmart@gmail.com', 'Chennai');

INSERT INTO Seller VALUES
(102, 'Daily Needs', '9876501234', 'dailyneeds@gmail.com', 'Chromepet');

INSERT INTO Seller VALUES
(103, 'Quick Grocery', '9876512345', 'quickgrocery@gmail.com', 'Tambaram');

INSERT INTO Seller VALUES
(104, 'Super Fresh Store', '9876523456', 'superfresh@gmail.com', 'Pallavaram');

INSERT INTO Seller VALUES
(105, 'City Grocers', '9876534567', 'citygrocers@gmail.com', 'Guindy');

COMMIT;

-- VIEW SELLER TABLE

SELECT * FROM Seller;