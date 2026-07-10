# AWS Credit Card Data Engineering Pipeline

An AWS-native end-to-end data engineering project that integrates customer, credit application, credit decision, credit card account, transaction, and payment datasets into a centralized AWS data lake and analytics platform.

## Project Goals

* Build an Amazon S3-based data lake
* Design landing, raw, processed, curated, and rejected data layers
* Discover source schemas using AWS Glue Crawlers
* Manage metadata using AWS Glue Data Catalog
* Profile and validate raw data using Amazon Athena
* Build PySpark ETL pipelines using AWS Glue
* Implement data quality and rejected-record handling
* Convert raw CSV data into Parquet
* Implement partitioning and incremental processing
* Build curated credit-card analytics datasets
* Orchestrate AWS ETL workflows using AWS Step Functions
* Monitor pipelines using Amazon CloudWatch
* Send failure alerts using Amazon SNS
* Build an Enterprise Data Warehouse using Amazon Redshift
* Implement AWS data lake governance using Lake Formation

## AWS Services

* Amazon S3
* AWS Glue
* AWS Glue Crawlers
* AWS Glue Data Catalog
* AWS Glue Data Quality
* Amazon Athena
* AWS Lambda
* AWS Step Functions
* Amazon CloudWatch
* Amazon SNS
* AWS IAM
* AWS Secrets Manager
* Amazon Redshift
* AWS Lake Formation
* Amazon Kinesis Data Streams
* Amazon Data Firehose

## Source Datasets

The project uses synthetic credit-card platform datasets representing multiple source systems:

* Customer Master
* Credit Card Applications
* Credit Decision Engine
* Credit Card Accounts
* Card Transactions
* Account Payments

## Data Lake Architecture

```text
Source Data
    |
    v
Amazon S3 Landing
    |
    v
Amazon S3 Raw
    |
    v
AWS Glue ETL
    |
    +--------> S3 Rejected
    |
    v
S3 Processed Parquet
    |
    v
AWS Glue Data Catalog
    |
    +--------> Amazon Athena
    |
    v
S3 Curated
    |
    v
Amazon Redshift
```

## Project Status

Currently building the S3 raw ingestion and data catalog layer.
