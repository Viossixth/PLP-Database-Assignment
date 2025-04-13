----NO. 1---
CREATE DATABASE bookstore;
CREATE table Book_list(
ISBN int NOT NULL PRIMARY KEY auto_increment,
SKU INT NOT NULL,
BookName VARCHAR(255) NOT NULL,
author_first_name varchar(255) NOT NULL,
author_last_name varchar(255) NOT NULL,
book_language varchar(255),
Publisher varchar(255),
Country varchar(255)
)

---NO. 2---
USE bookstore;
CREATE table book_authors(
ISBN int,
SKU INT,
PRIMARY KEY (ISBN,SKU),
FOREIGN KEY (ISBN) REFERENCES Book_list(ISBN),
FOREIGN KEY (SKU) REFERENCES authors(SKU)
)

---NO. 3---
USE bookstore;
CREATE table authors(
SKU INT NOT NULL PRIMARY KEY auto_increment,
author_name varchar(255) NOT NULL
)

---NO. 4---
USE bookstore;
CREATE table Book_Language(
book_Language varchar(255) NOT NULL PRIMARY KEY auto
)

---NO. 5---
USE bookstore;
CREATE table Publisher(
Publisher varchar(255) NOT NULL PRIMARY KEY,
Country varchar(255)
)
---NO.6---
create table customer (
customer_id int primary key auto_increment,
first_name varchar(300),
last_name varchar(300),
email_address varchar(300),
telephone varchar(20)
);
---NO.7---
create table customer_address(
customer_id int primary key,
foreign key (customer_id) references customer (customer_id),
postal_address int,
postal_code int,
city varchar(100),
country_name varchar(200),
current_status varchar(200)
);

---NO.8---
create table address_status (
address_id int primary key auto_increment,
current_status varchar(200)
);

----NO.9--
create table address (
address_id int primary key,
postal_address int,
postal_code int,
city varchar(100),
country_name varchar(200),
current_status varchar(200)
);

---NO.10---
create table country (
country_name varchar(200) primary key
);

---NO.11--
create table cust_order (
order_id int primary key auto_increment,
customer_id int,
foreign key (customer_id) references customer (customer_id),
order_date datetime,
status_id int,
shipping_method_id int
);

---NO.12--
create table order_line (
order_line_id int primary key auto_increment,
order_id int,
foreign key (order_id) references cust_order (order_id),
book_id int,
quantity int
);

---NO.13--
create table shipping_method (
shipping_method_id int primary key auto_increment,
mode varchar(20)
);

---NO,14---
create table order_history (
history_id int primary key auto_increment,
order_id int,
foreign key (order_id) references cust_order (order_id),
status_id int
);

---NO.15--
create table order_status (
status_id int primary key auto_increment,
status_name varchar(200)

);