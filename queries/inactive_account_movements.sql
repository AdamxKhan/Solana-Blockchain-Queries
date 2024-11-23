/* Identify accounts that were inactive for over 180 days and have recent activity in the last 7 days. */
WITH account_activity AS (
  SELECT
    signer AS account_address,
    MIN(block_time) AS first_activity,
    MAX(block_time) AS last_activity,
    COUNT(*) AS transaction_count
  FROM solana.transactions
  GROUP BY
    signer
)
SELECT
  account_address,
  first_activity,
  last_activity,
  transaction_count
FROM account_activity
WHERE
  last_activity > CURRENT_TIMESTAMP - INTERVAL '7' day
  AND first_activity < CURRENT_TIMESTAMP - INTERVAL '180' day
  AND last_activity - first_activity > INTERVAL '180' day
ORDER BY
  last_activity DESC
