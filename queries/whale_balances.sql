-- Query: Whale Account Balances
-- Description: Lists accounts holding the largest SOL balances.
-- Instructions: Adjust the LIMIT value to include more or fewer accounts.

SELECT
    account_id, -- Unique identifier for the account
    balance -- Current SOL balance of the account
FROM
    solana.accounts
ORDER BY
    balance DESC -- Sorts accounts by the largest balance
LIMIT 10; -- Adjust the limit as needed
