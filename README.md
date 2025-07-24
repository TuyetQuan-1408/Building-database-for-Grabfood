#  GrabFood Relational Database Project (SQL Server)

This academic project demonstrates the design and implementation of a relational database system for GrabFood — a food delivery service. The goal is to simulate real-world business logic using normalized database modeling and business-driven SQL queries.

---

## 🎯 Objectives

- Build a scalable and normalized relational schema that models GrabFood’s delivery, ordering, and payment workflows.
- Support key business queries including revenue analytics, delivery performance, and customer behavior insights.

---

## 🛠️ Tech Stack

- **RDBMS**: Microsoft SQL Server
- **Tool**: SQL Server Management Studio (SSMS)
- **Query Language**: T-SQL (Transact-SQL)
- **Modeling**: ERD (Entity-Relationship Diagram), schema design

---

##  Database Schema

The system includes the following entities:

- `Customers`
- `Restaurants`
- `Dishes`
- `Orders`
- `OrderDetails`
- `Payments`
- `Deliveries`

The schema follows 3NF normalization and includes all necessary primary and foreign key constraints.

This project features a well-structured relational database model for an online food delivery system, inspired by GrabFood. The E-R diagram illustrates how core entities interact to support customer ordering, restaurant management, driver logistics, and administrative operations.

🧩 Key Components:
Users: A central table with user credentials and type classification (Customer, Restaurant, or Driver), allowing polymorphic behavior across the system.

Orders & Items:
Customers can place multiple orders containing multiple items. The Order_Item bridge table captures quantities and pricing for each item in an order.

Restaurants & Menus:
Each restaurant manages its Menu_Items, which are categorized and linked to specific Cuisine Types, supporting rich menu filtering and display.

Payments & Vouchers:
Orders are tied to Payments and can apply Vouchers for discounts based on criteria like minimum order value and max discount caps.

Reviews:
Customers can leave Product Reviews on their orders, providing feedback tied directly to order IDs.

Support & Admin:
The schema includes support for platform-generated Reports, Customer Service tickets, and Employee records for internal operations.


![E-R model](https://drive.google.com/uc?export=view&id=13pq7y7lYUWL2tqN5Ww9lWekWw15fxdCK)


---

## 📊 Example Business Queries

- 🥡 Total revenue by restaurant and time period  
- 🍽️ Most frequently ordered dishes  
- ⏱️ Number of late deliveries per driver  
- 💳 Top payment methods by region  
- 📍 Average delivery distance by city

> ✅ Find these in: `/queries/sample_queries.sql`

---

## 📁 Project Structure


