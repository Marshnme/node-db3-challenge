-- Multi-Table Query Practice

-- display product name & category name for all products. Returns 77 records. 

select Product.ProductName, Category.CategoryName from Product
join Category on Product.CategoryId = Category.id;


--Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Returns 429 records

select [Order].Id as OrderId, Shipper.CompanyName from [Order] 

join Shipper on [Order].ShipVia = Shipper.Id where OrderDate < '2012-08-09' ;


--Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Returns 3 records.
select Product.ProductName, OrderDetail.Quantity from OrderDetail
join Product on OrderDetail.ProductId = Product.Id
where OrderDetail.orderId = '10251'
order by Product.ProductName;


--Display the OrderID, curstomer's Company Name and the employee's Last Name for every order. All columns should be labeled clearly. Returns 16,789 records.

select [Order].Id as OrderId, Customer.CompanyName as CompanyName, Employee.LastName as LastName ,[Order].* from [Order]
join Customer, Employee where [Order].CustomerId = Customer.Id and  [Order].EmployeeId = Employee.Id;
select * from [Order];
select * from [Customer];
select * from [Employee];

