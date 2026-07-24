
mysql> create database bank_db;
Query OK, 1 row affected (0.20 sec)

mysql> use bank_db;
Database changed

mysql> create table BankAccount(account_id int(5) primary key not null,account_holder VARCHAR(30) not null,account_balance int(15) not null);
Query OK, 0 rows affected, 2 warnings (0.21 sec)

mysql> desc bankaccount;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| account_id      | int         | NO   | PRI | NULL    |       |
| account_holder  | varchar(30) | NO   |     | NULL    |       |
| account_balance | int         | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)



mysql> #  Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.

mysql> insert into bankaccount values (101,'Amit Shah',35000),(102,'Raghu Yadav',29000),(103,'Jay Jadhav',50000),(104,'Bhavik Patil',27000),(105,'Ram Singh',32000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0



mysql> # Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

mysql> select account_holder,account_balance from bankaccount;
+----------------+-----------------+
| account_holder | account_balance |
+----------------+-----------------+
| Amit Shah      |           35000 |
| Raghu Yadav    |           29000 |
| Jay Jadhav     |           50000 |
| Bhavik Patil   |           27000 |
| Ram Singh      |           32000 |
+----------------+-----------------+
5 rows in set (0.00 sec)



mysql> # Task:3 Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

mysql> select account_holder,account_balance from bankaccount where account_balance>30000;
+----------------+-----------------+
| account_holder | account_balance |
+----------------+-----------------+
| Amit Shah      |           35000 |
| Jay Jadhav     |           50000 |
| Ram Singh      |           32000 |
+----------------+-----------------+
3 rows in set (0.00 sec)



mysql> # Task:4 Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101

mysql> update bankaccount set account_balance = 37000 where account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+----------------+-----------------+
| account_id | account_holder | account_balance |
+------------+----------------+-----------------+
|        101 | Amit Shah      |           37000 |
|        102 | Raghu Yadav    |           29000 |
|        103 | Jay Jadhav     |           50000 |
|        104 | Bhavik Patil   |           27000 |
|        105 | Ram Singh      |           32000 |
+------------+----------------+-----------------+
