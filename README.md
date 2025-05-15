# Bookstore Database Project

##  Description

This project is a simple relational database for a bookstore. It is designed to manage customer information, book inventory, and customer orders. It demonstrates how to structure a normalized database with proper use of primary and foreign keys.

---

## Technologies Used

- MySQL
- SQL
- ERD (Entity Relationship Diagram)

---

##  Project Structure

- `bookstore.sql`: Full SQL script with all table creation and sample data insertion
- `README.md`: Project description and instructions (this file)
- `erd.png`: Visual representation of the database schema and table relationships

---

##  How to Run

1. Open MySQL Workbench or any other SQL interface.
2. Run the SQL script file `bookstore.sql`.
3. The following tables will be created and populated:
   - `customer`
   - `books`
   - `orders`
   - `order_details`

---

## 🧱 Database Design

The database consists of four main entities:

- **Customer**: Stores customer information including name and age
- **Books**: Holds details about books available for sale
- **Orders**: Tracks individual orders made by customers
- **Order_Details**: Junction table to track which books were ordered and in what quantity

---

## 🗺️ ERD Diagram


The ERD shows how the tables are related through primary and foreign keys.

---

## 👤 Author

Whitney Mmaitsi  
Project: Bookstore Database  
University Coursework – SQL Practice
