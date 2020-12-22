CREATE TABLE IF NOT EXISTS  'groups' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "name" VARCHAR NOT NULL);
CREATE TABLE IF NOT EXISTS  'people' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "firstName" VARCHAR  NOT NULL);
CREATE TABLE IF NOT EXISTS  'tasks' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "taskName" VARCHAR  NOT NULL,   "dueDate" DATETIME, "groupId" INTEGER, "personId" INTEGER, "complete" BOOLEAN, "priority" INTEGER, FOREIGN KEY(groupId) REFERENCES groups (id),  FOREIGN KEY(personId) REFERENCES people (id) );
INSERT INTO 'groups' (name) select "Company" WHERE NOT EXISTS (SELECT * FROM 'groups' WHERE name = "Company");
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "Grocery Shop", "2020-11-30",1,1,0,3 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 4);
