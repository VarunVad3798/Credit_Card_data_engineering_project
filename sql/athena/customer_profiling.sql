-- ============================================
-- Customer Data Profiling
-- Dataset: raw_customers
-- ============================================

-- Total Records
SELECT COUNT(*) AS total_customers
FROM opencard_raw_db.raw_customers;

-- Missing Customer IDs
SELECT *
FROM opencard_raw_db.raw_customers
WHERE customer_id IS NULL
   OR TRIM(customer_id) = '';

-- Duplicate Customer IDs
SELECT
    customer_id,
    COUNT(*) AS occurrence_count
FROM opencard_raw_db.raw_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Invalid Email Addresses
SELECT
    customer_id,
    email
FROM opencard_raw_db.raw_customers
WHERE email IS NULL
   OR TRIM(email) = ''
   OR NOT REGEXP_LIKE(
       email,
       '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
   );
