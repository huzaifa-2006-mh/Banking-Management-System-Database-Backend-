-- 1. Pehle Container switch karen
ALTER SESSION SET CONTAINER = XEPDB1;

-- 2. Phir normal user (baghair C## ke) banaye
CREATE USER bank_user IDENTIFIED BY 123;

-- 3. Permissions dein
GRANT CONNECT, RESOURCE, UNLIMITED TABLESPACE TO bank_user;

-- 4. (Optional) Check karne ke liye ke aap kahan hain
SHOW CON_NAME;