
DROP TABLE IF EXISTS Order_Items;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Order_Items (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers VALUES 
(1, 'Liam', 'Smith', 'liam@email.com', 'New York', '2023-01-10'),
(2, 'Olivia', 'Johnson', 'olivia@email.com', 'Chicago', '2023-01-12'),
(3, 'Noah', 'Williams', 'noah@email.com', 'Seattle', '2023-02-15'),
(4, 'Emma', 'Brown', 'emma@email.com', 'New York', '2023-03-01'),
(5, 'Oliver', 'Jones', 'oliver@email.com', 'Miami', '2023-03-20'),
(6, 'Ava', 'Garcia', 'ava@email.com', 'Chicago', '2023-04-05'),
(7, 'Elijah', 'Miller', 'elijah@email.com', 'Austin', '2023-05-12'),
(8, 'Sophia', 'Davis', 'sophia@email.com', 'Seattle', '2023-06-18'),
(9, 'James', 'Rodriguez', 'james@email.com', 'Miami', '2023-07-22'),
(10, 'Isabella', 'Martinez', 'isabella@email.com', 'New York', '2023-08-30'),
(11, 'Benjamin', 'Hernandez', 'ben@email.com', 'Austin', '2023-09-05'),
(12, 'Mia', 'Lopez', 'mia@email.com', 'Chicago', '2023-10-10'),
(13, 'Lucas', 'Gonzalez', 'lucas@email.com', 'Seattle', '2023-11-15'),
(14, 'Charlotte', 'Wilson', 'charlotte@email.com', 'Dallas', '2023-12-01'),
(15, 'Amelia', 'Anderson', 'amelia@email.com', 'Dallas', '2023-12-20');

INSERT INTO Products VALUES 
(101, 'Mechanical Keyboard', 'Electronics', 120.00, 45),
(102, 'Ergonomic Mouse', 'Electronics', 65.00, 60),
(103, '4K Monitor', 'Electronics', 350.00, 12),
(104, 'Desk Lamp', 'Home Office', 35.00, 100),
(105, 'Standing Desk', 'Home Office', 450.00, 8),
(106, 'USB-C Hub', 'Accessories', 45.00, 85),
(107, 'Noise Cancelling Headphones', 'Electronics', 299.00, 25),
(108, 'Laptop Stand', 'Accessories', 40.00, 40),
(109, 'Water Bottle', 'Lifestyle', 25.00, 150),
(110, 'Yoga Mat', 'Lifestyle', 50.00, 75);


INSERT INTO Orders VALUES 
(501, 1, '2024-01-05', 'Shipped'), (502, 2, '2024-01-07', 'Shipped'),
(503, 3, '2024-01-10', 'Shipped'), (504, 4, '2024-01-15', 'Cancelled'),
(505, 5, '2024-01-20', 'Shipped'), (506, 1, '2024-02-01', 'Shipped'),
(507, 6, '2024-02-05', 'Shipped'), (508, 7, '2024-02-10', 'Processing'),
(509, 8, '2024-02-15', 'Shipped'), (510, 9, '2024-02-20', 'Shipped'),
(511, 2, '2024-03-01', 'Shipped'), (512, 10, '2024-03-05', 'Shipped'),
(513, 11, '2024-03-10', 'Shipped'), (514, 12, '2024-03-15', 'Shipped'),
(515, 4, '2024-03-20', 'Shipped'), (516, 13, '2024-04-01', 'Shipped'),
(517, 14, '2024-04-05', 'Shipped'), (518, 15, '2024-04-10', 'Shipped'),
(519, 1, '2024-04-15', 'Shipped'), (520, 3, '2024-04-20', 'Processing'),
(521, 6, '2024-05-01', 'Shipped'), (522, 8, '2024-05-05', 'Shipped'),
(523, 12, '2024-05-10', 'Shipped'), (524, 5, '2024-05-15', 'Shipped'),
(525, 9, '2024-05-20', 'Shipped');


INSERT INTO Order_Items VALUES 
(1, 501, 101, 1, 120.00), (2, 501, 102, 1, 65.00),
(3, 502, 103, 1, 350.00), (4, 503, 105, 1, 450.00),
(5, 505, 109, 2, 25.00),  (6, 506, 107, 1, 299.00),
(7, 507, 110, 1, 50.00),  (8, 508, 104, 3, 35.00),
(9, 509, 101, 1, 120.00), (10, 509, 106, 2, 45.00),
(11, 511, 108, 1, 40.00), (12, 512, 103, 1, 350.00),
(13, 515, 101, 1, 120.00), (14, 515, 102, 1, 65.00),
(15, 519, 107, 1, 299.00), (16, 521, 109, 1, 25.00),
(17, 523, 110, 2, 50.00), (18, 525, 105, 1, 450.00);