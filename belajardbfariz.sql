Microsoft Windows [Version 10.0.22000.795]
(c) Microsoft Corporation. All rights reserved.

C:\Users\62812>color a

C:\Users\62812>cd..

C:\Users>cd..

C:\>cd..

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 16
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| db_eben                 |
| eben_hezer_wangsa_djaja |
| information_schema      |
| mysql                   |
| performance_schema      |
| phpmyadmin              |
| sekolah                 |
| test                    |
+-------------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> create db_fariz
    -> create db_fariz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'db_fariz
create db_fariz' at line 1
MariaDB [(none)]> crete database db_fariz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'crete database db_fariz' at line 1
MariaDB [(none)]> create database db_fariz;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> show databases;
+-------------------------+
| Database                |
+-------------------------+
| db_eben                 |
| db_fariz                |
| eben_hezer_wangsa_djaja |
| information_schema      |
| mysql                   |
| performance_schema      |
| phpmyadmin              |
| sekolah                 |
| test                    |
+-------------------------+
9 rows in set (0.001 sec)

MariaDB [(none)]> use db_fariz
Database changed
MariaDB [db_fariz]> desc tbl_fariz
    -> show tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'show tables' at line 2
MariaDB [db_fariz]> show tables;
Empty set (0.001 sec)

MariaDB [db_fariz]> create table tbl_fariz(id_fariz, nama_murid, alamat);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' nama_murid, alamat)' at line 1
MariaDB [db_fariz]> use db_fariz;
Database changed
MariaDB [db_fariz]> create table tbl_fariz;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [db_fariz]> create table tbl_fariz (id_murid varchar(5),nama_murid varchar(10),alamat_murid varchar (100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_fariz]> create table tbl_fariz (id_murid varchar("5"),nama_murid varchar("10"),alamat_murid varchar ("100");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"5"),nama_murid varchar("10"),alamat_murid varchar ("100")' at line 1
MariaDB [db_fariz]> create table tbl_fariz (id_murid varchar('5'),nama_murid varchar('10'),alamat_murid varchar ('100');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''5'),nama_murid varchar('10'),alamat_murid varchar ('100')' at line 1
MariaDB [db_fariz]> create table tbl_fariz (id_murid varchar(5),nama_murid varchar(10),alamat_murid varchar (100));
Query OK, 0 rows affected (0.017 sec)

MariaDB [db_fariz]> show tables;
+--------------------+
| Tables_in_db_fariz |
+--------------------+
| tbl_fariz          |
+--------------------+
1 row in set (0.001 sec)

MariaDB [db_fariz]> desc tbl_fariz
    -> desc tbl_fariz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc tbl_fariz' at line 2
MariaDB [db_fariz]> desc tbl eben;
ERROR 1146 (42S02): Table 'db_fariz.tbl' doesn't exist
MariaDB [db_fariz]> desc tbl_fariz
    -> desc tbl_fariz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc tbl_fariz' at line 2
MariaDB [db_fariz]> desc tbl_fariz;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| id_murid     | varchar(5)   | YES  |     | NULL    |       |
| nama_murid   | varchar(10)  | YES  |     | NULL    |       |
| alamat_murid | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.012 sec)

MariaDB [db_fariz]> INSERT into tbl_fariz (id_fariz, nama_murid, alamat) values ("1","fariz fadli rafiudin","belendung,cibogo subang,jawa barat");
ERROR 1054 (42S22): Unknown column 'id_fariz' in 'field list'
MariaDB [db_fariz]> INSERT into tbl_fariz (id_fariz, nama_murid, alamat) values ("1","fariz fadli rafiudin","belendung,cibogo subang,jawa barat");
ERROR 1054 (42S22): Unknown column 'id_fariz' in 'field list'
MariaDB [db_fariz]> INSERT into tbl_fariz (id_murid, nama_murid, alamat) values ("1","fariz fadli rafiudin","belendung,cibogo subang,jawa barat");
ERROR 1054 (42S22): Unknown column 'alamat' in 'field list'
MariaDB [db_fariz]> INSERT into tbl_fariz (id_murid, nama_murid, alamat_murid) values ("1","fariz fadli rafiudin","belendung,cibogo subang,jawa barat");
Query OK, 1 row affected, 1 warning (0.005 sec)

MariaDB [db_fariz]> show tables;
+--------------------+
| Tables_in_db_fariz |
+--------------------+
| tbl_fariz          |
+--------------------+
1 row in set (0.001 sec)

MariaDB [db_fariz]> desc tbl_fariz;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| id_murid     | varchar(5)   | YES  |     | NULL    |       |
| nama_murid   | varchar(10)  | YES  |     | NULL    |       |
| alamat_murid | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.010 sec)

MariaDB [db_fariz]> select * from tbl_fariz;
+----------+------------+------------------------------------+
| id_murid | nama_murid | alamat_murid                       |
+----------+------------+------------------------------------+
| 1        | fariz fadl | belendung,cibogo subang,jawa barat |
+----------+------------+------------------------------------+
1 row in set (0.001 sec)

MariaDB [db_fariz]>