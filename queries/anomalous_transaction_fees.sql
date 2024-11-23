-- Query: Anomalous Transaction Fees
-- Description: Detects transactions with unusually high fees on the Solana blockchain.
-- Instructions: Adjust the anomaly threshold (e.g., number of standard deviations).

SELECT
    transaction_id, -- Unique transaction identifier
    fee, -- Fee paid for this transaction
    block_timestamp -- The date and time of the transaction
FROM
    solana.transactions
WHERE
    fee > (
        SELECT AVG(fee) + 3 * STDDEV(fee) -- Defines "anomalous" as 3 standard deviations above the mean
        FROM solana.transactions
    )
ORDER BY
    fee DESC; -- Orders by the highest fees
