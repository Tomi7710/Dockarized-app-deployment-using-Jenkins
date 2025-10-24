### CI/CD Pipeline Automation with Docker, Jenkins, SonarQube and Maven

#### Project Overview
This project demonstrates a fully automated **Continuous Integration (CI)** and **Continuous Delivery (CD)** pipeline for a Java web application. The pipeline automates the build, test and code quality processes, containerization and deployment.  

It highlights end-to-end DevOps skills: **automation, infrastructure configuration, CI/CD orchestration, containerization and quality assurance**.

---

### Tech Stack
- **Language:** Java (Servlets, JSP)  
- **Build Tool:** Maven  
- **Version Control:** Git & GitHub  
- **CI/CD:** Jenkins  
- **Code Quality:** SonarQube  
- **Testing:** JUnit  
- **Deployment:** Docker, Apache Tomcat  
- **Cloud:** AWS EC2, VPC, Security Groups  

---

### Features
- Source code management with Git/GitHub  
- Infrastructure security with AWS VPC and Security Groups  
- Fully automated CI/CD pipeline with Jenkins  
- Static code analysis with SonarQube and Quality Gate enforcement  
- Automated JUnit test execution and reporting  
- Dockerized deployment to Apache Tomcat  
- Health checks and container log verification post-deployment  
- Email notifications on build success or failure    

---

### Repository Structure
```
NumberGuessGame/
│-- src/
│ ├── main/
│ │ ├── java/com/studentapp/NumberGuessServlet.java
│ │ ├── webapp/WEB-INF/web.xml
│ │ └── webapp/index.jsp
│ └── test/
│ └── java/com/studentapp/NumberGuessServletTest.java
│-- pom.xml
│-- README.md
│-- .gitignore
│-- Jenkinsfile
│-- Dockerfile
```

---

### Application Logic
The application is a **Number Guessing Game**:  
- Server generates a random number  
- User submits guesses via a web form  
- System responds with hints ("too high" / "too low") until the correct number  

Built using the **MVC pattern**:  
- **Model:** Java classes for game logic  
- **View:** JSP for user interface  
- **Controller:** Servlets for request handling  

---

### Key Configuration Files
- **pom.xml:** Manages dependencies and build lifecycle  
- **Dockerfile:** Defines containerization and deployment instructions  
- **Jenkinsfile:** Defines CI/CD pipeline stages  

---

### CI/CD Workflow
**Build → SonarQube Analysis → Quality Gate Check → Test → Dockerized Deployment**  

#### Workflow Highlights
- **Checkout:** Pulls latest code from GitHub  
- **Build:** Compiles Java app and packages WAR file via Maven  
- **SonarQube Analysis:** Runs static code analysis  
- **Quality Gate Check:** Pipeline fails if SonarQube gate is not passed  
- **Test:** Executes JUnit tests and publishes results in jenkins  
- **Cleanup:** Stops and removes existing containers to avoid conflicts  
- **Docker Build & Deploy:** Builds new Docker image and deploys to Tomcat  
- **Verification:** Health checks and container logs confirm deployment success  
- **Notifications:** Sends email alerts on build success or failure  

