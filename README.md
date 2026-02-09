# Kimia Farma Performance Analytics (2020–2023)

## 📌 Project Overview
This project analyzes Kimia Farma’s business performance from 2020 to 2023 using BigQuery and Google Looker Studio.  
The goal is to transform raw transactional data into an analytical table and visualize key business insights through an interactive dashboard.

## 🗂️ Dataset
The analysis is based on four main datasets:
- Transaction data
- Product data
- Branch (office) data
- Inventory data

All datasets were integrated and processed in BigQuery.

## ⚙️ Data Processing (BigQuery)
An analytical table (`kf_analisa`) was created by joining and transforming the datasets.  
Key metrics include:
- Net Sales
- Net Profit
- Gross Profit Percentage
- Transaction and Branch Ratings

SQL scripts can be found in: 

bigquery/


## 📊 Dashboard (Looker Studio)
The dashboard includes:
- KPI Summary (Net Sales, Net Profit, Transactions, Ratings)
- Year-over-Year Net Sales
- Top 10 Provinces by Transactions
- Top 10 Provinces by Net Sales
- Top 5 Branches with Highest Branch Rating but Lowest Transaction Rating
- Geographic Distribution of Total Profit by Province

🔗 **Looker Studio Dashboard Link:**  
(https://lookerstudio.google.com/reporting/08cf62af-deeb-41e7-9889-d392a41d4fbb)

## 🎯 Key Outcome
This project demonstrates end-to-end analytics skills:
- Data preparation using SQL (BigQuery)
- Analytical thinking and metric definition
- Business-focused data visualization

## 🧑‍💻 Author
Fazara Finararrya
