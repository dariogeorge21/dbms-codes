-- Transactions

BEGIN; -- Starts a new transaction.
UPDATE STUDENTS SET mark = mark + 5 WHERE name = 'Eldhose'; -- Updates the mark of the student named 'Eldhose' by adding 5 to their current mark.
COMMIT; -- Commits the transaction, making the changes permanent in the database.

BEGIN;
UPDATE STUDENTS SET mark = mark - 10 WHERE name = 'Markose'; -- Updates the mark of the student named 'Markose' by subtracting 10 from their current mark.
ROLLBACK; -- Rolls back the transaction, undoing the changes made to Markose's mark and leaving it unchanged in the database.

BEGIN;
UPDATE STUDENTS SET mark = mark + 3 WHERE name = 'Patros'; -- Updates the mark of the student named 'Patros' by adding 3 to their current mark.
SAVEPOINT sp1;
UPDATE STUDENTS SET mark = mark + 2 WHERE name = 'Paulos'; -- Updates the mark of the student named 'Paulos' by adding 2 to their current mark.
ROLLBACK TO sp1; -- Rolls back the transaction to the savepoint sp1, undoing the changes made to Paulos's mark while keeping the changes made to Patros's mark.
COMMIT; -- Commits the transaction, making the changes to Patros's mark permanent in the database while discarding the changes to Paulos's mark.

