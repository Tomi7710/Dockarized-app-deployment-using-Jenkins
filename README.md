DevOps Project: CI/CD Pipeline with Jenkins, Maven, SonarQube and Docker

Project Overview

This project demonstrates the implementation of a Continuous Integration and Continuous Delivery (CI/CD) pipeline for a Java web application deployed on Docker with Tomcat. The pipeline automates the build, test and code quality analysis processes, containerization and deployment, showcasing real-world DevOps practices in a cloud environment.

This project highlights end-to-end DevOps skills: automation, infrastructure configuration, CI/CD orchestration and quality assurance

Tech Stack 
Language: Java (Servlets, JSP)
Build Tool: Maven
Version Control: Git & GitHub
CI/CD: Jenkins
Code Quality: SonarQube
Testing: JUnit
Deployment: Docker, Tomcat
Cloud: AWS EC2, VPC, Security Groups
OS: Linux

Features
Source code management with Git/GitHub
Infrastructure Security using AWS VPC, Security Group
Automated CI/CD pipeline
Static code analysis and Quality Gate enforcement using SonarQube
Automated JUnit test execution and reporting in Jenkins
Dockerized deployment to Apache Tomcat 
Email notifications on build success or failure
Health checks and container log verification post-deployment
Cloud-hosted on AWS with secured networking

Repository Structure

This repository is organized to separate code and testing. The src folder contains the main folder and the test folder. The main folder contains our NumberGuessingGame application and the webapp folder. The web app folder contains the index.jsp file and the – WEB-INF folder which contains the web.xml file. The test folder has our servlet test code

Application Logic

The application is a Number Guessing Game

  The server generates a random number.

  The user submits guesses via a web form.

  The system responds with hints ("too high" / "too low") until correct.

  It is built as a Java web application using:

    Servlets (controller) for request handling

    JSP (view) for user interface

    Java classes (model) for game logic


Key Configuration Files: 

Pom.xml file: manages dependencies and build lifecycle

Docker file: defines how the app container is built and contains the containerization and deployment instructions 

Jenkins file: defines CI/CD pipeline stages 

Workflow

Fully automated CI/CD pipeline workflow: build → SonarQube Analysis → Quality Gate Check → Test → Dockerized deployment → verification

Key Highlights

Checkout – Pulls latest code from GitHub.
Build – Compiles the Java app and packages a WAR file using Maven.
SonarQube Analysis – Runs static code analysis and submits results to SonarQube.
Quality Gate Check – Jenkins waits for SonarQube results; build fails if gate not passed.
Test – Executes JUnit test cases and publishes results in Jenkins.
Cleanup – Stops and removes any existing container to avoid conflicts.
Docker Build & Deploy – Builds a new Docker image and deploys it to Tomcat.
Verification – Health check via HTTP request and container logs to confirm successful deployment.
Notifications – Sends email alerts on build success or failure.
