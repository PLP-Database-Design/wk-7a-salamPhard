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

