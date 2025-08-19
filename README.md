# elt_snowflake_dbt
# *Overview*
Project repo to demonstrate data transformation in Snowflake warehouse, project start with importing CSV file into Snowflake warehouse, setup dbt in local machine to communicate with Snowflake cloud service. DBT is powerful tool to transforming data within warehouse -- Snowflake. 
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
  ....
  # follow along the query to be filled in
  account: ******
  user: *****
  database: MULYOMART
  warehouse: COMPUTE_WH
  role: ACCOUNTADMIN
  schema: CONSUMPTION  
  ....

  # checking dbt connection on Snowflake
  dbt debug
  ```
- snowflake account with warehouse, database
  * warehouse: COMPUTE_WH
  * database: MULYOMART
# *Project Flow*
ELT CSV file into Snowflake using dbt:
1. Import CSV files into Snowfake
   ```bash
   python3 csv_to_snowflake.py
   ```
3. (dbt) setup project in local machine & create connection to Snowflake
4. Extract -- provide CSV file as data source
5. Load -- CSV file into Snowflake SQL using Python
6. Transform -- create SQL query by joining columns from available table for specific needs using dbt 
