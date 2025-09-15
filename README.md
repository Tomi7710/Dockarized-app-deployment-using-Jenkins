Project Overview
This project demonstrates the automated deployment of a Java web application. It showcases a complete CI/CD workflow where the source code is built and tested with Maven, then automatically deployed to a Tomcat server through a Jenkins pipeline, showcasing how DevOps streamlining software delivery.

This project is used to demonstrate:

Source code management with Git/GitHub
Building CI/CD pipelines
Containerization (Docker)
Deployment to cloud platforms

Tech Stack Tools & Technologies
Language: Java

Version Control: Git & GitHub

DevOps Tools: Jenkins (CI/CD), Tomcat, Docker (deployment), Git/GitHub (repo)

This repository is organized to separate code and testing. The src folder contains the main folder and the test folder. The main folder contains our NumberGuessingGame application and the webapp folder. The web app folder contains the index.jsp file and the – WEB-INF folder which contains the web.xml file. The test folder has our servlet test code

The application is a number guessing game, where the server randomly selects a number and the player tries to guess it.After each guess, the program provides hints such as "too high" or "too low" until the correct number is guessed. It is built as a Java web application, using servlets as the controller for handling requests and responses, JSP as the view web interface and the NumberGuessingGame class as the model containing the logic for generating the random number and validating the player’s guesses.

Key Configuration Files: 
Pom.xml file: manages dependencies and build lifecycle

Docker file: This defines how our app container is built and contains the containerization and deployment instructions. The CI/CD pipeline picks up this file during the deployment stage and runs the containers automatically. used to build a container image of the app.

Jenkins file: automates the CI/CD process - build, test, deploy

Workflow: fully automated CI/CD pipeline: build → test → SonarQube → Docker image → deployment → verification.

So the workflow is: developers push code → pipeline runs automatically → Docker builds the app → containers are deployed → we can test the running application in the container.App runs in containerized environment with automated deployment


