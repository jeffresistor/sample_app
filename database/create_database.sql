/* 
This script creates a clean install of the sample_app database.  
The other scripts in the /database/ directory are included here in the proper order, 
so they do not need to be executed separately.

--------------------------------------
To execute from Windows Command Shell:
--------------------------------------
- cd to /sample_app/database/ directory
- log into mysql using:  mysql -u root -p
- execute the script using:  \. create_database.sql;

Example Shell Command to create database as a Jenkins build step:
	cd C:\railo\webapps\www\sample_app\database
	mysql --user=root --password=root_password_here < create_database.sql

--------------------------------------

*/

-- create the sample_app database
drop database if exists sample_app;
create database sample_app;
use sample_app;

-- create the sample_app user for cf to connect through
drop user 'sa_cf_user'@'localhost';
create user 'sa_cf_user'@'localhost' identified by 'sa_cf_pw';
grant delete on sample_app.* to 'sa_cf_user'@'localhost';
grant insert on sample_app.* to 'sa_cf_user'@'localhost';
grant select on sample_app.* to 'sa_cf_user'@'localhost';
grant update on sample_app.* to 'sa_cf_user'@'localhost';

-- add tables and data
source ddl_tbl_state.sql;
source data_tbl_state.sql;

commit;
