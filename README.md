# 📦 E-commerce Database Design Project

## 📚 About the Project
This project focuses on designing and implementing a complete database system for an e-commerce platform.  
The goal was to understand how real-world e-commerce applications manage data like products, brands, sizes, colors, and product attributes efficiently.

We designed an Entity-Relationship Diagram (ERD) to model the structure clearly, identified key relationships between tables, and created a working SQL schema ready for implementation.

---

## 🎯 Objective
- Build a well-structured relational database for an e-commerce store.
- Practice core database design skills like ERD creation, primary and foreign keys setup, and normalization.
- Understand how different product variations (like size and color) are managed in real-world systems.

---

## 🗺️ ERD (Entity-Relationship Diagram)
The ERD defines the structure of the database, showing tables, their attributes, and relationships.  
![ERD Diagram](ERD.png)

---

## 🗃️ Tables Created
| Table Name | Purpose |
|:-----------|:--------|
| `brand` | Stores different brand names. |
| `product_category` | Classifies products into categories like clothing, electronics. |
| `color` | Manages available color options. |
| `size_category` | Groups sizes into categories (e.g., clothing, shoes). |
| `size_option` | Lists specific size options (e.g., S, M, L, 42). |
| `product` | Stores general product details (name, brand, base price). |
| `product_item` | Represents purchasable product variations (size, color). |
| `product_variation` | Links a product to its possible variations. |
| `product_image` | Stores product images (URLs or file references). |
| `attribute_category` | Groups product attributes (e.g., physical, technical). |
| `attribute_type` | Defines types of product attributes (e.g., text, number, boolean). |
| `product_attribute` | Stores custom attributes like material, weight, battery life. |

---

## 🛠️ How to Use
1. Clone or download this repository.
2. Import the `ecommerce.sql` file into your MySQL server or database tool.
3. Explore the tables and sample data.
4. Review the ERD to understand the overall design.

---

## 🚀 Technologies Used
- MySQL
- Lucidchart (or any ERD drawing tool)
- GitHub for version control and documentation

---

## 💬 Author
- Project completed as part of a peer group assignment on database design.
- Special thanks to the group collaboration and contribution!

---

## 📌 Notes
- This project demonstrates strong skills in database normalization and relational modeling.
- The structure is designed to easily extend to full-stack development for real e-commerce platforms.
# Entity-Relationship-Diagram-Project
Creating entity relationship diagram database with SQL design
