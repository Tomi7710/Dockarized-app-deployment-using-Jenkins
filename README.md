DevOps Project: CI/CD Pipeline with Jenkins, Maven, SonarQube and Docker
Project Overview
This project demonstrates a fully automated Continuous Integration and Continuous Delivery (CI/CD) pipeline for a Java web application. The pipeline automates the build, test and code quality analysis processes, containerization and deployment.
It highlights end-to-end DevOps skills: automation, infrastructure configuration, CI/CD orchestration, containerization and quality assurance.

Tech Stack 
•	Language: Java (Servlets, JSP) 
•	Build Tool: Maven 
•	Version Control: Git & GitHub 
•	CI/CD: Jenkins 
•	Code Quality: SonarQube 
•	Testing: JUnit 
•	Deployment: Docker, Apache Tomcat 
•	Cloud: AWS EC2, VPC, Security Groups 

Features 
•	Source code management with Git/GitHub 
•	Infrastructure Security using AWS VPC, Security Group 
•	Automated CI/CD pipeline with Jenkins
•	Static code analysis and Quality Gate enforcement using SonarQube 
•	Automated JUnit test execution and reporting in Jenkins 
•	Dockerized deployment to Apache Tomcat 
•	Health checks and container log verification post-deployment
•	Email notifications on build success or failure 
•	Cloud-hosted on AWS with secured networking

Repository Structure
NumberGuessGame/
│-- src/
│   ├── main/
│   │   ├── java/com/studentapp/NumberGuessServlet.java
│   │   ├── webapp/WEB-INF/web.xml
│   │   └── webapp/index.jsp
│   └── test/
│       └── java/com/studentapp/NumberGuessServletTest.java
│-- pom.xml
│-- README.md
│-- .gitignore
|-- Jenkinsfile
|-- Dockerfile

Application Logic
The application is a Number Guessing Game:
•	The server generates a random number
•	The user submits guesses via a web form
•	The system responds with hints ("too high" / "too low") until correct
It is built as a Java web application using:
•	Servlets (Controller) for request handling
•	JSP (View) for user interface
•	Java classes (Model) for game logic

Key Configuration Files
Pom.xml: manages dependencies and build lifecycle
Dockerfile: defines the containerization and deployment instructions
Jenkinsfile: defines CI/CD pipeline stages

Workflow
Fully automated CI/CD pipeline workflow: build → SonarQube Analysis → Quality Gate Check → Test → Dockerized deployment → verification
Highlights
Checkout – Pulls latest code from GitHub
Build – Compiles the Java app and packages a WAR file using Maven
SonarQube Analysis – Runs static code analysis and submits results to SonarQube
Quality Gate Check – Jenkins waits for SonarQube results; build fails if gate not passed
Test – Executes JUnit test cases and publishes results in Jenkins
Cleanup – Stops and removes any existing container to avoid conflicts
Docker Build & Deploy – Builds a new Docker image and deploys it to Tomcat
Verification – Health check via HTTP request and container logs to confirm successful deployment
Notifications – Sends email alerts on build success or failure


