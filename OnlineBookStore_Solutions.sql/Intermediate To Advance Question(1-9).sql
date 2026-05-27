-- INTERMEDIATE TO ADVANCE QUESTIONS:
-- 1) Retrieve the total number of books sold for each genre:
SELECT Genre, SUM(Quantity) AS Total_Book_Sold
FROM Orders
JOIN Books
ON Orders.Book_ID = Books.Book_ID
GROUP BY Genre;


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT avg(Price) AS Avg_Price FROM Books
WHERE Genre="Fantasy";


-- 3) List customers who have placed at least 2 orders:
SELECT Name,Quantity
FROM Orders
JOIN Customers
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Quantity>=2
ORDER BY Quantity DESC;

-- 4) Find the most frequently ordered book:
SELECT Title, Quantity FROM Orders
JOIN Books
ON Books.Book_ID = Orders.Book_ID
ORDER BY Quantity DESC
LIMIT 1;


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT * FROM Books
WHERE Genre = "Fantasy"
ORDER BY Price DESC
LIMIT 3;


-- 6) Retrieve the total quantity of books sold by each author:
SELECT Author, SUM(Quantity) AS Total_Quantity
FROM Orders
JOIN Books
ON Books.Book_ID = Orders.Book_ID
GROUP BY Author
ORDER BY Total_Quantity DESC;


-- 7) List the cities where customers who spent over $30 are located:
SELECT DISTINCT City
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Total_Amount > 30;


-- 8) Find the customer who spent the most on orders:
SELECT Name, SUM(Total_Amount) AS Total_Spent
FROM Customers
JOIN Orders
ON Orders.Customer_ID = Customers.Customer_ID
GROUP BY Name
ORDER BY Total_Spent DESC
LIMIT 1;


-- 9) Calculate the stock remaining after fulfilling all orders:
SELECT Title,
       Stock,
       SUM(Quantity) AS Sold_Quantity,
       Stock - SUM(Quantity) AS Remaining_Stock
FROM Books
JOIN Orders
ON Books.Book_ID = Orders.Book_ID
GROUP BY Title, Stock;
