#<B>DDL COMMANDS</B><BR>
Data Definition Language (DDL) commands and SQL Constraints are the core structural building blocks of relational databases. DDL commands manage the schema and architecture of the database, while constraints enforce rules on the data to maintain accuracy and integrity

<B>CREATE</B>	Builds a new database object (like a table)</BR>
<B>ALTER</B>	Modifies an existing database structure.</BR>
<B>DROP</B>	Deletes an entire object (both data and structure).</BR>	
<B>TRUNCATE</B>	Deletes all records from a table but keeps the structure</BR>
<B>RENAME</B>Renames an existing database object.</BR>
<B>CONSTRAINTS</B><BR>
Constraints define the rules for data allowed in table columns. They prevent invalid or corrupt data from being saved.
<B>• NOT NULL</B>: Prevents a column from accepting empty (NULL) values.</BR>
<B>• UNIQUE:</B> Guarantees that every value in a column is distinct across all rows.</BR>
• <B>PRIMARY KEY</B>: Uniquely identifies each row. It is a combination of NOT NULL and UNIQUE. (Only one primary key is allowed per table)</BR>.
<B>• FOREIGN KEY:</B> Links a column to the primary key of another table to maintain referential integrity.</BR>
<B>• CHECK:</B> Restricts the range of values a column can accept based on a boolean condition (e.g., CHECK (age >= 18)).</BR>
<B>• DEFAULT:</B> Automatically populates a specified fallback value if no data is provided for that column during an insert operation</BR>
