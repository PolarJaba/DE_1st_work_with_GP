-- creating tables
CREATE TABLE sales2(
    order_id serial PRIMARY KEY,
    customer_id INT NOT NULL,
    good_id INT NOT NULL,
    good_amt INT NOT NULL,
    order_sum FLOAT NOT NULL,
    order_date DATE NOT NULL
)
DISTRIBUTED BY (order_id)
PARTITION BY RANGE (order_date)
(
    START ('2022-01-01 00:00:00') INCLUSIVE
    END ('2024-01-01 00:00:00') EXCLUSIVE
    EVERY (INTERVAL '1 month')
);

CREATE TABLE products2(
    good_id serial PRIMARY KEY,
    FOREIGN KEY (good_id) REFERENCES sales (good_id),
    good_name VARCHAR(150),
    good_price FLOAT NOT NULL
)
DISTRIBUTED BY (good_id);

-- enable optimizer
SET optimizer = ON;

-- query
SELECT p.good_name, SUM(p.good_price*s.good_amt)
FROM sales2 s
JOIN products2 p ON s.good_id = p.good_id 
WHERE s.good_id = 1001 AND s.order_date BETWEEN '2023-08-01' AND '2023-08-11'
GROUP BY p.good_name;  

