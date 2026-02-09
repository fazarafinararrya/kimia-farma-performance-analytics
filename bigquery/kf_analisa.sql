-- Create Analysis Table: kf_analisa
-- Project: Kimia Farma Performance Analytics
-- Period: 2020–2023
-- Data Source:
--   - kf_final_transaction
--   - kf_kantor_cabang
--   - kf_product
--
-- NOTE:
-- Replace `project_id.kimia_farma` with your actual BigQuery project & dataset name.
-- Example: `my-gcp-project.kimia_farma`

CREATE OR REPLACE TABLE `project_id.kimia_farma.kf_analisa` AS
SELECT
  t.transaction_id,
  t.date,
  b.branch_id,
  b.branch_name,
  b.kota,
  b.provinsi,
  b.rating AS rating_cabang,
  t.customer_name,
  p.product_id,
  p.product_name,
  p.price AS actual_price,
  t.discount_percentage,

  -- Gross profit percentage by price rule
  CASE
    WHEN p.price <= 50000 THEN 0.10
    WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
    WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
    WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,

  -- Net sales after discount
  (p.price * (1 - t.discount_percentage)) AS nett_sales,

  -- Net profit = net sales * gross profit percentage
  (p.price * (1 - t.discount_percentage)) *
  CASE
    WHEN p.price <= 50000 THEN 0.10
    WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
    WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
    WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS nett_profit,

  t.rating AS rating_transaksi
FROM `project_id.kimia_farma.kf_final_transaction` t
LEFT JOIN `project_id.kimia_farma.kf_kantor_cabang` b
  ON t.branch_id = b.branch_id
LEFT JOIN `project_id.kimia_farma.kf_product` p
  ON t.product_id = p.product_id;
