CREATE DATABASE NEWSHOE;
USE NEWSHOE;
CREATE TABLE NATIONS(
	NATION_ID INT PRIMARY KEY AUTO_INCREMENT,
    NATION_NAME VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE CITYS(
	CITY_ID INT PRIMARY KEY AUTO_INCREMENT,
    CITY_NAME VARCHAR(30) NOT NULL UNIQUE,
    NATION_ID INT,
    FOREIGN KEY(NATION_ID) REFERENCES NATIONS(NATION_ID)
);
CREATE TABLE DISTRICTS(
	DISTRICT_ID INT PRIMARY KEY AUTO_INCREMENT,
    DISTRICT_NAME VARCHAR(30) NOT NULL UNIQUE,
    CITY_ID INT,
    FOREIGN KEY(CITY_ID) REFERENCES CITYS(CITY_ID)
);
CREATE TABLE WARDS(
	WARD_ID INT PRIMARY KEY AUTO_INCREMENT,
    WARD_NAME VARCHAR(30) NOT NULL UNIQUE,
    DISTRICT_ID INT,
    FOREIGN KEY(DISTRICT_ID) REFERENCES DISTRICTS(DISTRICT_ID)
);
CREATE TABLE ADDRESS(
	ADDRESS_ID INT PRIMARY KEY AUTO_INCREMENT,
    ADDRESS_NAME VARCHAR(30) NOT NULL UNIQUE,
    WARD_ID INT,
    FOREIGN KEY(WARD_ID) REFERENCES WARDS(WARD_ID)
);
CREATE TABLE USERS(
	USER_ID INT PRIMARY KEY AUTO_INCREMENT,
    USERNAME VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(30) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL UNIQUE,
    FULL_NAME VARCHAR(30) NOT NULL,
    ADDRESS_ID INT,
    FOREIGN KEY(ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID),
    PHONE_NUMBER VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Categories(
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_NAME VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Brands(
	Brand_ID INT PRIMARY KEY AUTO_INCREMENT,
    Brand_NAME VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Images(
	image_id INT PRIMARY KEY AUTO_INCREMENT,
    image_url VARCHAR(40) NOT NULL UNIQUE
);
CREATE TABLE COLORS(
	COLOR_ID INT PRIMARY KEY AUTO_INCREMENT,
    COLOR_NAME VARCHAR(20) NOT NULL UNIQUE
);
CREATE TABLE Shoes(
	SHOE_ID INT PRIMARY KEY AUTO_INCREMENT,
    SHOE_NAME VARCHAR(20) NOT NULL UNIQUE,
    description LONGTEXT,
    category_id INT,
    brand_id INT,
    FOREIGN KEY(category_id) REFERENCES Categories(category_id),
    FOREIGN KEY(brand_id) REFERENCES Brands(brand_id)
);
CREATE TABLE SIZES(
	SIZE_ID INT PRIMARY KEY AUTO_INCREMENT,
    SIZE_NUMBER INT NOT NULL UNIQUE
);
CREATE TABLE SHOEDETAIL(
	SHOEDETAIL_ID INT PRIMARY KEY AUTO_INCREMENT,
	SHOE_ID INT,
    COLOR_ID INT,
    SIZE_ID INT,
    image_id INT,
    QUANTITY INT NOT NULL,
    FOREIGN KEY(SHOE_ID) REFERENCES Shoes(SHOE_ID),
    FOREIGN KEY(COLOR_ID) REFERENCES COLORS(COLOR_ID),
    FOREIGN KEY(SIZE_ID) REFERENCES SIZES(SIZE_ID),
    FOREIGN KEY(image_id) REFERENCES Images(image_id)
);
CREATE TABLE CartS(
	CART_ID INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES USERS(user_id)
);
CREATE TABLE CartItems(
	cart_item_id INT PRIMARY KEY AUTO_INCREMENT,
    cart_id INT,
    SHOEDETAIL_ID INT,
    FOREIGN KEY(cart_id) REFERENCES CartS(cart_id),
    FOREIGN KEY(SHOEDETAIL_ID) REFERENCES SHOEDETAIL(SHOEDETAIL_ID)
);
CREATE TABLE STATUS(
	STATUS_ID INT PRIMARY KEY AUTO_INCREMENT,
    STATUS_NAME VARCHAR(20) NOT NULL UNIQUE
);
CREATE TABLE ORDERS(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    order_date DATETIME,
    ADDRESS_ID INT,
    FOREIGN KEY(ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID),
    RECEIVER_NAME VARCHAR(30) NOT NULL,
    RECEIVER_PHONE VARCHAR(30) NOT NULL,
    total_amount FLOAT DEFAULT 0,
    STATUS_ID INT,
    FOREIGN KEY(STATUS_ID) REFERENCES STATUS(STATUS_ID)
);
CREATE TABLE OrderItems(
	order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    SHOEDETAIL_ID INT,
    quantity_BUY INT CHECK(QUANTITY_BUY >= 1),
    FOREIGN KEY(order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY(SHOEDETAIL_ID) REFERENCES SHOEDETAIL(SHOEDETAIL_ID)
);

