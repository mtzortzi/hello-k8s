# hello-k8s

# 👋 Hello Kubernetes

A lightweight demo showcasing containerization, Kubernetes deployment, and CI/CD using Minikube and GitHub Actions.

## 🚀 Highlights
- Dockerized Flask application
- Kubernetes Deployment and Service manifests
- Local Kubernetes cluster powered by Minikube
- CI/CD pipeline building and deploying on every push to `main`

- Minikube is a tool that lets you run a mini Kubernetes cluster on your own computer—meaning it simulates a real Kubernetes environment with a single node (control plane + worker) using either a lightweight VM or Docker container.
Great for learning: You can experiment with Kubernetes concepts—Pods, Deployments, Services—without needing cloud infra .
Consistency: The same YAML you test locally can be deployed unchanged to a real cloud cluster later.
Easy setup: Just run minikube start; you’re ready to go.


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


  


