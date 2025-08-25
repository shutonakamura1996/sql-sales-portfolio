# SQL Sales Portfolio — Northwind-Lite

This project is a **mini SQL portfolio** inspired by the classic Northwind sales database.  
It demonstrates my ability to design a relational schema, insert sample data, and run business-focused SQL queries to extract insights.

---

## 📂 Project Structure
sql-sales-portfolio/
├── sql/
│   ├── schema.sql         # Table definitions (customers, orders, products, etc.)
│   ├── sample_data.sql    # Sample data inserts
│   └── queries.sql        # Business analysis queries
└── README.md

---

## 🎯 Business Questions Answered
- What is the **total revenue**?
- What is the **average order value (AOV)**?
- How does **monthly revenue** trend over time?
- Who are the **top 5 customers by revenue**?
- Which are the **best-selling products**?
- Which **categories generate the most revenue**?

---

## 🛠️ Skills Demonstrated
- **Database design**: schema, keys, and indexes  
- **Joins**: combining orders, customers, products, and categories  
- **Aggregations**: SUM, AVG, GROUP BY for KPIs  
- **CTEs**: to simplify complex queries  
- **Window functions**: ranking, rolling sums, % of total (extendable)  
- **Data storytelling**: answering practical business questions with SQL  

---

## ▶️ How to Run (SQLite)
1. Install **DB Browser for SQLite** (GUI) or SQLite CLI.  
2. Create a database `northwind_lite.db`.  
3. Run scripts in order:
   - `sql/schema.sql`
   - `sql/sample_data.sql`
   - `sql/queries.sql` (execute queries and review results)

---

## 📊 Example Output (screenshots to add)
- Monthly revenue trend  
- Top customers by revenue  
- Category performance  

![Monthly Revenue Example](screenshot1.png)

---

## 🚀 Next Steps
- Add new vs repeat customer analysis and discount impact  
- Export clean tables and connect to **Tableau/Power BI** for a dashboard  
- Share highlights on LinkedIn and link back to this repo  

---

## 📜 License
MIT — free to use for learning and demonstration purposes.
