-- Query: Top Token Transfers
-- Description: Tracks the largest token transfers on the Solana blockchain.
-- Instructions: Adjust the threshold for "large transfers" and the LIMIT value as needed.

SELECT
    token_id, -- Identifier for the token being transferred
    amount, -- Amount of tokens transferred
    from_address, -- Sender's wallet address
    to_address, -- Recipient's wallet address
    block_timestamp -- The date and time of the transfer
FROM
    solana.tokens
WHERE
    amount > 10000 -- Adjust this threshold to capture transfers of interest (e.g., 1000, 50000)
ORDER BY
    amount DESC -- Orders by the largest transfer amounts
LIMIT 10; -- Adjust the limit as needed
