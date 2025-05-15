# elt_snowflake_dbt
ELT CSV file into Snowflake using dbt:
1. (Snowflake) Warehouse, database, schema for landing document
2. (dbt) setup project in local machine & create connection to Snowflake
3. Extract -- provide CSV file as data source
4. Load -- CSV file into Snowflake SQL using Python
5. Transform -- create SQL query by joining columns from available table for specific needs using dbt 
