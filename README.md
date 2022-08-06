# CI-CD with Docker
* This project will instruct you how to build a pipeline of CI-CD that the main tool for the CD part will be Docker, which in the end should look like this:
![docker-](https://user-images.githubusercontent.com/105926044/178027771-68ecd719-bbf4-441a-ba11-f2070e7ff1ff.png)

# The process behind this scenario:

<img width="651" alt="docker-cicd" src="https://user-images.githubusercontent.com/105926044/178028064-c0fe4e7a-9220-416e-bfc9-1021ecbbc2f4.png">




# Introduction to Node.js Weight Tracker
 This will be the app which we will deploy in our proejct.
* [Official repo of the Node.js Weight Tracker](https://github.com/oktadev/okta-nodejs-postgres-weight-tracker-example).
* [Development guide of the Node.js Weight Tracker](https://developer.okta.com/blog/2020/06/01/node-postgres-weight-tracker).

# A short demo:
![Demo](docs/build-weight-tracker-app-demo.gif)

# Prerequisites for the pipeline part:
* Microsoft Azure account, [Create Azure account](https://azure.microsoft.com/en-us/free/).
* Azure Devops account, [Create Azure Devops account](https://azure.microsoft.com/en-us/services/devops/).
* Github account, [Create Github account](https://github.com/signup).

# Build your Iac with azure: 
 Terraform is a great tool to build you infrastructure with.
* [What is Terraform](https://www.terraform.io/intro).
* [Repo for the project](https://github.com/omriganini/terraform-ansible).

# The CI part:
* In the CI part we will build our image and push it to [Azure Container Registry](https://azure.microsoft.com/en-us/services/container-registry/#features) you can build one via the Azure portal.
* After that you have to [create a new project in the azure devops portal](https://docs.microsoft.com/en-us/azure/devops/organizations/projects/create-project?).
* After you create the container registry resource and the new project you have to build 2 environments (staging and production) via the azure devops and connect your machines to the registry!
![envs](https://user-images.githubusercontent.com/105926044/178037865-6e88e873-e9d2-4063-a3d2-de5c4fcff057.jpg)

# Build an agent
* For the CI part you also need to build an [agent](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/v2-windows?view=azure-devops).

# Create your env file:
* in each of the machines you have to create env file in your user dir, example: /home/omriganini you must call this file .env
* [Env file sample](https://github.com/oktadev/okta-nodejs-postgres-weight-tracker-example/blob/master/.env.sample) pay attention for the details you fill in this file!

# Run the pipelines:
* Before we run the pipelines you have to [clone this repo](https://github.com/omriganini/CI-CD-Docker) to your version control hub (Github is the most recommended) pay attention to change the details in the yaml file according to your environment.
# Create a new pipeline: ![pipe](https://user-images.githubusercontent.com/105926044/178039928-9ba7f2f9-a67b-4979-8ee4-4d0c79003bc3.jpg)
# Choose the source of your code: ![source](https://user-images.githubusercontent.com/105926044/178040675-c5434dca-a3d5-4d7d-91ec-432da9613495.jpg)
# Complete CI-CD Pipeline: ![CICDPIPE](https://user-images.githubusercontent.com/105926044/178041153-9dd34af3-9227-461b-aa27-5bcc29e50375.jpg)

# Example of the app after deploy:
![week6 staging](https://user-images.githubusercontent.com/105926044/178041463-0e9e05b7-49cd-45eb-8445-83aafee0eafa.jpg)


# Very important thing about this pipeline is that it run a new pipeline after every commit of your code so pay attention and enjoy your app :)
