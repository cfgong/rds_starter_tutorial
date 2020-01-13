# Code Base for AWS RDS connection tutorial [Link](https://medium.com/@crystalgong123/complete-guide-to-setting-up-connecting-to-and-using-an-amazon-rds-database-2e33c445baab)
- This code allows you to connect to your AWS RDS postgreSQL database using DataGrip, through the command line, with Python, or through Databricks.
- `queries.sql`: sql file to be used in DataGrip and Command Line
    - modify `psql_login.sh` with appropriate database credentials (host, username, password, dbname)
    - pipe the queries into psql like so: `\i queries.sql`
        - more psql commands [here](https://www.postgresql.org/docs/9.2/app-psql.html)
- `psycopg2.ipynb`: Jupyter Notebook walking through using Python with postgreSQL by leveraging the psycopg2 package
    - run `pip install -r requirements.txt` to install necessary packages
    - check out the nbviewer [link](https://nbviewer.jupyter.org/github/cfgong/rds_starter_tutorial/blob/master/psycopg2.ipynb) for a better in browser viewing experience
- `n/a`: html export from Databricks
