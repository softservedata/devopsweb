# Create a Jenkins pipeline job

>Click to the **new item** menu on the left side 

![Picture 21](../assets/step2pic1newItem.png)

>Type new **name** of Job and choose **Pipeline** type

![Picture 22](../assets/step2pic2createJob.png)

>Click **Discard old builds**

![Picture 23](../assets/step2pic3oldBuilds.png)

>Select **Pipeline script from SCM** option

![Picture 24](../assets/step2pic4pipelineScriptSCM.png)

>Choose as "Script Path" Jenkinsfile

![Picture 25](../assets/step2pic5jenkinsfile.png)

>Specify the repository and branch 

![Picture 26](../assets/step2pic6repository.png)

>Save the Job and use next template for "Jenkinsfile"

```
pipeline {
    agent any
    environment {
      // TODO
    }
    stages {
        stage('Build') {
            steps {
                // TODO
            }
        }
        stage('Unit Test') {
            steps {
                 // TODO
            }
        }
    }
}
```

<br/>

[repository]: https://github.com/softservedata/devopsjen
