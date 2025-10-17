-- pergunta_1

SELECT
    CustomerName,
    ContactName
FROM
    Customers
WHERE
    Country = 'Germany';
    
    SELECT
    CustomerName,
    ContactName
FROM
    Customers
WHERE
    Country = 'Germany';
    
    -- pergunta2
    
    SELECT
    ProductName,
    Price
FROM
    Products
WHERE
    CategoryID = 1
ORDER BY
    Price DESC;
    
    -- Pergunta 3
    
    SELECT
    LastName,
    FirstName,
    BirthDate,
    Notes
FROM
    Employees
WHERE
    EmployeeID = 4;
    
    -- pergunta 4
    
    SELECT
    Country,
    COUNT(CustomerID) AS TotalCustomers
FROM
    Customers
GROUP BY
    Country
ORDER BY
    TotalCustomers DESC;
    
    -- pergunta 5
    
    SELECT DISTINCT
    S.SupplierName
FROM
    Suppliers AS S
INNER JOIN
    Products AS P ON S.SupplierID = P.SupplierID
WHERE
    P.CategoryID = 8;
    
   -- pergunta 6
   
(
    -- Consulta para o produto mais caro
    SELECT
        ProductName,
        Price,
        'Mais Caro' AS Tipo_Preco
    FROM
        Products
    ORDER BY
        Price DESC
    LIMIT 1
)
UNION ALL
(
    -- Consulta para o produto mais barato
    SELECT
        ProductName,
        Price,
        'Mais Barato' AS Tipo_Preco
    FROM
        Products
    ORDER BY
        Price ASC
    LIMIT 1
);


-- pergunta 7

SELECT 
    S.ShipperName, COUNT(O.OrderID) AS TotalOrders
FROM
    Shippers AS S
        INNER JOIN
    Orders AS O ON S.ShipperID = O.ShipperID
GROUP BY S.ShipperName
ORDER BY TotalOrders DESC;

-- pergunta 8

SELECT
    AVG(Total_Quantity_Per_Order) AS AverageQuantityPerOrder
FROM
    (
        SELECT
            OrderID,
            SUM(Quantity) AS Total_Quantity_Per_Order
        FROM
            OrderDetails
        GROUP BY
            OrderID
    ) AS Subquery_OrderTotals;
    
    -- pergunta 9 
    
    SELECT
    T1.FirstName,
    T1.LastName,
    COUNT(T2.OrderID) AS TotalOrdersProcessed
FROM
    Employees AS T1
JOIN
    Orders AS T2 ON T1.EmployeeID = T2.EmployeeID
GROUP BY
    T1.EmployeeID, T1.FirstName, T1.LastName
ORDER BY
    TotalOrdersProcessed DESC;
    
-- pergunta 10 

SELECT
    T1.FirstName,
    T1.LastName,
    COUNT(T2.OrderID) AS TotalOrdersProcessed
FROM
    Employees AS T1
JOIN
    Orders AS T2 ON T1.EmployeeID = T2.EmployeeID
GROUP BY
    T1.EmployeeID, T1.FirstName, T1.LastName
ORDER BY
    TotalOrdersProcessed DESC;

 SELECT
    COUNT(OrderID) AS TotalOrdersInJuly1996
FROM
    Orders
WHERE
    OrderDate LIKE '%/07/1996';
    
    
    
    
    