🟡 SQL Marketing Campaign Analysis

This SQL project analyzes customer engagement across two email marketing campaigns—“Winter Sale” and “Spring Launch.” The goal is to evaluate campaign performance, calculate open/click/conversion rates, and segment customers by behavior using SQL.

📊 Objective

Use SQL to answer:
- How many emails were sent per campaign?
- What were the open, click-through, and conversion rates?
- How engaged were customers based on their actions?

 📁 Data Tables

| Table         | Description                          |
|---------------|--------------------------------------|
| `customers`   | Customer ID, name, and email address |
| `campaigns`   | Campaign ID, name, and date range    |
| `emails_sent` | Email send activity and engagement   |

🧠 Key Insights

- 📬 **Winter Sale** had higher email volume but a slightly lower conversion rate.
- 📈 **Spring Launch** showed a better conversion rate overall.
- 🧑‍💻 Only 30% of customers made a purchase across both campaigns.
- 🟡 Engagement breakdown:
  - 3 Buyers
  - 4 Engaged (clicked but didn’t purchase)
  - 6 Opened only
  - 7 Unengaged

 🧪 SQL Highlights

- `CASE WHEN` logic to calculate open, click, and conversion rates
- `CTE` used to summarize and segment customer engagement
- Joins across all 3 tables to bring the data together

📁 Files

| File Name                      | Description                                                |
|-------------------------------|------------------------------------------------------------|
| `sql_customers.csv`           | Raw data of customer IDs, names, and emails               |
| `sql_campaigns.csv`           | Campaign info with names and date ranges                  |
| `sql_emails_sent.csv`         | Raw dataset of email activity (opened, clicked, purchased)|
| `total_emails_sent_output.csv`| Query result: Total emails sent per campaign              |
| `open_rate_output.csv`        | Query result: Email open rates per campaign               |
| `click_conversion_rate_output.csv` | Query result: Click-through and conversion rates      |
| `engagement_segments.csv`     | Segmented customer behavior based on engagement           |
| `SQL_queries.sql`             | All analysis queries used in this project                 |
| `Create_Table_Queries.sql`    | SQL script to create all necessary tables                 |
| `README.md`                   | Project overview and documentation   

 🧰 Tools Used

- PostgreSQL
- pgAdmin
- SQL (SELECT, JOIN, CTE, CASE WHEN, Aggregations)
