CREATE DATABASE bamazon_db;
USE bamazon_db;

-- Create the table for bamazon.

CREATE TABLE departments
(
id INT(11) AUTO_INCREMENT NOT NULL, 
department_name VARCHAR(30) NOT NULL,
over_head_costs DECIMAL(8,2),
PRIMARY KEY (id)
);

CREATE TABLE products
(
id INT(11) AUTO_INCREMENT NOT NULL, 
product_name VARCHAR(30) NOT NULL,
department_id INT(11) NOT NULL,
price DECIMAL(8,2),
stock_quantity INT(11),
PRIMARY KEY (id),
KEY department_id (department_id),
FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE sales
(
id INT(11) AUTO_INCREMENT NOT NULL,
product_id INT(11) NOT NULL, 
quantity_purchased INT(11) NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
KEY product_id (product_id),
FOREIGN KEY(product_id) REFERENCES products(id)
);