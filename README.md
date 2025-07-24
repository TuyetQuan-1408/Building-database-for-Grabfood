# 🍔 GrabFood Database Project

This project is a comprehensive relational database system designed for a food delivery platform inspired by GrabFood. It models real-world operations such as customer orders, restaurant listings, delivery tracking, payments, reviews, and service requests using SQL Server. I led the project as team leader, working alongside four talented team members to collaboratively design, implement, and document the entire system: 
- Thuy Dung
- Quoc Trinh
- Thanh An
-  Minh Dang
---

## 📌 Project Overview

- **Database Engine:** SQL Server  
- **Diagrams Included:**
  - Entity-Relationship (E-R) Model
  - Entity-Relationship Diagram (ERD)
  - Relational Schema (3.0)
  - Normalized Tables in 3NF

This project was developed as part of a university-level Database Management course.

---

## 📊 E-R Model

![E-R Model](https://drive.google.com/uc?id=13pq7y7lYUWL2tqN5Ww9lWekWw15fxdCK)

The E-R Model illustrates the high-level conceptual view of the system:
- `Users` entity acts as a superclass for `Drivers`, `Customers`, and `Restaurants` (with `User_type` to distinguish).
- `Order`, `Menu_Items`, `Payments`, `Product_Review`, and `Reports` capture the transactional and feedback aspects.
- Relationships are clearly defined to ensure business rules such as “one customer can place many orders” or “one restaurant serves many menu items.”

---

## 🧩 Entity-Relationship Diagram (ERD)

![ERD](https://drive.google.com/uc?id=1Byo_KU9KKfHx3bo09JW2BleourUe4y48)

This detailed ERD includes:
- All primary and foreign keys,
- Full attribute listing for each table,
- Connections with clear cardinality and participation constraints,
- Special attention to join tables like `Order_Item` and hierarchical structure in `Users`.

---

## 🔗 Relational Model (3.0)

![Relational Model 3.0](https://drive.google.com/uc?id=1-LeuZxHOkqzdoOsQBsUloUn8Ve5EZnaX)

In this logical schema:
- Every relationship is mapped into a relation with foreign keys.
- Naming conventions are consistent with E-R and ERD.
- It bridges the conceptual model with physical database implementation.

---

## 📐 3NF Design

![3NF Diagram](https://drive.google.com/uc?id=1T2mcgv7V_MMs888ZxO7BzJawaAxpiU0p)

The schema is normalized to Third Normal Form (3NF):
- Eliminates transitive and partial dependencies,
- Enhances data integrity and reduces redundancy,
- Ensures that each table contains only data that relates to a single topic.

---

## ✅ Key Features

- ✅ Clear separation between `Users` and their roles (`Drivers`, `Restaurants`, `Customers`)
- ✅ Supports real-world operations like reviews, payments, customer service tickets, and reports
- ✅ Optimized for analytical reporting through well-structured schema

