# Configuring Users


* Enter the user name "**Admin**" with password "**zabbix**" to log in as a Zabbix superuser.

![Picture 41](./zabbixSignin.png)

Access to all menu sections will be granted.


* To view information about users, go to Users/Users.

![Picture 42](./listUsers.png)


* To add a new user, click on Create user.
  In the new user form, make sure to add your user to one of the existing user groups, for example 'Zabbix administrators'.

![Picture 43](./createUser.png)

All mandatory input fields are marked with a red asterisk.


* By default, new users have no media (notification delivery methods) defined for them.
  To create one, go to the 'Media' tab and click on Add.

![Picture 44](./addMedia.png)

You can specify a time period when the medium will be active, by default a medium is always active.
You can also customize trigger severity levels for which the medium will be active.


* Click on Add to save the medium, then go to the Permissions tab.

![Picture 45](./tabPermission.png)

Permissions tab has a mandatory field Role.
The role determines which frontend elements the user can view and which actions he is allowed to perform.
Press Select and select one of the roles from the list.

For example, select Admin role to allow access to all Zabbix frontend sections, except Administration.
Later on, you can modify permissions or create more user roles.
Upon selecting a role, permissions will appear in the same tab.


* Adding permissions

![Picture 45](./tabPermission.png)

By default, a new user has no permissions to access hosts and templates.
To grant the user rights, click on the group of the user in the Groups column (for example, 'Zabbix administrators').
In the group properties form, go to the Host permissions tab to assign permissions to host groups.

![Picture 46](./hostPermissions.png)

For example, mark the checkbox next to 'Linux servers', then click Select.
Click the 'Read' button to set the permission level and then Add to add the group to the list of permissions.
In the user group properties form, click Update.

![Picture 47](./hostGroup.png)


* To grant permissions to templates, you will need to switch to the Template permissions tab and specify template groups.

* In Zabbix, access rights to hosts and templates are assigned to user groups, not individual users.

* You may try to log in using the credentials of the new user.

<br/>
