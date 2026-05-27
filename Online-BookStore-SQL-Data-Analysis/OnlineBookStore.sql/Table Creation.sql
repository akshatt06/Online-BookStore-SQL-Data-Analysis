CREATE TABLE Books(
Book_ID INT PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(100),
Published_Year INT,
Price FLOAT,
Stock INT 
);

CREATE TABLE Customers(
Customer_ID INT PRIMARY KEY,
Name  VARCHAR (100),
Email VARCHAR (100),
Phone INT,
City VARCHAR(100),
Country VARCHAR(100)
);

CREATE TABLE Orders(
Order_ID INT PRIMARY KEY,
Customer_ID INT,
Book_ID INT,
Order_Date DATE,
Quantity INT,
Total_Amount DOUBLE
);

RENAME Table Orders1 TO Orders;
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;