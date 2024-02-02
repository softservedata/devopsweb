# Update Python dependencies

>Ubuntu come with Python installed by default, but, it are usually not the latest.

>First, let's update some packages.


* python3-openssl is broken on ubuntu, incompatible with python3-cryptography.
Remove these apt packages without removing their dependencies
```
sudo dpkg -r --force-depends python3-openssl python3-cryptography
```{{exec}}

* You should see the following

![removePython3Openssl19](./removePython3Openssl19.png)

* Install latest version of these packages into system
```
sudo pip3 install pyopenssl cryptography
```{{exec}}

* You should see the following

![installedPyopenssl24](./installedPyopenssl24.png)

* and run
```
sudo apt install -y --fix-missing python3-openssl python3-cryptography
```{{exec}}


* Installing python-pyasn1 package on Ubuntu
```
sudo apt update
```{{exec}}

* and run
```
sudo apt install python-pyasn1
```{{exec}}

* You should see the following

![updatePythonPyasn1](./updatePythonPyasn1.png)


>Now we are ready to install SEToolkit on our system.

<br/>
