USE QuanLyBanHang;
INSERT INTO Customer(cName,cAge)
VALUES ("Minh Quan", 18),
		("Ngoc Oanh", 20),
		("Hong Ha", 50);
INSERT INTO Orders(cID,oDate,oTotalPrice)
VALUES (1,"2006-03-21", NULL),
		(2,"2006-03-23", NULL),
		(1,"2006-03-16", NULL);        
INSERT INTO Product(pName ,pPrice)
VALUES ("May Giat", 3),
		("Tu Lanh", 5),
		("Dieu Hoa", 7),
        ("Quat", 1),
        ("Bep Dien", 2);
INSERT INTO OrderDetail
VALUES (1,1,3),
		(1,3,7),
        (1,4,2),
        (2,1,1),
        (3,1,8),
        (2,5,4),
        (2,3,3);
        
SELECT oID, oDate, oTotalPrice AS oPrice FROM Orders;  
 
SELECT c.cID, c.cName, p.pID, p.pName
FROM Customer c
JOIN Orders o ON c.cID = o.cID
JOIN OrderDetail od ON o.oID = od.oID
JOIN Product p ON od.pID = p.pID;

SELECT c.cName
FROM Customer c
LEFT JOIN Orders o ON c.cID = o.cID
LEFT JOIN OrderDetail od ON o.oID = od.oID
WHERE od.odQTY IS NULL;

SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS oPrice
FROM Orders o
JOIN OrderDetail od ON o.oID = od.oID
JOIN Product p ON od.pID = p.pID
GROUP BY o.oID, o.oDate;