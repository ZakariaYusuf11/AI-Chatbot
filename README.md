# 🤖 AI Chatbot - DevOps Deployment on Azure

This project is a **production-ready, cloud-native AI chatbot** deployed on Microsoft Azure using a full DevOps workflow. It is modular, scalable, and designed to mimic real-world cloud application deployment processes using Terraform, Docker, Kubernetes, and Azure-native services.

---

## ✅ What’s Working

- **Modular Infrastructure-as-Code (IaC)** using Terraform for:
  - Azure Kubernetes Service (AKS)
  - Azure Container Registry (ACR)
  - Virtual Network & Subnet
- **Chatbot API** built with FastAPI & Python
- **Containerized** using Docker and pushed to ACR
- **Deployed to AKS** using Kubernetes `deployment.yaml` and `service.yaml`
- **Public access via LoadBalancer** on AKS
- **Live Swagger docs** at:  
  🌐 [http://20.246.167.134/docs](http://20.246.167.134/docs)

---

## 🌱 Coming Soon

- 🔐 OpenAI GPT-3.5 / GPT-4 integration (via Kubernetes secrets)
- ⚙️ GitHub Actions for CI/CD pipeline (build → push → deploy)
- 📈 Prometheus + Grafana monitoring stack
- 🌐 Custom domain with TLS (e.g., `chatbot.cloudcity.dev`)
- 🧪 Environment isolation (dev, staging, production)

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

- **Infrastructure**: Terraform, Azure Resource Manager
- **App Framework**: FastAPI (Python)
- **Containerization**: Docker
- **Orchestration**: Kubernetes (AKS)
- **Registry**: Azure Container Registry (ACR)
- **Monitoring**: (Planned) Prometheus + Grafana
- **CI/CD**: (Planned) GitHub Actions

---

## 🧠 Why This Matters

This project simulates how modern tech companies deploy, monitor, and scale containerized microservices on the cloud. It demonstrates:

- Real-world cloud architecture
- Secure, scalable deployments
- Clean infrastructure management using modules
- Foundation for MLOps and AI production apps

---

## 👨‍💻 Status

🟢 **LIVE** — public endpoint running on AKS  
🔧 **In Progress** — AI integration, CI/CD, monitoring  
📦 **Staged for expansion** — supports future environments and scaling

---

> Built with ☁️ love, Terraformed foundations, and container-powered robots 🧱🤖🐳
