-- Query: Top Active Accounts
-- Description: Identifies accounts with the highest transaction counts on the Solana blockchain.
-- Instructions: Adjust the LIMIT value to show more or fewer accounts.

SELECT
    signer AS account_address, -- The account address that signed the transaction
    COUNT(transaction_id) AS transaction_count -- Counts the number of transactions per account
FROM
    solana.transactions
GROUP BY
    signer
ORDER BY
    transaction_count DESC -- Sorts accounts by the highest transaction count
LIMIT 10; -- Adjust the limit as needed
