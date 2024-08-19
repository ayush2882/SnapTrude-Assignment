# SnapTrude-Assignment

1. Understanding the Problem Statement/Requirement.

2. Cloned the Git Repo into Local.

3. Created EKS Cluster running with 3 nodes.

4. Created Dockerfile to build the image having the nodejs code.
5. Build the Image - ```docker build -t ayush2882/snaptrude-nodejs . --platform=linux/amd64```
6. Pushed the image to Dockerhub. We are pulling the Image built on Step5, from DockerHub in our Kubernetes Manifests files.(nodejs-deployment.yaml, nodejs-service.yaml)
7. Establish connection with the cluster - ```aws eks --region us-east-1 update-kubeconfig --name snaptrude-assignment```
8. Create Kubernetes Manifests Files: nodejs-deployment.yaml. Nodejs-service.yaml
9. Created Deployment, Service
    A. Deployment - ```kubectl apply -f nodejs-deployment.yaml```
    B. Service - ```kubectl apply -f nodejs-service.yaml```
10. Checked Components status. 
    ```
        kubectl get deployment
        kubectl get pods
        kubectl get svc
    ```

11. Checked the deployed app via LoadBalancer External Name by hitting the following endpoints 
    ```
    A. GET - 
        http://a1c29bf14a7494d9698dcfb3a4a2a899-606520360.us-east-1.elb.amazonaws.com```

        Response: 
        {
           "error": {
                "message": "Not Found"
            }
        }
    
    B. GET version - 
        http://a1c29bf14a7494d9698dcfb3a4a2a899-606520360.us-east-1.elb.amazonaws.com/version

        Response: 1.0.0