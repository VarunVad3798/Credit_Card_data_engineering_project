# Project Notes

## Project Name

AWS Credit Card Data Engineering Pipeline

## Business Scenario

The project simulates a credit-card data platform that integrates customer, credit application, credit decision, account, transaction, and payment data.

The objective is to build a centralized AWS data lake and analytics platform for downstream reporting, data validation, and warehouse consumption.

## Source System Relationships

```text
CUSTOMER
   |
   | customer_id
   v
APPLICATION
   |
   | application_id
   +-------------> CREDIT DECISION
   |
   v
ACCOUNT
   |
   | account_id
   +-------------> TRANSACTION
   |
   +-------------> PAYMENT
```

## Data Lake Layers

### Landing

Incoming files from source systems.

### Raw

Accepted source data preserved in the original source format.

### Processed

Validated, cleaned, standardized, and transformed data.

### Curated

Business-ready integrated datasets.

### Rejected

Records that fail data quality validation.

## Initial Data Quality Issues

The synthetic source datasets contain intentional data quality problems:

* Invalid FICO score outside the 300-850 range
* Missing application ID in credit decision data
* Duplicate transaction ID
* Transaction referencing a non-existent account
* Negative payment amount
* Invalid customer email format

These records will be used to test AWS Glue data quality and rejected-record handling.
