# Configuring Users


* Enter the user name "**Admin**" with password "**zabbix**" to log in as a Zabbix superuser.

![Picture 401](./zabbixSignin.png)

Access to all menu sections will be granted.

> Media type information contains general instructions for using a medium as delivery channel for notifications.
  Specific details, such as the individual e-mail addresses to send a notification to are kept with individual users.

* In the "Alerts"/"Media types" section you can configure and maintain media type information.
  A listing of existing media types with their details is displayed.

![Picture 402](./alertsMediaTypes.png)

* You can configure and enable "media type" click on the "media type" link.

> To configure a new media type, click on the Create media type button in the top right-hand corner.

![Picture 403](./createMediaType.png)


* To view information about users, go to Users/Users.

![Picture 404](./menuUsers.png)

![Picture 405](./listUsers.png)


* To add a new user, click on the "Create user" button.

![Picture 406](./createUser.png)

* Type new Username, Name, Last name.

* Set the password 'Pa$$word3' for the New user

![Picture 407](./createUserForm.png)

* In the new user form, make sure to add your user to one of the existing user groups, for example 'Zabbix administrators'.

![Picture 408](./zabbixAdministrators.png)

> All mandatory input fields are marked with a red asterisk.

* By default, new users have no media (notification delivery methods) defined for them.

![Picture 409](./mediaTab.png)

* To create one, go to the 'Media' tab and click on Add.

![Picture 410](./addMedia.png)

> You can specify a time period when the medium will be active, by default a medium is always active.
  You can also customize trigger severity levels for which the medium will be active.

* Click on Add to save the medium, then go to the Permissions tab.

![Picture 411](./mediaEmail.png)

![Picture 412](./userPermissions.png)

* Permissions tab has a mandatory field Role.
  The role determines which frontend elements the user can view and which actions he is allowed to perform.
  Press Select and select one of the roles from the list.

![Picture 413](./adminRole.png)

* For example, select Admin role to allow access to all Zabbix frontend sections, except Administration.

![Picture 414](./userRoles.png)

> Later on, you can modify permissions or create more user roles.
  Upon selecting a role, permissions will appear in the same tab.

* Adding permissions

![Picture 415](./tabPermission.png)

* Click the Add button to finish creating a new user

![Picture 416](./createUserFinish.png)

* By default, a new user has no permissions to access hosts and templates.
  To grant the user rights, click on the group of the user in the Groups column (for example, 'Zabbix administrators').
  In the group properties form, go to the Host permissions tab to assign permissions to host groups.

![Picture 417](./hostPermissions.png)

> For example, mark the checkbox next to 'Linux servers', then click Select.

* Click the 'Read' button to set the permission level and then Add to add the group to the list of permissions.
  In the user group properties form, click Update.

![Picture 418](./hostGroup.png)


* Sign out of the administrator account

![Picture 419](./signoutAdmin.png)

* You may try to log in using the credentials of the new user.

![Picture 420](./zabbixUserSignin.png)

<br/>
