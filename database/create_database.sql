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
--------------------------------------

*/

drop database if exists sample_app;

create database sample_app;

use sample_app;

source ddl_tbl_state.sql;
source data_tbl_state.sql;

commit;
