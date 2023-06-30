CREATE DATABASE demo;
USE demo;
CREATE TABLE Products(
	id INT NOT NULL,
    productCode INT NOT NULL,
    productName VARCHAR(255) NOT NULL,
    productPrice FLOAT NOT NULL,
    productAmount INT DEFAULT 0,
    productDescription VARCHAR(255),
    productStatus BIT,
    PRIMARY KEY(id)
);
DROP TABLE Products;

INSERT INTO Products 
VALUES(1,1,'Name A',1,1,'Description A',1),
(2,2,'Name B',2,2,'Description B',0),
(3,3,'Name C',3,3,'Description C',1),
(4,4,'Name D',4,4,'Description D',0),
(5,5,'Name E',5,5,'Description E',1);
SELECT * FROM Products;
ALTER TABLE Products ADD UNIQUE index_productCode(productCode);
EXPLAIN SELECT * FROM Products WHERE productCode = 2;
SELECT * FROM Products WHERE productCode = 2;
ALTER TABLE Products DROP INDEX index_productCode;

ALTER TABLE Products ADD INDEX index_product(productName, productCode);
SELECT * FROM Products WHERE productName = 'Name B' AND productCode = 2;

CREATE VIEW product_views AS
SELECT productCode, productName,productPrice,productStatus 
FROM Products;
SELECT * FROM product_views;
UPDATE product_views
SET productPrice = 35
WHERE productName = 'Name B';
SELECT * FROM product_views;
DROP VIEW product_views;

-- b5
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllProducts`//
CREATE PROCEDURE findAllProducts()

BEGIN
  SELECT * FROM Products;
END //

DELIMITER ;
CALL findAllProducts();

DELIMITER //
DROP PROCEDURE IF EXISTS `addProducts`//
CREATE PROCEDURE addProducts(IN id INT, IN productCode INT,IN productName VARCHAR(255),IN productPrice FLOAT,
IN productAmount INT,IN productDescription VARCHAR(255),IN productStatus BIT)

BEGIN
  INSERT INTO Products 
  VALUES(id,productCode,productName,productPrice,productAmount,productDescription,productStatus);
END //
DELIMITER ;
CALL addProducts(6,6,'Name F', 6,6,'Description F',0);
CALL findAllProducts();

DELIMITER //
DROP PROCEDURE IF EXISTS `editProducts`//
CREATE PROCEDURE editProducts(IN idIn INT, IN productCode INT,IN productName VARCHAR(255),IN productPrice FLOAT,
IN productAmount INT,IN productDescription VARCHAR(255),IN productStatus BIT)

BEGIN
  UPDATE Products
  SET productCode = productCode, productName = productName, productPrice = productPrice,
	productAmount = productAmount, productDescription = productDescription, productStatus = productStatus
  WHERE id = idIn;  
END //
DELIMITER ;
SET SQL_SAFE_UPDATES = 0;
CALL editProducts(2,10,'abcd',10,10,'Des ABCD', 1);
CALL findAllProducts();

DELIMITER //
DROP PROCEDURE IF EXISTS `deleteProducts`//
CREATE PROCEDURE deleteProducts(IN idIn INT)

BEGIN
  DELETE FROM Products
  WHERE id = idIn;
END //
DELIMITER ;
CALL deleteProducts(3);
CALL findAllProducts();





