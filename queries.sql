-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Product.CategoryId
FROM  Product
JOIN Category on Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Order.Id, Order.ShipName
FROM Order
WHERE Order.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT OrderDetail.OrderId, Product.ProductName, OrderDetail.Quantity
FROM OrderDetail
WHERE OrderId = 10251
JOIN Product on Product.Id = OrderDetail.ProductId

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Order.Id, Customer.CompanyName, Employee.LastName
FROM Order
JOIN Customer, Employee on Order.CustomerId = Customer.Id, Order.EmployeeId = Employee.Id
