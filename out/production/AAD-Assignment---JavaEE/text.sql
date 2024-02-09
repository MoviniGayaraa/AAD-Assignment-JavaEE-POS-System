DROP DATABASE IF EXISTS GayaStore;
CREATE DATABASE IF NOT EXISTS GayaStore;
SHOW DATABASES;
USE GayaStore;

DROP TABLE IF EXISTS Customer;
CREATE TABLE IF NOT EXISTS Customer
(
    id      VARCHAR(8),
    name    VARCHAR(30),
    address VARCHAR(30),
    salary  double,
    CONSTRAINT PRIMARY KEY (id)
    );
SHOW TABLES;
DESCRIBE Customer;

DROP TABLE IF EXISTS Item;
CREATE TABLE IF NOT EXISTS Item
(
    code        VARCHAR(8),
    description VARCHAR(50),
    qty         INT(5)        DEFAULT 0,
    unitPrice   DECIMAL(10, 2) DEFAULT 0.00,
    CONSTRAINT PRIMARY KEY (code)
    );
SHOW TABLES;
DESCRIBE Item;

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE IF NOT EXISTS `Orders`
(
    orderId   VARCHAR(8),
    orderDate DATE,
    cusId     VARCHAR(8),
    CONSTRAINT PRIMARY KEY (orderId, cusId),
    CONSTRAINT FOREIGN KEY (cusId) REFERENCES Customer (id) ON DELETE CASCADE ON UPDATE CASCADE
    );
SHOW TABLES;
DESCRIBE `Orders`;

DROP TABLE IF EXISTS `OrderDetail`;
CREATE TABLE IF NOT EXISTS `OrderDetail`
(
    orderId   VARCHAR(8),
    itemCode  VARCHAR(8),
    qty       INT(5)        DEFAULT 0,
    total DECIMAL(10, 2) DEFAULT 0.00,

    CONSTRAINT PRIMARY KEY (orderId, itemCode),
    CONSTRAINT FOREIGN KEY (orderId) REFERENCES `Orders` (orderId) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (itemCode) REFERENCES Item (code) ON DELETE CASCADE ON UPDATE CASCADE

    );
SHOW TABLES;
DESCRIBE `OrderDetail`;

INSERT INTO Customer
VALUES  ('C00-001', 'gaya', 'Galle', 40000),
        ('C00-002', 'kavidi', 'Galle', 60000),
        ('C00-003', 'pamodya', 'Colombo', 50000),

SELECT *
FROM Customer;

INSERT INTO Item
VALUES ('I00-001', 'Sugar', 50, 100.00),
       ('I00-002', 'Rice', 40, 200.00),
       ('I00-003', 'Coclate', 10, 100.00),
       ('I00-004', 'Potato', 20, 300.00),
       ('I00-005', 'Buisket', 30, 40.00),
       ('I00-006', 'Onion', 10, 150.00),
       ('I00-007', 'Red Rice', 20, 160.00),



SELECT *
FROM Item;

use GayaStore;
SELECT orderId FROM `Orders` ORDER BY orderId DESC LIMIT 1;
SELECT COUNT(id) FROM Customer