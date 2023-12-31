-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

-- CATEGORY TABLE
CREATE TABLE Category (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL
);

-- PRODUCT TABLE
CREATE TABLE Product (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INTEGER NOT NULL DEFAULT 10,
  category_id INTEGER,
  FOREIGN KEY (category_id) REFERENCES Category (id) ON DELETE CASCADE
);

-- TAG TABLE
CREATE TABLE Tag (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(30) NOT NULL
);

-- PRODUCTTAG TABLE
CREATE TABLE ProductTag (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  product_id INTEGER,
  tag_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES Product (id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id) REFERENCES Tag (id) ON DELETE CASCADE
);
