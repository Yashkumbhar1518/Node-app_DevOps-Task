 Node.js CRUD Backend – DevOps Project (Docker, CI/CD, Kubernetes)

Overview
This project is a **Node.js + MongoDB CRUD backend application** deployed using Docker, GitHub Actions, and Kubernetes (Minikube).  
It demonstrates the complete DevOps workflow — from development to automated build, push, and deployment.



Tech Stack
- Backend: Node.js (Express.js, Mongoose)
- Database: MongoDB Atlas
- Containerization: Docker
- Orchestration: Kubernetes (via Minikube)
- CI/CD: GitHub Actions


Implementation Steps

1) Backend Setup
- Built a simple CRUD API using Express and connected it to MongoDB Atlas.
- Tested endpoints with Postman.

2) Dockerization
- Created a "Dockerfile" and containerized the Node.js app.
- Verified that the app runs correctly inside the Docker container.

3) CI/CD (GitHub Actions)
- Configured a GitHub Actions workflow to:
  - Build the Docker image.
  - Push the image automatically to Docker Hub using secrets.

4) Kubernetes Deployment (Minikube)
- Used Minikube as a local Kubernetes cluster for deployment.
- Applied manifests from the k8s/ folder:
  - deployment.yaml → defines app replicas and image.
  - service.yaml → exposes the app to be accessible via browser/Postman.
- Verified the app and all APIs are working correctly.



Why I used Minikube Instead of Terraform?
I used Minikube instead of Terraform + AWS EKS because I’m currently in the learning phase of Terraform and i dont have hands-on on it .  
Minikube provided a fully functional local Kubernetes environment to understand and implement the end-to-end workflow effectively.


Workflow Summary

Code Commit → GitHub Actions → Docker Build → Push to Docker Hub
             ↓
        Kubernetes (Minikube)
             ↓
  Deployment & Service → Application Live
