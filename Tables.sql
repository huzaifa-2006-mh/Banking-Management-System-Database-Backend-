-----CUSTOMER TABLE-----
CREATE TABLE customer (
customer_id NUMBER PRIMARY KEY,
customer_name VARCHAR2(40)
);

-----ACCOUNT TABLE-----
CREATE TABLE account(
account_id NUMBER PRIMARY KEY,
customer_id NUMBER,
balance NUMBER,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-----Transaction Table-----
CREATE TABLE Transaction(
txn_id NUMBER PRIMARY KEY,

account_id NUMBER,
amount number,
txn_type VARCHAR2(20),
txn_date DATE,

FOREIGN KEY (account_id) REFERENCES account(account_id)
);
