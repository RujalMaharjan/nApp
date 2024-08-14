# Start Minikube cluster
```SHELL
minikube start
```
# Build the Docker image for the Node.js application
```SHELL
docker build -t rujalmhn/assignment3:v1 .
```
# Push the Docker image to Docker Hub
```SHELL
docker push rujalmhn/assignment3:v1
```
# Apply the ConfigMap to Kubernetes
```SHELL
kubectl apply -f node-app-config.yaml
```
# Apply the Deployment to Kubernetes
```SHELL
kubectl apply -f node-app-deployment.yaml
```
# Expose the application using a NodePort service
```SHELL
kubectl expose deployment node-app --type=NodePort --port=80
```
# Verify the deployment by checking the logs of the Node.js application
```SHELL
kubectl logs deployment/node-app
```
# Access the application using Minikube's URL for the NodePort service
```SHELL
minikube service node-app --url
```