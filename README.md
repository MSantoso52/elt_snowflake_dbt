# elt_snowflake_dbt
ELT CSV file into Snowflake using dbt;
A. Prequition:
  1. (Snowflake) Warehouse, database, schema for landing document
  2. (dbt) setup project in local machine & create connection to Snowflake
B. ELT flow:
  1. Extract -- provide CSV file as data source
  2. Load -- CSV file into Snowflake SQL using Python
  3. Transform -- create SQL query by joining columns from available table for specific needs using dbt 
