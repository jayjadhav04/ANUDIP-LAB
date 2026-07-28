mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bank_db            |
| customer           |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| student_db         |
| sys                |
+--------------------+
8 rows in set (0.01 sec)

mysql> create database studentSM;
Query OK, 1 row affected (0.02 sec)

mysql> USE studentSM;
Database changed



mysql># Step 1: Create Student table

mysql> CREATE TABLE Student(student_id INT PRIMARY KEY, first_name VARCHAR(30), last_name VARCHAR(30));
Query OK, 0 rows affected (0.34 sec)



mysql># Step 2: Create Enrollment  table

mysql> CREATE TABLE Enrollment(enrollment_id INT PRIMARY KEY, student_id INT, course_id VARCHAR(10), FOREIGN KEY(student_id) REFERENCES Student(student_id));
Query OK, 0 rows affected (3.57 sec)



mysql># Step 3: Insert Values into Student Table

mysql> INSERT INTO Student VALUES (1,'Jay','Jadhav'),(2,'Vivek','Patil'),(3,'Sita','Sharma');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0



mysql># Step 4: Insert Values into Enrollment Table

mysql> INSERT INTO Enrollment VALUES (101,1,'C101'),(102,2,'C102'),(103,3,'C103');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0



mysql># Step 5: Inner Join Query

mysql> SELECT s.student_id, s.first_name, s.last_name, e.enrollment_id, e.course_id FROM Student s INNER JOIN Enrollment e ON s.student_id = e.student_id;
+------------+------------+-----------+---------------+-----------+
| student_id | first_name | last_name | enrollment_id | course_id |
+------------+------------+-----------+---------------+-----------+
|          1 | Jay        | Jadhav    |           101 | C101      |
|          2 | Vivek      | Patil     |           102 | C102      |
|          3 | Sita       | Sharma    |           103 | C103      |
+------------+------------+-----------+---------------+-----------+
3 rows in set (0.02 sec)
