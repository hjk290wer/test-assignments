# A1 — Build and Run (Docker, Nginx)

## Description
This task demonstrates building and running a simple static web application
served by nginx using Docker and Docker Compose.

The container serves a minimal index.html page with a custom message.

## Project structure

A1/test-project  
├── Dockerfile  
├── index.html  
└── docker-compose.yml  

## Requirements
- Docker Engine
- Docker Compose v2 (docker compose)

## Run with Docker CLI

From the A1/test-project directory:

sudo docker build -t my-web-app:latest .  
sudo docker run -d --name my-web-app-container -p 8080:80 my-web-app:latest  

Check that the service is running:

curl http://127.0.0.1:8080  

Stop and remove the container:

sudo docker rm -f my-web-app-container  

## Run with Docker Compose

From the A1/test-project directory:

sudo docker compose up -d  

Check that the service is running:

curl http://127.0.0.1:8080  

Stop the service:

sudo docker compose down  

## Notes (VM environment)

Docker is running inside a virtual machine (VMware NAT).

The service is available from the host machine at:

http://<VM_IP>:8080  

To get the VM IP address:

hostname -I  

## Question: How to deliver index.html without rebuilding the image?

The index.html file can be delivered using a bind mount (volume) at runtime.
This allows changing the file without rebuilding the Docker image.

Example using Docker CLI:

docker run -d -p 8080:80 \
-v $(pwd)/index.html:/usr/share/nginx/html/index.html:ro \
nginx:alpine  

Example using Docker Compose:

volumes:  
- ./index.html:/usr/share/nginx/html/index.html:ro  
