# 🏪 Retail Management System — Oracle Forms 10g

A fully functional retail management system built on Oracle Database 10g and Oracle Forms Builder. Covers the complete database lifecycle — from ERD design to UI forms, triggers, sequences, reports, and data entry.

---

## 📐 Entity Relationship Diagram (ERD)

![ERD](erd/ERD.png)

---

## 🗃️ Database Design

### Tables & Relationships

| Table | Description |
|-------|-------------|
| `Categories` | Product categories |
| `Products` | Products linked to categories via FK |
| `Customers` | Customer records with registration date |
| `Employees` | Staff records with roles and salaries |
| `Orders` | Order headers linked to customer & employee |
| `Order_Items` | Order line items linked to orders & products |
| `Payments` | Payment records linked to orders |

### Auto-Increment Sequences

| Sequence | Table |
|----------|-------|
| `cat_seq` | Categories |
| `cust_seq` | Customers |
| `emp_seq` | Employees |
| `prod_seq` | Products |
| `ord_seq` | Orders |
| `item_seq` | Order_Items |
| `pay_seq` | Payments |

---

## ⚡ Database Triggers

### `Order_Items` — BEFORE INSERT OR UPDATE
Automatically calculates `Total_Price = Quantity × Unit_Price` before any insert or update on the Order_Items table — no manual input required from the user.

---

## 🖥️ Oracle Forms Modules

| Form | Description |
|------|-------------|
| `MAIN_MENU` | Navigation block — entry point to all modules |
| `categories_form` | Full CRUD + 4 navigation buttons |
| `customers_form` | Full CRUD + 4 navigation buttons |
| `employees_form` | Full CRUD + 4 navigation buttons |
| `product_form` | Full CRUD + static list items + category LOV |
| `ORDERS` | Master-Detail form (Order header + Order Items) |

### Key Features Implemented
- **Master-Detail Form:** Orders ↔ Order_Items with automatic linking
- **Dynamic LOV (List of Values):** Product selection built on Record Group — auto-updates when new products are added
- **Static List Items:** Order type and status dropdowns
- **Application Triggers:** `WHEN-BUTTON-PRESSED` for navigation and report calling
- **4-Button Navigation:** First · Previous · Next · Last record per form

---

## 📊 Reports

- Static sales report built in Oracle Reports Builder 10g
- Called directly from the Orders form via `Web.Show_Document`
- Rendered as HTML through OC4J Direct Servlet (`http://127.0.0.1:8889/reports/rwservlet`)

---

## 🛠️ Tech Stack

![Oracle](https://img.shields.io/badge/Oracle-Database%2010g-red)
![Oracle Forms](https://img.shields.io/badge/Oracle-Forms%20Builder%2010g-orange)
![Oracle Reports](https://img.shields.io/badge/Oracle-Reports%2010g-yellow)
![SQL](https://img.shields.io/badge/SQL-PL%2FSQL-blue)

---

## 📁 Project Structure

```
oracle-retail-management-system/
│
├── sql/
│   └── tables.sql              
├── forms/
│   ├── MAIN_MENU.fmb
│   ├── categories_form.fmb
│   ├── customers_form.fmb
│   ├── employees_form.fmb
│   ├── product_form.fmb
│   └── ORDERS.fmb
├── reports/
│   └── sales_report.rep
├── erd/
│   └── erd.png
└── README.md
```

---

## 🚀 How to Run

> Requires Oracle Database 10g + Oracle Forms & Reports Builder 10g

```sql
-- 1. Run the SQL script to create tables and sequences
@sql/tables.sql

-- 2. Open Oracle Forms Builder
-- 3. Connect to your Oracle DB
-- 4. Open MAIN_MENU.fmb and compile (Ctrl+T)
-- 5. Run the form
```

---

## 👤 Author

**Ahmed Helmy** — AI Engineering Student
[GitHub](https://github.com/v7med7elmy-ai)

