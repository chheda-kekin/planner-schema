# planner-schema
MySQL database schema to migrate &amp; take backup of planner data

### Description

Backup of structural schema as well as stored data is taken using MySQL workbench UI. Backup is taken for future migrations if any.

### Technologies
* MySQL Workbench 8.0 CE
* MySQL 8.0.33 (Community Server - GPL)

### Schema description

#### Plan
'Plan' table is used to store details of all the plans created. Following are the fields created for "Plan" table.

* id (Auto increment integer to uniqually identify record)
* name (Variable chars, NOT NULL)
* created (bigint, NOT NULL)
* updated (bigint, NOT NULL)


#### Task
'Task' table is used to store all the tasks created for a plan. Following are the fields created for "Task" table.

* id (Auto increment integer to uniqually identify record)
* plan_id (integer, NOT NULL)
* name (variable chars, unique key index created, NOT NULL)
* status (enum ('Not Started', 'In Progress', 'Completed'), NOT NULL, default 'Not Started')
* priority (enum ('Urgent', 'Important', 'Medium', 'Low'), NOT NULL, default 'Low')
* start (bigint, NOT NULL)
* due (bigint, NOT NULL)
* created (bigint, NOT NULL)
* updated (bigint, NOT NULL)
* notes (text)
* members (json NOT NULL)
* comments (json, default NULL)
* labels (json, default NULL)


#### Member
'Member' table will store details of all individuals involved in particular plan. Following are the fields created to store individual's information.

* id (Auto increment integer to uniqually identify record)
* fname (variable chars, NOT NULL)
* lname (variable chars, NOT NULL, default '')
* email (variable chars, unique key index created, NOT NULL)
* gender (enum ('Male', 'Female'))
* phone (variable chars, default NULL)
* dob (date, NOT NULL)
* password (variable chars to store encrypted string, NOT NULL)
* created (bigint NOT NULL)
* updated (bigint NOT NULL)