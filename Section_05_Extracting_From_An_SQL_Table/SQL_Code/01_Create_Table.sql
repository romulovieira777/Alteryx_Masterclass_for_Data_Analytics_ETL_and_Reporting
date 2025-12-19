-- SQL code to create the SALES table
CREATE TABLE SALES (
    Order_Line INT     PRIMARY KEY
  , Order_ID   VARCHAR
  , Order_date DATE
  , Ship_Date  DATE
  , Ship_Mode  VARCHAR
  , Customer_ID VARCHAR
  , Product_ID  VARCHAR
  , Sales       NUMERIC
  , Quantity    INT
  , Discount    NUMERIC
  , Profit      NUMERIC
);

-- SQL code to import data from CSV file into the SALES table
COPY SALES FROM '...\SalesforSQL.csv'
DELIMITER ','
CSV HEADER;

-- SQL code to verify data import by selecting the first 10 rows from the SALES table
SELECT
    *
FROM
    SALES
LIMIT 10;