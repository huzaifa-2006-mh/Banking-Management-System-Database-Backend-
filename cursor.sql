DECLARE 
CURSOR txn_cursor
IS
SELECT * FROM Transaction 
WHERE account_id=1;
t Transaction%ROWTYPE;
BEGIN
OPEN txn_cursor;
LOOP
FETCH txn_cursor INTO t;
EXIT WHEN txn_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE( t.txn_type || ' ' || t.amount || ' ' || t.txn_date);
END LOOP;
CLOSE txn_cursor;
END;