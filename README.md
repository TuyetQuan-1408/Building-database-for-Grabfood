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

> 📎 ERD Diagram:  
> ![ERD Diagram]([https://drive.google.com/uc?export=view&id=1kRrmrJ3bEca9OI_UhAvfXCyPLRL-Qst4](https://drive.google.com/uc?export=view&id=13pq7y7lYUWL2tqN5Ww9lWekWw15fxdCK))

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


