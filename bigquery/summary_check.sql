-- Quick KPI validation query (optional)
-- Replace `project_id.kimia_farma` with your actual BigQuery project & dataset name.

SELECT
  SUM(nett_sales) AS total_nett_sales,
  SUM(nett_profit) AS total_nett_profit,
  COUNT(DISTINCT transaction_id) AS total_transactions,
  AVG(rating_transaksi) AS avg_transaction_rating
FROM `project_id.kimia_farma.kf_analisa`;
