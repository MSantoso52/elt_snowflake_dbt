# elt_snowflake_dbt
ELT CSV file into Snowflake using dbt;
1. Prequition:
  (Snowflake) Warehouse, database, schema for landing document
  (dbt) setup project in local machine & create connection to Snowflake
2. ELT flow:
  Extract -- provide CSV file as data source
  Load -- CSV file into Snowflake SQL using Python
  Transform -- create SQL query by joining columns from available table for specific needs using dbt 
