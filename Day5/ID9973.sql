USE classicmodels;
DELIMITER //

CREATE PROCEDURE getCusById(IN cusNum INT(11))

BEGIN

  SELECT * FROM customers WHERE customerNumber = cusNum;

END //

DELIMITER ;
call getCusById(175);

DELIMITER //
DROP PROCEDURE IF EXISTS `GetCustomersCountByCity`//
CREATE PROCEDURE GetCustomersCountByCity(IN  in_city VARCHAR(50),OUT total INT)

BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END//

DELIMITER ;
CALL GetCustomersCountByCity('NYC',@total);

SELECT @total;

DELIMITER //
DROP PROCEDURE IF EXISTS `SetCounter`//
CREATE PROCEDURE SetCounter(INOUT counter INT,IN inc INT)

BEGIN
    SET counter = counter + inc;
END//

DELIMITER ;
SET @counter = 1;
CALL SetCounter(@counter,1); -- 2
SELECT @counter;

CALL SetCounter(@counter,1); -- 3
SELECT @counter;

CALL SetCounter(@counter,5); -- 8

SELECT @counter; -- 8

