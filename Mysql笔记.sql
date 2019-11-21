--mysql 学习笔记

--关系型数据库

--一、如何使用终端操作数据库？

-- 1、如何登陆数据库服务器？
yeyan@yeyan:~$ mysql -uroot -p123456

-- 2、如何查询数据库服务器所有的数据库
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

-- 3、如何选中某一个数据库进行操作？
mysql> select * from admin;
ERROR 1046 (3D000): No database selected

mysql> use mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed


-- SQL 语句中的查询
mysql> select * from admin;

mysql> select * from admin where Admin_ID=1;


-- 如何退出数据库服务器？
mysql> exit;
Bye


-- 如何在数据库服务器中创建自己的数据库？
create database test

mysql> create database test ;
Query OK, 1 row affected (0.00 sec)

-- 如何查看某个数据库下所有的数据表？

mysql> use test;
Database changed
mysql> show tables;
Empty set (0.00 sec)

-- 如何创建一个数据表？
CREATE TABLE pet(
	name VARCHAR(20),
	owner VARCHAR(20),
	species VARCHAR(20),
	sex CHAR(1),
	birth DATE,
	death DATE);

mysql> CREATE TABLE pet(
    -> name VARCHAR(20),
    -> owner VARCHAR(20),
    -> species VARCHAR(20),
    -> sex CHAR(1),
    -> birth DATE,
    -> death DATE);
Query OK, 0 rows affected (0.12 sec)

-- 查看数据表是否创建成功
mysql> show tables;
+----------------+
| Tables_in_test |
+----------------+
| pet            |
+----------------+
1 row in set (0.00 sec)

-- 查看创建好的数据表的结构
mysql> describe pet;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(20) | YES  |     | NULL    |       |
| owner   | varchar(20) | YES  |     | NULL    |       |
| species | varchar(20) | YES  |     | NULL    |       |
| sex     | char(1)     | YES  |     | NULL    |       |
| birth   | date        | YES  |     | NULL    |       |
| death   | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

-- 查看数据表中的记录？
mysql> select * from pet;
Empty set (0.00 sec)

-- 如何往数据表中添加数据记录？
mysql> INSERT INTO pet 
    -> VALUES('Puffball','Diane','hamster','f','1999-03-30',NULL);
Query OK, 1 row affected (0.00 sec)

-- 再一次查询
mysql> select * from pet;
+----------+-------+---------+------+------------+-------+
| name     | owner | species | sex  | birth      | death |
+----------+-------+---------+------+------------+-------+
| Puffball | Diane | hamster | f    | 1999-03-30 | NULL  |
+----------+-------+---------+------+------------+-------+
1 row in set (0.00 sec)

-- mysql 常用数据类型有哪些》
-- MySQL支持多种类型，大致可以分为三类：
-- 数值
类型 				大小 		范围（有符号） 	范围（无符号） 	用途
TINYINT 			1 字节 	(-128，127) 	(0，255) 	小整数值

SMALLINT 			2 字节 	(-32 768，32 767) 	(0，65 535) 	大整数值

MEDIUMINT 		3 字节 	(-8 388 608，8 388 607) 	(0，16 777 215) 	大整数值

INT或INTEGER 	4 字节 	(-2 147 483 648，2 147 483 647) 	(0，4 294 967 295) 	大整数值

BIGINT 			8 字节 	(-9,223,372,036,854,775,808，9 223 372 036 854 775 807) 	(0，18 446 744 073 709 551 615) 	极大整数值

FLOAT 				4 字节 	(-3.402 823 466 E+38，-1.175 494 351 E-38)，0，(1.175 494 351 E-38，3.402 823 466 351 E+38) 	0，(1.175 494 351 E-38，3.402 823 466 E+38) 	单精度
浮点数值

DOUBLE 			8 字节 	(-1.797 693 134 862 315 7 E+308，-2.225 073 858 507 201 4 E-308)，0，(2.225 073 858 507 201 4 E-308，1.797 693 134 862 315 7 E+308) 	0，(2.225 073 858 507 201 4 E-308，1.797 693 134 862 315 7 E+308) 	双精度
浮点数值

DECIMAL 	对DECIMAL(M,D) ，如果M>D，为M+2否则为D+2 	依赖于M和D的值 	依赖于M和D的值 	小数值 


-- 日期/时间
-- 字符串(字符)类型。









--二、如何使用可视化工具操作数据库？

--三、如何在编程语言中操作数据库？
