# UK Retail Sales & Customer Analytics

## Project Overview

This project explores retail transaction data to understand sales performance, customer purchasing behaviour, and product trends.

The objective is to demonstrate how Python and SQL can be used to transform raw transaction data into useful business insights.

**Project status:** In progress

## Objectives

- Analyse sales and revenue trends over time.
- Identify top-performing products and markets.
- Explore customer purchasing behaviour.
- Segment customers using Recency, Frequency and Monetary (RFM) analysis.
- Communicate findings through clear visualisations and business recommendations.

## Tools & Technologies

- Python
- pandas and NumPy
- SQL
- Matplotlib and Seaborn
- Jupyter Notebook
- Power BI (planned)

## Dataset

The project will use the UCI Online Retail dataset.

Source: https://archive.ics.uci.edu/dataset/352/online+retail

The dataset contains transaction records from a UK-based online retailer.

## Project Workflow

1. Data collection and understanding
2. Data cleaning and validation
3. Exploratory data analysis
4. SQL-based business analysis
5. Customer segmentation
6. Visualisation and reporting
7. Business recommendations

## Key Findings

To be added after completing the analysis.

## How to Run

Instructions and dependencies will be added as the project develops.

## Limitations

The analysis will document data quality issues, assumptions, and limitations before any business conclusions are drawn.

## Author

MSc Data Science Graduate | Python | SQL | Machine Learning


## Analysis and Findings

### Data Quality
- Original dataset: 541,909 transaction records.
- Duplicate records identified: 5,268.
- Missing customer IDs: 135,080.
- Cleaned dataset: 524,878 records after the initial filtering process.

### Exploratory Analysis
- Analysed monthly sales revenue.
- Identified the top 10 products by recorded revenue.
- Compared sales across countries.
- Summarised customer purchasing behaviour for transactions with known customer IDs.

### Visualisations
Charts are generated in the exploratory analysis notebook.

### Data Cleaning Notes
The initial analysis removes duplicate records, invalid quantities and prices, and cancelled invoices. These choices affect the results. Returns, cancellations and transactions with missing customer IDs should be examined separately before drawing conclusions about net revenue or total customer activity.

### Next Steps
- Add SQL queries for business questions.
- Investigate returns and cancellations.
- Build customer RFM segments.
- Develop a dashboard for business stakeholders.
