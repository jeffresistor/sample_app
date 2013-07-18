To install the sample application:

Install servers and unit testing platform:
------------------------------------------
- install a CFML engine
- install MXUnit
- install MySQL 

Create Database:
----------------
- execute /database/create_database.sql to create the sample_app database and user account for the datasource connection
- To execute from Windows Command Shell:
	- cd to /sample_app/database/ directory
	- log into mysql using:  mysql -u root -p
	- execute the script using:  \. create_database.sql;

Create Datasource Connection:
-----------------------------
- log into your ColdFusion server and create a datasource connection on the ColdFusion server using the sample_app MySQL user credentials established when creating the database
	- type: MySQL
	- datasource name: sample_app
	- host/server: localhost
	- user: sa_cf_user
	- password:  sa_cf_pw (Note: change the password once the application is installed and verified)

Verify Application Runs:	
------------------------
- open a browser window and navigate to the sample application at http://localhost:8888/sample_app/web/
	- You should see an HTML dropdown menu containing a list of 50 US states + DC
	
Verify Tests Run:
-----------------	
- browse to the MXUnit test runner at http://localhost:8888/mxunit/runner/index.cfm
- specify the path to /web/com/Test.cfc in the 'TestCase, TestSuite or Directory' field (sample_app.web.com.Test) and click the 'Run Tests' button
- the results should show 3 tests have been executed, all of which pass 
