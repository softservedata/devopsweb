# Create a Jenkins pipeline job

>Click to the **new item** menu on the left side 

![Picture 21](../assets/step2pic1newItem.png)

>Type new **name** of Job and choose **Pipeline** type

![Picture 22](../assets/step2pic2createJob.png)

>Choose **Discard old builds**

![Picture 23](../assets/step2pic3oldBuilds.png)

>For first, choose **Pipeline script** option

![Picture 24](../assets/step2pic4pipelineScript.png)

>Paste the code into the script window

```
pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git url: '[repository]', branch: 'contact'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests package'
            }
        }
        stage('Unit Test') {
            steps {
                 sh 'mvn -B package -DskipTests'
            }
        }
    }
}
```

>Save the Job and check the execution with a manual run

![Picture 25](../assets/step2pic5saveJob.png)

![Picture 26](../assets/step2pic6buildNow.png)

>Click on the task status bar

![Picture 27](../assets/step2pic7statusBar.png)

>Select the **Console Output**

![Picture 28](../assets/step2pic8consoleOutput.png)

>You should get "Finished: SUCCESS"

![Picture 29](../assets/step2pic9finishSuccess.png)

<br/>

[repository]: https://github.com/softservedata/lv722.git
