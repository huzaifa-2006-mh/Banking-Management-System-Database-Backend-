🏦 Banking Management System (Database Backend)
A comprehensive Oracle SQL & PL/SQL backend system designed to handle core banking operations. This project focuses on data integrity, security, and process automation through advanced database objects.

🚀 Key Features
Automated Transactions: Built-in procedures to handle Deposit and Withdrawal functions seamlessly.

Data Validation: Implements real-time Triggers to enforce business rules, such as preventing negative account balances.

Reporting & Analytics: Customized Views to provide instant account summaries and transaction histories.

Performance Optimization: Strategic use of Indexes to ensure fast data retrieval even with growing datasets.

Robust Architecture: Utilizes Sequences for conflict-free primary key generation.

🛠️ Tech Stack
Database: Oracle Database (12c, 19c, or 21c compatible).

Language: SQL, PL/SQL.

Tools: Oracle SQL Developer.

📂 Project Structure
To ensure successful deployment, please execute the files in the following order:

01_Setup_User.sql: Run as Admin (SYS) to create the schema and grant necessary permissions.

Tables.sql: Defines the relational structure for Customers, Accounts, and Transactions.

sequence.sql: Initializes sequences for automated ID generation.

Procedure.sql: Contains the core logic for banking operations.

trigger.sql: Implements the security layer for balance validation.

functions.sql & acc_views.sql: Provides utility functions and reporting views.

⚙️ Installation & Setup
Schema Initialization: Connect to your Oracle instance as SYSDBA and run 01_Setup_User.sql.

User Login: Create a new connection in SQL Developer using the username bank_user and the Pluggable Database (PDB) service name (e.g., XEPDB1).

Deployment: Execute the remaining SQL files in the order listed above within the bank_user session.

Developed by: Muhammad Huzaifa Sanaullah
