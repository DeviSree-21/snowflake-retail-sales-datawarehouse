# snowflake-retail-sales-datawarehouse
End-to-End Retail Sales Data Warehouse using Snowflake | SCD Type 1 | SCD Type 2 | ETL | Stored Procedure | Task Automation

# 🛒 Snowflake Retail Sales Data Warehouse

An end-to-end Retail Sales Data Warehouse project built using **Snowflake** that demonstrates ETL, dimensional modeling, Slowly Changing Dimensions (SCD), Stored Procedures, and Task Automation.

---

## 📌 Project Overview

This project simulates a retail sales data warehouse where sales data is loaded from CSV files into Snowflake and transformed into dimensional and fact tables.

The project includes:

- Loading CSV files into Snowflake
- Internal Stage and File Format
- COPY INTO command
- SCD Type 1 implementation
- SCD Type 2 implementation
- Fact Table loading
- Stored Procedure for ETL automation
- Snowflake Task for scheduled execution

---

## 🛠 Technologies Used

- Snowflake
- SQL
- Snowflake Internal Stage
- File Format
- COPY INTO
- Stored Procedures
- Snowflake Tasks
- GitHub

---

# 📂 Project Structure

```
snowflake-retail-sales-datawarehouse
│
├── SQL Scripts
│   ├── 01_Create_Tables.sql
│   ├── 02_Create_Sequence.sql
│   ├── 03_File_Format.sql
│   ├── 04_Internal_Stage.sql
│   ├── 05_Copy_Into_STG.sql
│   ├── 06_DIM_PRODUCT_SCD1.sql
│   ├── 07_DIM_CUSTOMER_SCD2.sql
│   ├── 08_FACT_SALES.sql
│   ├── 09_Stored_Procedure.sql
│   └── 10_Snowflake_Task.sql
│
├── Sample_Data
│   ├── sales.csv
│   └── sales2.csv
│
├── Screenshots
│
└── README.md
```

---

# 🏗 Data Warehouse Architecture

```
CSV Files
     │
     ▼
Internal Stage
     │
     ▼
COPY INTO
     │
     ▼
STG_SALES
     │
     ├──────────────► DIM_PRODUCT (SCD Type 1)
     │
     ├──────────────► DIM_CUSTOMER (SCD Type 2)
     │
     ▼
FACT_SALES
     │
     ▼
Stored Procedure
     │
     ▼
Snowflake Task
```

---

# 📊 Data Model

## Staging Table

- STG_SALES

## Dimension Tables

- DIM_PRODUCT (SCD Type 1)
- DIM_CUSTOMER (SCD Type 2)

## Fact Table

- FACT_SALES

---

# 🔄 ETL Workflow

### Step 1

Create Database Objects

- Tables
- Sequences

---

### Step 2

Create

- File Format
- Internal Stage

---

### Step 3

Upload CSV Files

- sales.csv
- sales2.csv

---

### Step 4

Load data into STG_SALES

Using

COPY INTO

---

### Step 5

Load DIM_PRODUCT

Implemented using

✅ SCD Type 1

---

### Step 6

Load DIM_CUSTOMER

Implemented using

✅ SCD Type 2

Features:

- Historical Tracking
- Effective Date
- End Date
- Current Flag

---

### Step 7

Load FACT_SALES

Uses surrogate keys from

- DIM_CUSTOMER
- DIM_PRODUCT

---

### Step 8

Automate ETL

Using

- Stored Procedure
- Snowflake Task

---

# ⭐ SCD Implementations

## SCD Type 1

Table

DIM_PRODUCT

Behavior

- Updates existing records
- No history maintained

---

## SCD Type 2

Table

DIM_CUSTOMER

Behavior

- Maintains historical records
- Inserts new version of changed records
- Marks previous record as inactive

---

# 📸 Project Screenshots

- STG_SALES
- DIM_PRODUCT
- DIM_CUSTOMER
- FACT_SALES
- Stored Procedure
- Snowflake Task

(Refer to the **Screenshots** folder.)

---

# 🚀 Key Learnings

- Snowflake Data Warehouse
- Internal Stage
- File Format
- COPY INTO
- Surrogate Keys
- SCD Type 1
- SCD Type 2
- Fact & Dimension Modeling
- Stored Procedures
- Task Scheduling
- ETL Design
- GitHub Project Documentation

---

# 👩‍💻 Author

**Devi Sree**

GitHub:
https://github.com/DeviSree-21

---

⭐ If you found this project useful, consider giving it a star!
