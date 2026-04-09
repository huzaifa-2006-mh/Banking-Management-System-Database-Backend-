CREATE FUNCTION get_balance(acc_id NUMBER)
RETURN NUMBER
AS
bal NUMBER;
BEGIN
SELECT balance INTO bal
FROM account 
WHERE account_id=acc_id;
RETURN bal;
END;