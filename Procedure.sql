----- CREATE ACCOUNT -------
CREATE PROCEDURE create_account(
acc_id NUMBER,
c_id NUMBER,
init_balance NUMBER 
)
AS
BEGIN
INSERT INTO account(account_id,customer_id,balance)
VALUES(acc_id,c_id,init_balance);
END;
/
----- deposit_money -------
CREATE PROCEDURE deposit_money(
acc_id NUMBER,
amt NUMBER
)
AS
BEGIN
UPDATE account SET
balance=amt+balance
WHERE account_id=acc_id;
INSERT INTO Transaction VALUES(Transaction_Seq.NEXTVAL,acc_id,amt,'Deposit',SYSDATE);
END;
/
----- withtdraw_money -------
CREATE PROCEDURE withdraw_money(
acc_id NUMBER,
amt NUMBER
)
AS
current_balance NUMBER;
BEGIN
SELECT balance INTO current_balance
FROM account
WHERE account_id=acc_id;
IF current_balance>=amt
THEN
UPDATE account SET
balance=balance-amt
WHERE account_id=acc_id;
INSERT INTO Transaction VALUES(Transaction_Seq.NEXTVAL,acc_id,amt,'Withdraw',SYSDATE);
ELSE
DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
END IF;
END;
/
