# Establishing project dependencies


> You need to install Java and Maven.

Java is a complex programming system. It includes a programming language and a development platform.
You will be able to run the Java code on any operating system without making any changes.
Java Runtime Environment (JRE) is a Java execution environment.
Java Development Kit (JDK) is an extended JRE. Includes JRE, compiler and other tools.

> Before starting, you have to make sure that all Ubuntu OS packages installed on the server are up to date.

* Update the package index
```
sudo apt update
```{{exec}}

* Ubuntu default repository included Java 17. This is the easiest way to install the JDK using the apt package manager
```
sudo apt -y install openjdk-17-jdk
```{{exec}}

* Once installed, verify the Java Virtual Machine version using the following command
```
java -version
```{{exec}}

* You should get the following output

![javaVersion](./javaVersion.png)

* Verify the Java compile version using the following command
```
javac -version
```{{exec}}

* You should get the following output

![javacVersion](./javacVersion.png)


> You can check for the latest Maven version here https://maven.apache.org/download.cgi

![mavenLatest](./mavenLatest.png)

* Download latest Apache Maven.
```
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
```{{exec}}

![mavenDownload](./mavenDownload.png)

* Unzip it to `/opt` directory
```
sudo tar xf apache-maven-3.9.6-bin.tar.gz -C /opt
```{{exec}}

* Create a sym-link
```
sudo ln -s /opt/apache-maven-3.9.6 /opt/maven
```{{exec}}

* Set up the env
```
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=/opt/maven/bin:$PATH
```{{exec}}

* Now you can verify that Maven is properly installed
```
mvn -version
```{{exec}}

* If successful, the output will look like this

![mavenVersionLatest](./mavenVersionLatest.png)


* Git client is likely already installed in Ubuntu linux. You can confirm this is the case with the following command:
```
git --version
```{{exec}}

* If you did not get output of a Git version number, you can install it with the Ubuntu default package manager
```
sudo apt -y install git
```{{exec}}

You can confirm that you have installed Git correctly by running the following command and checking that you receive relevant output.
```
git --version
```{{exec}}

* You should get the following page.

![gitVersion](./gitVersion.png)


<br/>
