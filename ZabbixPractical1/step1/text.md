# Installation of the MySQL database

>You need to create a new MySQL database and fill it with some basic information so that it is suitable for Zabbix.


* Update the package index
```
sudo apt update
```{{exec}}

* Install the MySQL server.
```
sudo apt install -y mysql-server
```{{exec}}

* Run the wizard
```
sudo mysql_secure_installation
```{{exec}}

* Enter the following values

>VALIDATE PASSWORD component? : No

>Remove anonymous users? (Press y|Y for Yes, any other key for No) : Yes

>Disallow root login remotely? : Yes

>Remove test database and access to it? : Yes

>Reload privilege tables now? (Press y|Y for Yes, any other key for No) : Yes


* Connecting to MySQL using a blank password.
```
sudo mysql
```{{exec}}

* Select the database mysql
```
use mysql;
```{{exec}}

* Set the password **Pa$$word1** for the root user
```
alter user 'root'@'localhost' identified with caching_sha2_password by 'Pa$$word1';
```{{exec}}

* Create a Zabbix database with support for UTF-8 characters
```
create database zabbix character set utf8mb4 collate utf8mb4_bin;
```{{exec}}

* Create Zabbix user with password 'Pa$$word2'
```
create user 'zabbix'@'localhost' identified by 'Pa$$word2';
```{{exec}}

* Grant all privileges for 'zabbix' user
```
grant all on *.* to 'zabbix'@'localhost';
```{{exec}}

* Reload the grant tables from the disk and clear the cache for faster access
```
flush privileges;
```{{exec}}

* Quit from MySQL Command-Line Client
```
exit;
```{{exec}}

<br/>
