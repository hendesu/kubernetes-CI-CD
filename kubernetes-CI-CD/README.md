## CI-CD Kubernetes pipline.
![Demo](https://www.a10networks.com/wp-content/uploads/OnDemandWebinar-Kubernetes-KeyGraphic-@2x-768x422.png)


### Requirements

* nodejs 14.x
* docker on your machine. how to install - https://docs.docker.com/engine/install/ubuntu/
* free okta account.
* account in azure devops
* account in azure cloud (you will need to purchase a subscription)
* helm on your machine. install using chocolatey.
* nginx on your clusters.

### step by step:

* create pipline in azure devops
* create two kubernetes cluster's in two different resource groups in azure cloud.
* create a virtual machine and install docker & helm & kubectl on it, and create an agent.
* create container registry on azure cloud to store you'r images.
* install nginx on your clusters using azure cli. use this command on the zure cli - kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.1/deploy/static/provider/cloud/deploy.yaml
* configure your ci cd pipline.
* configure you'r database using helm. how to configure - https://artifacthub.io/packages/helm/bitnami/postgresql
> Deploy the NodeWeightTracker application on AKS meeting the following requirements:
>>
> The NodeWeightTracker application must be accessible from the internet
> The NodeWeightTracker application must be exposed to the internet on port 80
> The NodeWeightTracker must have at least 3 instances to ensure high availability
> Use configmaps/secrets to store your application configurations
> You must expose your application using the ingress controller

## the pipline:

![Demo](https://bootcamp.rhinops.io/images/k8s-cicd.png)



## results:

![Screenshot](https://github.com/hendesu/kubernetes-CI-CD/blob/master/kubernetes-CI-CD/src/staging.PNG)

![Screenshot](https://github.com/hendesu/kubernetes-CI-CD/blob/master/kubernetes-CI-CD/src/production.PNG)




# Node.js Weight Tracker

![Demo](docs/build-weight-tracker-app-demo.gif)

This sample application demonstrates the following technologies.

* [hapi](https://hapi.dev) - a wonderful Node.js application framework
* [PostgreSQL](https://www.postgresql.org/) - a popular relational database
* [Postgres](https://github.com/porsager/postgres) - a new PostgreSQL client for Node.js
* [Vue.js](https://vuejs.org/) - a popular front-end library
* [Bulma](https://bulma.io/) - a great CSS framework based on Flexbox
* [EJS](https://ejs.co/) - a great template library for server-side HTML templates

**Requirements:**

* [Node.js](https://nodejs.org/) 14.x
* [PostgreSQL](https://www.postgresql.org/) (can be installed locally using Docker)
* [Free Okta developer account](https://developer.okta.com/) for account registration, login

## Install and Configuration

1. Clone or download source files
1. Run `npm install` to install dependencies
1. If you don't already have PostgreSQL, set up using Docker
1. Create a [free Okta developer account](https://developer.okta.com/) and add a web application for this app
1. Copy `.env.sample` to `.env` and change the `OKTA_*` values to your application
1. Initialize the PostgreSQL database by running `npm run initdb`
1. Run `npm run dev` to start Node.js

The associated blog post goes into more detail on how to set up PostgreSQL with Docker and how to configure your Okta account.
