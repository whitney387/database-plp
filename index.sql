CREATE DATABASE bookstoredb;

USE bookstoredb;

CREATE TABLE customer(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(255),
age INT
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    BookTitle VARCHAR(150) NOT NULL
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    OrderDate DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    BookID INT,
    Quantity INT DEFAULT 1,
    PRIMARY KEY (OrderID, BookID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


INSERT INTO customer (CustomerName, Age)
VALUES
  ('John Doe', 32),
  ('Jane Smith', 27),
  ('Emily Clark', 24);

INSERT INTO Books (BookTitle)
VALUES
  ('Atomic Habits'),
  ('The Alchemist'),
  ('Rich Dad Poor Dad'),
  ('Think Like a Monk'),
  ('The Subtle Art of Not Giving a F*ck');

INSERT INTO orders (orderID, customer_id, orderDate)
VALUES
  (1, 1, '2024-05-01'),  
  (2, 2, '2024-05-02'), 
  (3, 3, '2024-05-03');  

INSERT INTO OrderDetails (OrderID, BookID, Quantity)
VALUES
  (1, 1, 1), 
  (1, 2, 1),  
  (2, 3, 1),  
  (2, 4, 1),  
  (2, 2, 1), 
  (3, 5, 1); 