
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(100),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'Australia'),
(5, 'Emma', 'India'),
(6, 'Frank', 'Germany'),
(7, 'Grace', 'France'),
(8, 'Henry', 'USA'),
(9, 'Isla', 'UK'),
(10, 'Jack', 'Japan');


INSERT INTO Orders VALUES
(101, 1, 'Laptop', '2025-01-10'),
(102, 1, 'Mouse', '2025-01-12'),
(103, 2, 'Keyboard', '2025-02-15'),
(104, 4, 'Monitor', '2025-02-20'),
(105, 6, 'Headphones', '2025-03-01'),
(106, 3, 'Printer', '2025-03-05'),
(107, 3, 'Desk Lamp', '2025-03-06'),
(108, 7, 'Tablet', '2025-03-08'),
(109, 8, 'Webcam', '2025-03-10'),
(111, 1, 'External HDD', '2025-03-15'),
(112, 9, 'Microphone', '2025-03-18');

SELECT c.CustomerName, c.Country, o.Product, o.OrderDate
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

SELECT c.CustomerName, o.Product
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'USA';

SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN 
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


