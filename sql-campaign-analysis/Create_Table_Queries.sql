CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE TABLE campaigns (
    campaign_id INT PRIMARY KEY,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE
);

CREATE TABLE emails_sent (
    email_id INT PRIMARY KEY,
    customer_id INT,
    campaign_id INT,
    sent_date DATE,
    opened BOOLEAN,
    clicked BOOLEAN,
    purchased BOOLEAN
);
