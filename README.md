React App CI/CD Deployment using Jenkins, Docker & AWS
Project Overview
This project demonstrates end-to-end DevOps implementation:
    • Dockerized React application
    • CI/CD pipeline using Jenkins
    • Deployment on AWS EC2
    • Monitoring using Uptime Kuma

Tech Stack
    • React
    • Docker
    • Jenkins
    • AWS EC2
    • Docker Hub
    • Uptime Kuma

 CI/CD Flow
    1. Code pushed to GitHub (dev branch)
    2. Jenkins triggers build
    3. Docker image is built
    4. Image pushed to Docker Hub (dev repo)
    5. Application deployed on EC2
    6. Monitoring enabled

Docker Hub Repositories
    • Dev: https://hub.docker.com/r/30727/dev
    • Prod: https://hub.docker.com/r/30727/prod

Application URL
http://15.206.157.134

Monitoring
http://:3001

Scripts Used
build.sh
    • Builds Docker image
    • Tags image
    • Pushes to Docker Hub
deploy.sh
    • Stops old container
    • Pulls latest image
    • Runs application on port 80

📸 Screenshots Included
    • Jenkins Dashboard & Jobs
    • EC2 Instance & Security Group
    • Docker Hub Repositories
    • Running Application
    • Monitoring Dashboard

Outcome
Successfully implemented CI/CD pipeline with automated deployment and monitoring.
