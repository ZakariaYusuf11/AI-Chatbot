# 🤖 AI Chatbot - DevOps Deployment on Azure

This project is a **production-grade, cloud-native AI chatbot** running on Microsoft Azure with full DevOps automation. It uses **Terraform, Docker, Kubernetes (AKS)**, and **OpenAI GPT integration**, along with a **custom-built frontend** styled for a DevOps vibe.

---

## ✅ What’s Working

- **Modular Infrastructure-as-Code (IaC)** with Terraform for:

  - Azure Kubernetes Service (AKS)
  - Azure Container Registry (ACR)
  - Virtual Network & Subnet

- **FastAPI Chatbot API** with real-time OpenAI GPT responses

- **Containerized with Docker**, stored in ACR

- **Deployed to AKS** using Kubernetes manifests

- **Public access via LoadBalancer**  
  🌐 [http://20.246.167.134](http://20.246.167.134)

- **Custom DevOps-themed chatbot UI** with:

  - GPT-powered responses
  - Clear Chat functionality
  - Background image with DevOps logos

- **Live Swagger docs**  
  📘 [http://20.246.167.134/docs](http://20.246.167.134/docs)

- **CI/CD pipeline with GitHub Actions**:
  - Builds and pushes Docker image
  - Deploys to AKS automatically on `main` push

---

## 🌱 Coming Soon

- 📊 Prometheus + Grafana monitoring
- 🌐 Custom domain with HTTPS (e.g., `chatbot.cloudcity.dev`)
- 🧪 Environment isolation (dev, staging, production)
- 🔐 Rate limiting and authentication
- 🧠 Persistent chat history (database integration)

---

## 📁 Project Structure

```

AI-Chatbot/
├── app/ # FastAPI chatbot app
│ ├── main.py # Chatbot API code
│ ├── requirements.txt # Python dependencies
│ └── Dockerfile # Container instructions
│
├── k8s/ # Kubernetes deployment config
│ ├── deployment.yaml # Deploys chatbot app to AKS
│ └── service.yaml # Exposes it via LoadBalancer
│
├── terraform/
│ ├── modules/ # Reusable Terraform modules
│ │ ├── network/ # VNet + Subnet
│ │ ├── aks/ # AKS cluster setup
│ │ └── acr/ # Azure Container Registry
│ │
│ └── environments/
│ └── dev/
│ ├── main.tf
│ ├── variables.tf
│ ├── terraform.tfvars
│ ├── outputs.tf
│ └── backend.tf
│
├── .github/ # (Coming soon) GitHub Actions workflows
│ └── workflows/
│ ├── ci-cd.yml
│ └── trivy-scan.yml
│
├── .env.example # Sample env vars
└── README.md # Project overview (this file)
```

---

## 📦 Tech Stack

- **Infrastructure**: Terraform, Azure CLI, ARM
- **App Framework**: FastAPI (Python)
- **AI Integration**: OpenAI GPT-3.5
- **Containerization**: Docker
- **Orchestration**: Kubernetes (AKS)
- **Registry**: Azure Container Registry (ACR)
- **Frontend**: Static HTML/CSS/JS (DevOps themed)
- **CI/CD**: GitHub Actions

---

## 🧠 Why This Matters

This project simulates how modern tech companies deploy, monitor, and scale containerized microservices on the cloud. It demonstrates:

- Real-world cloud architecture
- Secure, scalable deployments
- Clean infrastructure management using modules
- Foundation for MLOps and AI production apps

---

## 👨‍💻 Status

🟢 **LIVE** — Chatbot accessible via LoadBalancer  
🤖 **GPT Integration** — Live with OpenAI API  
🚀 **CI/CD** — Full pipeline: build, push, deploy  
🎨 **Frontend** — Custom UI deployed and themed  
🔧 **Next Focus** — Monitoring, auth, domains

---

cd

> Built with ☁️ love, Terraformed foundations, and container-powered robots 🧱🤖🐳
