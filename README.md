# finance-solution
"HTech Finance Solution is a Java web application that allows users to manage their financial accounts. It includes a Dockerfile for containerization and deployment to a Kubernetes cluster, as well as a Jenkins pipeline for continuous integration and deployment."
HTech Finance Solution
This is the source code repository for the HTech Finance Solution. It includes a Java web application that allows users to manage their financial accounts.

Application
The Java web application is built using the following technologies:

Java 8
Apache Maven
Apache Tomcat
To build the application, run the following command from the root directory of the project:

mvn clean package

This will generate a WAR file that can be deployed to a web server.

Docker
The HTech Finance Solution can be containerized using Docker. To build a Docker image, run the following command from the root directory of the project:

docker build -t <your-docker-registry>/htech-finance-app:latest .

This will create a Docker image with the HTech Finance Solution.

Kubernetes
The HTech Finance Solution can be deployed to a Kubernetes cluster using the following files:

 deployment.yaml: Defines the deployment of the Java web application to a Kubernetes pod.
 service.yaml: Defines a public service for the Java web application.

To deploy the HTech Finance Solution to a Kubernetes cluster, run the following command from the root directory of the project:

 kubectl apply -f deployment.yaml
 kubectl apply -f service.yaml

This will deploy the Java web application to a Kubernetes pod and expose it as a public service.

Jenkins
A Jenkinsfile is included in the root directory of the project to build and deploy the HTech Finance Solution to a Kubernetes cluster. The pipeline includes two stages: building the Java web application and creating a Docker image, and deploying the application to a Kubernetes cluster.

Files
The following files are included in the HTech Finance Solution:

 "src/main/java/com/htech/financeapp/financeapp.java": The main Java source file for the HTech Finance Solution.
 "pom.xml": The Apache Maven configuration file for the HTech Finance Solution.
 "Dockerfile": The Dockerfile for the HTech Finance Solution.
 "deployment.yaml": The Kubernetes deployment configuration file for the HTech Finance Solution.
 "service.yaml": The Kubernetes service configuration file for the HTech Finance Solution.
 "Jenkinsfile": The Jenkins pipeline configuration file for the HTech Finance Solution.

Github
The HTech Finance Solution is hosted on Github. To clone the repository, run the following command:
git clone https://github.com/htech/finance-solution.git

This will create a local copy of the repository on your machine.

Contributing
We welcome contributions to the HTech Finance Solution. If you would like to contribute, please create a new branch for your changes and submit a pull request.


Contact
If you have any questions or concerns about the HTech Finance Solution, please contact us at info@htech-solution.com


































# HTech Finance Solution

## Description

HTech Finance Solution is a web application that calculates the interest earned on a principal amount invested over a period of time.

## Technologies Used

- Java
- Apache Maven
- Docker
- Kubernetes

## Building and Running the Application

To build the application, run the following command:

mvn clean package


This will create a JAR file in the `target` directory.

To build a Docker container for the application, run the following command:

docker build -t htech-finance-app .


To run the application in a Kubernetes cluster, apply the 'service.yaml' and then the `deployment.yaml` file:

kubectl apply -f service.yaml

kubectl apply -f deployment.yaml

## Note:
You'll need to replace <your-docker-registry> with the hostname or IP address of your Docker registry where you've pushed the Docker image for the HTech Finance Solution.

This deployment.yaml file defines a Kubernetes deployment with one replica of the HTech Finance Solution container. The spec.template section specifies the container image to use, and the spec.selector section selects the pods associated with the deployment.

This service.yaml file defines a Kubernetes service with a type of LoadBalancer, which creates a public IP address and routes traffic to the service. The spec.selector section selects the pods associated with the deployment, and the spec.ports section maps the port 80 of the service to port 8080 of the container.
