# Install and configure Zabbix


* Install Zabbix repository
```
sudo wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu20.04_all.deb
```{{exec}}
```
sudo dpkg -i zabbix-release_6.4-1+ubuntu20.04_all.deb
```{{exec}}

* Install Zabbix server, frontend, agent
```
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-nginx-conf zabbix-sql-scripts zabbix-agent
```{{exec}}

* Import initial schema and data. You will be prompted to enter your newly created password: Pa$$word2
```
sudo zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql --default-character-set=utf8mb4 -u zabbix --passwprd="Pa$$word2" zabbix
```{{exec}}

* Configure the database for Zabbix server. Edit file **/etc/zabbix/zabbix_server.conf**
```
sudo vi /etc/zabbix/zabbix_server.conf
```{{exec}}

and set up
```
DBPassword=Pa$$word1
```
Click "i" to edit and "esc", ":" and "wq" to save and exit

* Configure PHP for Zabbix frontend. Edit file **/etc/zabbix/nginx.conf** uncomment and set 'listen' and 'server_name' directives.
```
sudo vi /etc/zabbix/nginx.conf
```{{exec}}

and set up
```
listen 8080;
server_name example.com;
```

* Start Zabbix server and agent processes and make it start at system boot.
```
sudo systemctl restart zabbix-server zabbix-agent nginx php7.4-fpm
```
```{{exec}}
sudo systemctl enable zabbix-server zabbix-agent nginx php7.4-fpm
```{{exec}}

* Open Zabbix UI web page

### Click here to [ACCESS JENKINS]({{TRAFFIC_HOST1_8080}}) server

It's also possible to access ports using the top-right navigation in the terminal.
Or we can display the link to that page:

[ACCESS PORTS]({{TRAFFIC_SELECTOR}})

<br/>
