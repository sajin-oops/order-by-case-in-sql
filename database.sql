
mysql> show databases;\
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.01 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.01 sec)

mysql> select * from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | leet    | software developer     |   10000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> select * from employees order by ( case jobdescription
    -> when back-end then 1
    -> when front-end then 2
    -> when data scientist then 3
    -> else 100
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'scientist then 3
else 100
)' at line 4
mysql> select * from employees order by ( case jobdescription
    -> when back-end then 1
    -> when front-end then 2
    -> when data scientist then 3
    -> else 100 end);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'scientist then 3
else 100 end)' at line 4
mysql> select * from employees order by ( case jobdescription
    -> when back-;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> select * from employees order by (case jobdescription when 'front-end' then 1 when 'back-end' then 2 else 100 end);
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | leet    | software developer     |   10000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> select * from employees order by (case jobdescription when 'front-end' then 1 when 'back-end' then 2  when 'ml engineer' then 5 else 100 end);
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 13    | silent  | ml engineer            |    1070 |
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 14    | leet    | software developer     |   10000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> select * from employees order by (case jobdescription when 'front-end' then 1 when 'back-end' then 2  when 'ml engineer' then 5 else 100 end),empname;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 13    | silent  | ml engineer            |    1070 |
| 2     | aaron   | data scientist         | 1000000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 11    | gururan | data scientist         | 9000000 |
| 14    | leet    | software developer     |   10000 |
| 3     | lijin   | data analyst           | 2000000 |
| 10    | mani    | data scientist         | 7000000 |
| 12    | manju   | devops                 | 1000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 1     | sajin   | data scientist         | 1000000 |
| 4     | sam     | data engineer          | 3000000 |
| 9     | tharun  | full-stack             |   10000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> select * from employees order by (case jobdescription when 'front-end' then 1 when 'back-end' then 2  when 'ml engineer' then 5 else 100 end),empname
;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 13    | silent  | ml engineer            |    1070 |
| 2     | aaron   | data scientist         | 1000000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 11    | gururan | data scientist         | 9000000 |
| 14    | leet    | software developer     |   10000 |
| 3     | lijin   | data analyst           | 2000000 |
| 10    | mani    | data scientist         | 7000000 |
| 12    | manju   | devops                 | 1000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 1     | sajin   | data scientist         | 1000000 |
| 4     | sam     | data engineer          | 3000000 |
| 9     | tharun  | full-stack             |   10000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql>