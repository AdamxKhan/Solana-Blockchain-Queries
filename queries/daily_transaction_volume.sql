-- Query: Daily Transaction Volume
-- Description: Calculates the number of transactions and total fees per day on the Solana blockchain.
-- Instructions: Adjust the date range in the WHERE clause to match your analysis period.

SELECT
    DATE(block_timestamp) AS transaction_date,
    COUNT(transaction_id) AS transaction_count,
    SUM(fee) AS total_fees
FROM
    solana.transactions
WHERE
    block_timestamp BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
    DATE(block_timestamp)
ORDER BY
    transaction_date;
