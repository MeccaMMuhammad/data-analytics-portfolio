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

📂 Files

- `sql_customers.csv`
- `sql_campaigns.csv`
- `sql_emails_sent.csv`
- `SQL_queries.sql`
- `campaign_summary.csv`
- `engagement_segments.csv`

 🧰 Tools Used

- PostgreSQL
- pgAdmin
- SQL (SELECT, JOIN, CTE, CASE WHEN, Aggregations)
