☸️ Kubernetes Deployment on AWS EKS
📌 Project Overview
This project demonstrates deploying a containerized Java application to Amazon EKS using Kubernetes manifests.
It extends Jenkins CI/CD pipeline by enabling deployment to a Kubernetes-based environment.
# Prerequisites
- JDK 21
- Maven 3.9
- MySQL 8 
________________________________________
🧰 Tech Stack
•	Kubernetes
•	Amazon EKS
•	Docker
•	Amazon ECR
•	kubectl
•	GitHub Actions (CI/CD integration)
________________________________________
⚙️ Deployment Workflow
1.	Build Docker image
2.	Push image to Amazon ECR
3.	Update Kubernetes deployment YAML
4.	Apply configuration using kubectl
5.	Kubernetes pulls image and runs pods
________________________________________
📂 Kubernetes Resources
•	Deployment
•	Service
•	Ingress 
•	Secrets (ECR pull secret)
________________________________________
🔐 Image Pull Configuration
Kubernetes uses a Docker registry secret to pull images from Amazon ECR.
kubectl create secret docker-registry regcred \
  --docker-server=<ECR_URL> \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password)
________________________________________
🧠 Key Features
•	Containerized application deployment
•	Integration with AWS ECR
•	Kubernetes-based orchestration
•	Scalable and resilient architecture
________________________________________
🚀 Future Improvements
•	Helm chart implementation
•	Auto-scaling with HPA
________________________________________
👩🏽‍💻 Author
Tina Collins
________________________________________
