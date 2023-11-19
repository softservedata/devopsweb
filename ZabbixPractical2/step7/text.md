# Adding a new host to the Zabbix server


> Installing the agent on the host is half of the process. Each host you want to monitor must be registered on the Zabbix server.



++++++



* After sign in, click "Data collection", then "Hosts" in the left control panel.

![Picture 701](./configurationHosts.png)

* Then click the "Create host" button in the upper right corner of the screen.

![Picture 701](./createHost.png)

This will present us with a host configuration form.


> Create a Hostname and IP address, and then add the host to the group.

* Add Hostname, for example, "My_Host"

![Picture 703](./addHostName.png)

* Click on the link "add" below "Interfaces" and select an agent

![Picture 704](./selectAgent.png)

* Leave the local address 127.0.0.1 and port 10050 for this example.

![Picture 705](./agentLocal.png)

* Select one or several existing groups by clicking "Select" button

![Picture 706](./selectHostGroup.png)

* Check the box next to "Linux servers" and "Zabbix servers" and then click "Select" button

![Picture 707](./serversLinuxZabbix.png)

A host can be in several groups.

* Before adding a group, click the Templates tab.

![Picture 708](./hostTemplates.png)


> Enter Template OS Linux by Zabbix agent​​ in the search field​​ and then select it from the list to add this template to the host.
There are many ready-made templates. Get to know them and choose the one that meets your requirements.


* Then go to the Encryption tab. Select No Encryption for Host Connections (Incoming Host Connections) and Host Connections​​ (Outgoing Host Connections)

![Picture 709](./hostEncryption.png)

Click the "Add" button at the bottom of the form to create a host.


* You will see the new host listed.

![Picture 710](./hostsAdded.png)

> Wait a minute and reload the page.

* Check whether the data from the agent appeared on the Zabbix server.

![Picture 711](./agentActive.png)


<br/>
