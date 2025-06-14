# hello-k8s

# 👋 Hello Kubernetes

A lightweight demo showcasing containerization, Kubernetes deployment, and CI/CD using Minikube and GitHub Actions.

## 🚀 Highlights
- Dockerized Flask application
- Kubernetes Deployment and Service manifests
- Local Kubernetes cluster powered by Minikube
- CI/CD pipeline building and deploying on every push to `main`

## ℹ️ Overview
This project demonstrates how to go from Python code ➝ Docker container ➝ Kubernetes cluster — deploying a simple Flask app that responds “👋 Hello, Kubernetes!” when accessed.

## 🧠 Architecture & Workflow
app.py (Flask code)
⇩
Dockerfile → docker build
⇩
[minikube] or local → kubernetes/deployment.yaml
⇩
Kubernetes Pods + Service
⇩
Accessible via http://localhost:5000

## 🛠️ Technologies Used
- **Python 3.10**, **Flask**  
- **Docker** for containerization  
- **Kubernetes** (Deployment + Service)  
- **Minikube** for local Kubernetes cluster

## 🎯 Prerequisites
- Ubuntu 20.04 (or macOS, Windows WSL2)
- Docker & Minikube installed and accessible without `sudo`
- `kubectl` CLI

## ⚙️ Setup & Run

1. **Clone Repo**
   ```bash
   git clone https://github.com/<YOUR_USERNAME>/hello-k8s.git
   cd hello-k8s
   ```

2. Build and deploy locally
   ```bash
   docker build -t hello-k8s:latest .
    minikube start --driver=docker
    eval $(minikube docker-env)
    docker build -t hello-k8s:latest .
    kubectl apply -f k8s/
   ```
   
3. Verify Pods are running
   ```bash
   kubectl get pods
   ```

4. Access the app
   ```bash
   kubectl port-forward svc/hello-svc 5000:5000
   ```


  


