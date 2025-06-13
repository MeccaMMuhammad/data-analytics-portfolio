SELECT * FROM customers LIMIT 5;
SELECT * FROM campaigns LIMIT 5;
SELECT * FROM emails_sent LIMIT 5;
SELECT 
  c.campaign_name,
  COUNT(*) AS total_emails_sent
FROM emails_sent es
JOIN campaigns c ON es.campaign_id = c.campaign_id
GROUP BY c.campaign_name;
SELECT 
  c.campaign_name,
  ROUND(100.0 * SUM(CASE WHEN es.opened THEN 1 ELSE 0 END) / COUNT(*), 2) AS open_rate_pct
FROM emails_sent es
JOIN campaigns c ON es.campaign_id = c.campaign_id
GROUP BY c.campaign_name;
SELECT 
  c.campaign_name,
  ROUND(100.0 * SUM(CASE WHEN es.clicked THEN 1 ELSE 0 END) / COUNT(*), 2) AS click_rate_pct,
  ROUND(100.0 * SUM(CASE WHEN es.purchased THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM emails_sent es
JOIN campaigns c ON es.campaign_id = c.campaign_id
GROUP BY c.campaign_name;
WITH engagement_summary AS (
  SELECT 
    customer_id,
    SUM(CASE WHEN opened THEN 1 ELSE 0 END) AS opens,
    SUM(CASE WHEN clicked THEN 1 ELSE 0 END) AS clicks,
    SUM(CASE WHEN purchased THEN 1 ELSE 0 END) AS purchases
  FROM emails_sent
  GROUP BY customer_id
)
SELECT 
  customer_id,
  CASE 
    WHEN purchases > 0 THEN 'Buyer'
    WHEN clicks > 0 THEN 'Engaged'
    WHEN opens > 0 THEN 'Opened Only'
    ELSE 'Unengaged'
  END AS engagement_segment
FROM engagement_summary
ORDER BY customer_id;