# Monitoring disk space


> Zabbix monitor the amount of free disk space. Create a temporary file so that it is large enough to trigger a file system usage message.

* Consider the template "Linux by Zabbix agent". Please, Click "Data collection", then "Templates" in the left control panel.

![Picture 801](./dataCollectionTemplates.png)

* Find the "Linux by Zabbix agent" template in the list and click on it.

![Picture 802](./linuxZabbixAgentTemplate.png)

* You will receive the following form.

![Picture 803](./linuxZabbixAgentForm.png)

* Сreate a new item in the template. Click on the tab "Items" and on the "Create item" button in the upper right corner.

![Picture 804](./createNewItem.png)

* Add a new item name "Free Disk Space in percent", Type of information "Numeric (float)", Units "%", Update interval 1m, Key **vfs.fs.size[/,pfree]**

![Picture 805](./freeDiskSpaceItem.png)

* Click "Add" button to save.

![Picture 806](./freeDiskSpaceAdd.png)

* Let's create a trigger, if there is less than 20% free disk space. Go to the "Triggers" tab and click on the "Create trigger" button in the upper right corner.

![Picture 807](./createTrigger.png)

* Add a new trigger name "Less than 20% free on disk", check the box "Allow manual close", Expression **last(/My_Host/vfs.fs.size[/,pfree])<20** and click "Add" button to save.

![Picture 808](./freeDiskSpaceTrigger.png)

* Let's create a graph to display free disk space. Go to the "Graphs" tab and click on the "Create graph" button in the upper right corner.

![Picture 809](./createGraph.png)

* Add graph name "Available disk space" and attach the "Free Disk Space in percent" item by clicking the "Add" link.

![Picture 810](./createNewGraph.png)

* Select the "Free Disk Space in percent" item , click "Select" Button to close popup.

![Picture 811](./selectFreeDiskSpaceItem.png)

* Click the "Add" button to create a new graph.

![Picture 812](./addNewGraph.png)

* Click "Monitoring" and then "Hosts" in the left control panel.

![Picture 813](./monitoringHosts.png)

* Click on the "Graphs" link in the "My_Host" row.

![Picture 814](./monitoringHostGraphs.png)

* We can watch the change of free space on the disk in real time in percentage.

![Picture 815](./avaibleDiskGraph.png)

> The operation of the trigger is displayed in the lower left corner.

* Determine, how much free space is available.
```
df -h
```{{exec}}

* The df command will report disk space usage on your filesystem, and -h will provide readable output. The result will look something like this:

![Picture 816](./freeDiskSpace.png)

In this case, the free space is 14G.

* Use the **fallocate** command, which allows you to create a file that takes up more than 80% of the available disk space```
```
fallocate -l 12G /tmp/temp.img
```{{exec}}

* We have taken more than 80% of the disk space

![Picture 817](./usageDiskSpace.png)

Zabbix activates a warning about the amount of free space on the disk.

* You can go to "Dashboards" to see description and details

![Picture 818](./currentProblemDashboards.png)

* Click "Monitoring", then "Hosts" in the left control panel.

![Picture 819](./monitoringDetails.png)

* You can see the graph by clicking on the link in the host line.

![Picture 820](./avaibleDiskGraphAlert.png)

* Delete the created temporary file to free up disk space
```
rm -f /tmp/temp.img
```{{exec}}


> Save the result of your work in the tracking system.

<br/>
