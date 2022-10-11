# CI-CD with K8s
* This project will instruct you how to build a pipeline that his mission is to deploy your resources into K8s managed cluster

# The process behind this scenario:

<img width="640" alt="k8s-cicd" src="https://user-images.githubusercontent.com/105926044/183269346-675de85c-adb4-4910-81bc-c25f3442f108.png">




# Introduction to Node.js Weight Tracker
 This will be the app which we will deploy in our proejct.
* [Official repo of the Node.js Weight Tracker](https://github.com/oktadev/okta-nodejs-postgres-weight-tracker-example).
* [Development guide of the Node.js Weight Tracker](https://developer.okta.com/blog/2020/06/01/node-postgres-weight-tracker).


# Prerequisites for the pipeline part:
* Microsoft Azure account, [Create Azure account](https://azure.microsoft.com/en-us/free/).
* Azure Devops account, [Create Azure Devops account](https://azure.microsoft.com/en-us/services/devops/).
* Github account, [Create Github account](https://github.com/signup).

# Deploy Aks cluster: 
 Managed cluster is a great method to work with Kubernetes.
* [Deploy Aks cluster](https://docs.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-cli).


# The CI part:
* In the CI part we will build our image and push it to [Azure Container Registry](https://azure.microsoft.com/en-us/services/container-registry/#features) you can build one via the Azure portal.
* After that you have to [create a new project in the azure devops portal](https://docs.microsoft.com/en-us/azure/devops/organizations/projects/create-project?).
* After you create the container registry resource and the new project you have to build 2 environments (staging and production) via the azure devops and connect your Kubernetes to the registry!
![envs](https://user-images.githubusercontent.com/105926044/178037865-6e88e873-e9d2-4063-a3d2-de5c4fcff057.jpg)

# Build an agent
* For the CI part you also need to build an [agent](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/v2-windows?view=azure-devops).


# Run the pipelines:
* Before we run the pipelines you have to [clone this repo](https://github.com/omriganini/K8s-) to your version control hub (Github is the most recommended) pay attention to change the details in the yaml file according to your environment.
# Create a new pipeline: ![pipe](https://user-images.githubusercontent.com/105926044/178039928-9ba7f2f9-a67b-4979-8ee4-4d0c79003bc3.jpg)
# Choose the source of your code: ![source](https://user-images.githubusercontent.com/105926044/178040675-c5434dca-a3d5-4d7d-91ec-432da9613495.jpg)
# Complete CI-CD Pipeline: ![CICDPIPE](https://user-images.githubusercontent.com/105926044/178041153-9dd34af3-9227-461b-aa27-5bcc29e50375.jpg)

# Example of the app after deploy:
![week6 staging](https://user-images.githubusercontent.com/105926044/178041463-0e9e05b7-49cd-45eb-8445-83aafee0eafa.jpg)


# Very important thing about this pipeline is that it run a new pipeline after every commit of your code so pay attention and enjoy your app.
