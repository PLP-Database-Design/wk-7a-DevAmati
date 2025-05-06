-- A new table that follows 1NF principles
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(100)
);

-- Insert data into the new table
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- Verify the transformed table
SELECT * FROM ProductDetail_1NF;


--Question 2
--Orders table (ensuring no partial dependency)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

--Products table (linking products to orders)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(100),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Inserting data into Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Inserting data into Products table
INSERT INTO Products (ProductID, OrderID, ProductName)
VALUES
    (1, 101, 'Laptop'),
    (2, 101, 'Mouse'),
    (3, 102, 'Tablet'),
    (4, 102, 'Keyboard'),
    (5, 102, 'Mouse'),
    (6, 103, 'Phone');

--Verify the transformed tables
SELECT * FROM Orders;
SELECT * FROM Products;

