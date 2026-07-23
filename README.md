## Bank Transaction Analysis Using SQL

## Project Overview
This project analyzes a bank transaction dataset to answer real-world business questions around transaction, customer behaviour, channel usage, account performance, and account security. The goal is to show how SQL can help a bank make better decisions about its customers, operations, and security.

## Dataset

Source: Kaggle — Bank Transaction Dataset for Fraud Detection by Vala Khorasani
Type: Synthetic bank transaction data
Database: MySQL
Tool: MySQL Workbench

## SQL Skills Demonstrated: 
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- SUM
- COUNT 
- AVG
- CASE WHEN
- Subqueries
- CTEs
- Window Functions (ROW_NUMBER, PARTITION BY)

## Business Questions & Insights
Q1. Which merchants generate the highest total transaction value?


Insight: M026 generates the highest transaction value, nearly $2,000 ahead of the second-highest merchant, suggesting it is the bank's most valuable merchant partner.

Q2. Which transaction channels are most frequently used, and how much value does each generate?


Insight: Branch is the most frequently used channel with 868 transactions, but ATM generates the highest total transaction value at $256,331, indicating that customers tend to use ATMs for larger transactions while visiting branches more often for everyday banking needs.

Q3. Which locations generate the highest total transaction value?


Insight: Austin generates the highest total transaction value at $22,740, making it the highest-performing location in this dataset.

Q4. Which customer occupations contribute the most to the bank's transaction value?


Insight: Students contribute the highest total transaction value at $205,786, making them the highest-value customer group in this dataset, and this is an interesting finding because students are often considered to have lower income, yet they recorded the highest total transaction value in this dataset.

Q5. Which customer age groups contribute the most to the bank's transaction value?


Insight: The 18-25 age group generates the highest transaction value at $150,054, making them the most financially active age group,while the 36-45 group has the lowest value at $85,293. This is an interesting finding because they are often associated with peak earning years, yet they recorded the lowest transaction value in this dataset.

Q6. Which transaction channels have the fastest average processing times?


Insight: Branch transactions process the fastest at 116.68 seconds and also record the highest number of transactions, while ATM is the slowest at 122.09 seconds yet generates the highest total transaction value, suggesting that processing speed does not influence how much money customers move through each channel.

Q7. Which accounts recorded the highest average login attempts?


Insight: AC00169 recorded the highest average login attempts at 4.00, significantly above other accounts, indicating unusual login activity that may warrant further investigation.

Q8. Which accounts generate the highest total transaction value?


Insight: AC00460 generates the highest total transaction value at $5,570, making it the bank's most valuable account, nearly $900 ahead of the second-highest account AC00363.

Q9. Who are the top 3 highest-value accounts within each location?


Insight: The overall highest-value account does not always lead within individual locations. AC00460 ranks first globally but drops to second in Albuquerque, showing that location-level rankings are different from global rankings.

## Recommendations
- The bank should prioritise students and the 18-25 age group as they are the highest-spending segments.
- The bank should strengthen partnerships with the highest-performing merchants.
- AC00169 should be flagged for further investigation due to its high average login attempts of 4.0.
- Regional managers should use location account ranking rather than general ranking to identify and prioritise their most valuable customers within their areas.
- The bank should prioritise relationship management with its top accounts, particularly AC00460, which leads in overall transaction value.
- The bank should ensure ATM infrastructure is well maintained to support the high transaction value customers perform through it.


## How to use
- Download the dataset from Kaggle.

-Import the CSV into MySQL Workbench using the table data import wizard.

-Run the SQL script (bank_transaction_analysis.sql) to reproduce the analysis.


##  Author
Adewumi Lateefat Adelayo 
