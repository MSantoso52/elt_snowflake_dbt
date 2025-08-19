# elt_snowflake_dbt
# *Overview*
Project repo to demonstrate data transformation in Snowflake datawarehouse, project start with importing CSV file into Snowflake datawarehouse, setup dbt in local machine to communicate with Snowflake cloud service. DBT is powerful tool to transforming data within datawarehouse -- Snowflake. 
# *Prerequisites*
To follow along this learning need to be available on system:
- dbt installed & connrction setup with snowflake
  ```bash
  # create virtual environment on local
  python -m venv dbt_snowflake

  # activate created virtual invironment
  cd dbt_snowflake
  source bin/activate

  # install dbt
  pip install dbt-snowflake

  # initialize dbt to connect Snowflake
  dbt init

  # checking dbt connection on Snowflake
  dbt debug
  ```
- snowflake account with datawarehouse, database
  * datawarehouse: COMPUTE_WH
  * database: MULYOMART
# *Project Flow*
ELT CSV file into Snowflake using dbt:
1. (Snowflake) Warehouse, database, schema for landing document
2. (dbt) setup project in local machine & create connection to Snowflake
3. Extract -- provide CSV file as data source
4. Load -- CSV file into Snowflake SQL using Python
5. Transform -- create SQL query by joining columns from available table for specific needs using dbt 
