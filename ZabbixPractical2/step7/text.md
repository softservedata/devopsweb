# Adding a new host to the Zabbix server


> Installing the agent on the host is half of the process. Each host you want to monitor must be registered on the Zabbix server.

* After sign in, click "Data collection", then "Hosts" in the left control panel.

![Picture 701](./configurationHosts.png)

* Then click the "Create host" button in the upper right corner of the screen.

![Picture 702](./createHost.png)

This will present us with a host configuration form.


> Create a Hostname and IP address, and then add the host to the group.

* Add Hostname, for example, "My_Host"

![Picture 703](./addHostName.png)

* Click on the link "add" below "Interfaces" and select an agent.

![Picture 704](./selectAgent.png)

* Leave the local address 127.0.0.1 and port 10050 for this example.

![Picture 705](./agentLocal.png)

* Select one or several existing groups by clicking "Select" button.

![Picture 706](./selectHostGroup.png)

* Check the box next to "Linux servers" and "Zabbix servers" and then click "Select" button.

![Picture 707](./serversLinuxZabbix.png)

* A host can be in several groups.

![Picture 708](./severalHostGroups.png)

* Before adding a group, click "Select" button next to the "Templates".

![Picture 709](./hostTemplates.png)

* In the search field, type "Templates/" on select "Templates/Operating system".

![Picture 710](./selectTemplateOS.png)

> There are many ready-made templates. Get to know them and choose the one that meets your requirements.

Please check the box next to "Linux by Zabbix Agent" from the drop-down list and press "Select" button.

![Picture 711](./linuxZabbixAgent.png)

* You should get the following form.

![Picture 712](./templateFormAgent.png)

* Then go to the "Encryption" tab. Select "No Encryption" for Host Connections (Incoming Host Connections) and Host Connections​​ (Outgoing Host Connections).

![Picture 713](./encryptionTab.png)

* Click the "Add" button at the bottom of the form to create a host.

![Picture 714](./myHostAdd.png)

* To avoid a conflict, disable the "Zabbix server". Check the box next to "Zabbix server" and click "Disable" button

![Picture 715](./zabbixServerDisable.png)

* You will see the new host listed.

![Picture 716](./hostsAdded.png)

![Picture 717](./iconZabbixGreen.png) - host is available, a metric check has been successful.


> Wait a minute and reload the page.

* Click "Monitoring" and then "Hosts" in the left control panel.

![Picture 718](./monitoringHosts.png)

* Click on the host name "My_Host" and select from the context menu "Latest data"

![Picture 719](./hostContextMenu.png)

* Check whether the data from the agent appeared on the Zabbix server.

![Picture 720](./agentActive.png)

<br/>
