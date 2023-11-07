# planner-schema
MySQL database schema to migrate &amp; take backup of planner data

### Description

Backup of structural schema as well as stored data is taken using MySQL workbench UI. Backup is taken for future migrations if any.

### Technologies
* MySQL Workbench 8.0 CE
* MySQL 8.0.33 (Community Server - GPL)

### Schema description

#### Task
Task table is used to store all the tasks created for a plan. Following are the fields created for "Task" table.

* id (Auto increment integer)
* plan_id (integer)
* name (variable chars)
* status (Enum ('Not Started', 'In Progress', 'Completed'))
* priority (Enum ('Urgent', 'Important', 'Medium', 'Low'))
* start (bigint)
* due (bigint)
* created (bigint)
* updated (bigint)
* notes (text)
* members (json)
* comments (json)
* labels (json) 