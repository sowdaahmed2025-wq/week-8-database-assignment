-- Week 8 Assignment: MySQL Database Backup and Restore
-- Student Name: Sowda Ahmed
-- Date: 2026-11-25

-- ==========================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
-- ==========================================

-- Command:
-- mysqldump -u root -p sales > sales_backup.sql

mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is the MySQL utility that exports a database to a file.
-- -u root            : connect using the MySQL username root.
-- -p                 : prompt for the password (it is not typed in the command).
-- sales              : the database being backed up.
-- > sales_backup.sql : saves the output into the file sales_backup.sql.
-- Regular backups are important because they protect against data loss
-- from hardware failure, human error, or corruption, and they let us
-- restore the database before or after major changes.

-- ==========================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- ==========================================

-- Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- --all-databases              : exports every database on the server.
-- -u root                      : connect using the MySQL username root.
-- -p                           : prompt for the password.
-- > all_databases_backup.sql   : saves everything into this file.
-- Backing up all databases before a migration is important because it
-- keeps a full copy of all data and structures, so nothing is lost if
-- the migration fails and the whole server can be restored.

-- ==========================================
-- BONUS: DATA-ONLY BACKUP OF THE SALES DATABASE
-- ==========================================

-- Command:
-- mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql

mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql

-- Explanation:
-- --no-create-info : skips the CREATE TABLE statements and exports only the data.