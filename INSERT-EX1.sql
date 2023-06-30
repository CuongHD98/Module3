USE exercise;
INSERT INTO KHACHHANG
VALUES(1,'NAME A','DC A','SDT A', '2000/1/1', 0, '2020/1/1'),
		(2,'NAME B','DC B','SDT B', '2000/1/1', 0, '2020/1/1'),
		(3,'NAME C','DC C','SDT C', '2000/1/1', 0, '2020/1/1'),
		(4,'NAME D','DC D','SDT D', '2000/1/1', 0, '2020/1/1'),
		(5,'NAME E','DC E','SDT E', '2000/1/1', 0, '2020/1/1');

INSERT INTO NHANVIEN 
VALUES(1,'NV A','2005/1/1','SDT NV A'),
		(2,'NV B','2005/1/1','SDT NV B'),
		(3,'NV C','2005/1/1','SDT NV C'),
		(4,'NV D','2005/1/1','SDT NV D'),
		(5,'NV E','2005/1/1','SDT NV E');

INSERT INTO SANPHAM 
VALUES(1,'SP A',100,'Thai Lan', 15000), 
       (2,'SP B',100,'Viet Nam', 20000),  
       (3,'SP C',100,'Lao', 10000),  
       (4,'SP D',100,'Trung Quoc', 8000),  
       (5,'SP E',100,'Nga', 21000);  
       
INSERT INTO HOADON 
VALUES(1,'2022/1/1',1,1,0),
		(2,'2022/1/1',2,2,0),
		(3,'2022/1/1',3,2,0),
		(4,'2022/1/1',2,1,0),
		(5,'2022/1/1',5,3,0);

INSERT INTO CTHD 
VALUES(1,2,10),(2,3,15),(1,1,20),(3,2,25),(3,5,30),(1,2,10);        
		        
       