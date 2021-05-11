### Dicks Sporting Goods Database and Web Application
# Mitch Perez and Shayne Sendera
Dick's Sporting Goods is an American Sporting Goods stores that sells a large array
of active gear shoes, and other equiptment. 

The Database and Web Application provided consist of tables related to the store
and its products explicitly. 

## System requirements
- Need an installation of MySQLWorkbench
- Need Flask and PyMySQL extensions installed in python IDE
- Need a Web Browser

## Database Setup

- Create a fork and pull down the provided files in Github.
- Open MySQLWorkbench and run the ___ sql file in order to create the proper tables.
- Run ___.py in order to populate the database with mock data if you wish.

- In the case of making sure the database is properly setup, example queries can be ran to ensure data resides in the database.

## Web Application Setup

- In the contents of the Comp310Webapps folder there shoud be a script named customer_orders.py
- Open and run customer_orders.py
- Open your web browser to the url "localhost:5000" to see the Dick's Sporting Goods webpage.

# Web Application Features
- Creating an account notifies the client that the account was successfully created as well as Inserts the inputted data into the db.
- Logging into an account Selects all the information from the accounts that share the same username and password as the data inputted. (Not Working)
- The catelog page selects the products from the Dick's Sporting Goods database and adds it to a table of existing orders in the orders page (Not Working)