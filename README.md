#  Healthcare Patient Records Analysis Using SQL

## Project Overview

This project analyzes a healthcare patient records dataset using SQL to answer real-world business questions around patient admissions, medical conditions, billing amounts,doctor workload, insurance coverage and medication usage.

The objective was to show how SQL can be used to transform raw healthcare data into meaningful insights that support healthcare decision-making.



##  Dataset

- Source: Kaggle – Healthcare Dataset by Prasad Patil
- Type:Synthetic data
- Database: MySQL
- Tool: MySQL Workbench


##  SQL Skills Demonstrated

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- AVG()
- Subqueries
- Common Table Expressions (CTEs)

 
## Business Questions & Insights
Q1. What are the most common medical conditions among patients?
Insight: Arthritis was the most common medical condition with (6,056) patients,followed by Hypertension with (5,997), Cancer with (5,941), Diabetes with (5,930) Asthma with (5,921), Obesity with (5,919).This shows that the hospital operates as a general facility with no single condition dominating. 

Q2. Which hospitals have admitted the highest number of patients?
Insight: Johnson PLC and Ltd Smith both recorded the highest patient admissions at 29,but the margin across all hospitals is minimal, indicating that patient admissions are evenly distributed with no single hospital standing out from the rest.

Q3. Which doctors have treated the highest number of patients?
Insight: John Smith treated the most patients at 15, but the gap across all doctors is very small, meaning that workload is balanced and no doctor is being overworked. 

Q4. What is the average billing amount for each medical condition?
Insight: Obesity recorded the highest average billing amount at ~ $25,800, while Cancer had the lowest at ~ $25,300 and the difference is small, indicating that no medical condition is significantly more expensive or cheaper to treat than the others.

Q5. Which insurance providers cover the highest number of patients?
Insight: Cigna led with 7,212 patients covered, Sbut the other four providers are not far behind,which shows that no single insurance provider is dominating the market.
	
Q6. Which medications are prescribed most frequently?
Insight: Lipitor was the most frequently prescribed medication with 7,264 prescriptions, indicating higher demand compared to the other medications.

Q7. Which patients have billing amounts higher than the overall average?
Insight: A large number of patients were billed above the overall average, suggesting high cost of healthcare.

Q8. Which medical conditions have average billing above the overall average?
Insight: Obesity, Asthma, and Diabetes recorded average billing above the overall average, making them the most expensive conditions both for patients and insurance providers handling the bills.

## Recommendations
- Lipitor is the most frequently prescribed medication, the hospital should ensure adequate stock is available to avoid shortages.

- John Smith and other doctors treat slightly more patients than others, the hospital should monitor workload regularly to ensure the current balance is maintained as patient numbers grow.

- Patient admissions are evenly spread across all hospitals,any hospital looking to grow should focus on improving service quality to stand out from the competition.

## How to Use
-Download the dataset from Kaggle.
-Import the CSV into MySQL Workbench.
-Run healthcare_analysis.sql to reproduce all queries and results.


## Author
 Adewumi Lateefat Adelayo
 