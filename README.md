# Solana-Blockchain-Queries
A collection of SQL queries to analyze transactions, detect anomalies, and gain insights from the Solana blockchain.

---

## 📄 **Contents**
1. [Overview](#overview)
2. [Purpose of These Queries](#purpose-of-these-queries)
3. [Queries Included](#queries-included)
4. [How to Use](#how-to-use)
5. [Sample Visualizations](#sample-visualizations)
6. [License](#license)

---

## 🔍 **Overview**
The Solana blockchain is known for its high throughput and low transaction costs, making it a key player in the cryptocurrency ecosystem. This repository includes SQL queries to:
- Analyze transaction patterns
- Identify top active accounts
- Calculate staking and reward trends
- Examine dormant or inactive accounts
- Explore token movement and liquidity trends

These queries can be run on platforms such as [Dune Analytics](https://dune.com/) or [Google BigQuery](https://cloud.google.com/bigquery) to generate actionable insights.

---

## 🎯 **Purpose of These Queries**
The Solana blockchain offers unparalleled speed and low fees, making it a hub for legitimate transactions but also an attractive platform for suspicious activities. These SQL queries were developed to analyze Solana on-chain activity, with a specific focus on detecting **unusual patterns and behaviors** that could indicate:

1. **Potential Fraudulent Activities**:  
   - Identifying accounts performing unusually high-value or high-frequency transactions within a short timeframe.
   - Detecting patterns that could suggest wash trading, where users inflate the volume or price of an asset through repeated self-transactions.

2. **Whale Monitoring**:  
   - Tracking accounts holding large SOL or token balances to analyze their impact on market movements.
   - Detecting abrupt large token outflows, which might signal manipulative activities.

3. **Dormant Accounts Awakening**:  
   - Pinpointing inactive accounts that suddenly become active with significant transfers, a common red flag for compromised wallets or coordinated manipulations.

4. **Token Movement and Liquidity Analysis**:  
   - Tracking large token movements between liquidity pools or wallets to identify potential rug pulls or malicious liquidity draining.

5. **General Anomalies**:  
   - Flagging transactions with unusually high fees, as these can sometimes be associated with attempts to prioritize fraudulent transactions in blocks.

---
## 📚 **Tables Queried**
The SQL queries in this repository rely on the following tables from Solana's dataset, available on [Dune Analytics](https://dune.com/). Each table is linked to its respective Dune documentation page for further details.

| Table Name                     | Description                                                                                  |
|--------------------------------|----------------------------------------------------------------------------------------------|
| [solana.transactions](https://dune.com/docs/tables/solana/transactions/) | Contains all transaction data, including IDs, timestamps, and fees.                      |
| [solana.accounts](https://dune.com/docs/tables/solana/accounts/)       | Holds account details such as balances, creation timestamps, and activity records.       |
| [solana.tokens](https://dune.com/docs/tables/solana/tokens/)           | Tracks token transfers, including token IDs, amounts, and recipient wallet addresses.    |
| [solana.blocks](https://dune.com/docs/tables/solana/blocks/)           | Includes block metadata like timestamps and transaction counts.                          |

---

## 🗂 **Queries Included**
### **1. Transaction Analysis**
- **[Daily Transaction Volume](queries/transactions/daily_transaction_volume.sql):** Calculates daily transaction counts and fees.
- **[Top Active Accounts](queries/transactions/top_active_accounts.sql):** Identifies the accounts with the most transactions over a specific period.

### **2. Account Analysis**
- **[Whale Account Balances](queries/accounts/whale_balances.sql):** Lists accounts holding the largest SOL balances.
- **[Dormant Accounts](queries/accounts/dormant_accounts.sql):** Finds accounts with no recent activity.

### **3. Token Movement**
- **[Top Token Transfers](queries/tokens/top_token_transfers.sql):** Tracks the largest token transfers across the network.

---

## 🛠 **How to Use**
1. **Choose Your Platform:**  
   Use any blockchain analytics platform like:
   - [Dune Analytics](https://dune.com/)
   - [Google BigQuery](https://cloud.google.com/bigquery)
   - Custom SQL environments with Solana datasets

2. **Copy and Paste:**  
   Open the desired SQL file (e.g., `daily_transaction_volume.sql`) and paste it into your SQL console.

3. **Adjust Parameters:**  
   Many queries include placeholders for date ranges or account IDs. Adjust them as needed to match your analysis.

4. **Run the Query:**  
   Execute the query to fetch results. Use the output for further analysis or visualization.

---

## 📊 **Sample Visualizations**
Below are some example visualizations generated from these queries:

### **Daily Transaction Volume**
![Daily Transaction Volume](assets/charts/daily_volume_chart.png)

### **Top Active Accounts**
![Top Active Accounts](assets/charts/top_accounts_pie.png)

---

## 📜 **License**
This project is licensed under the [MIT License](LICENSE). Feel free to use and adapt the queries for your own projects!

---

## 💡 **Contributions**
Contributions are welcome! If you have ideas for additional queries or improvements, feel free to submit a pull request.

---

### Questions? 🤔  
Reach out to me via [GitHub Discussions](#) or open an issue in this repository.
