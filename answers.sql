--CREATE A TABLE FOR ORDERS
SELECT 
  OrderID,
  CustomerName,
  TRIM(product) AS Product
FROM (
  SELECT 
    OrderID,
    CustomerName,
    string_to_array(Products, ',') AS ProductArray
  FROM ProductDetail
) AS sub,
unnest(ProductArray) AS product;


--ANSWER TO QUESTION 2----
---CREATE A TABLE FOR ORDERITEMS AND SELECT AS BELOW
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;
