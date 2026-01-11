\# A1 — Build and Run (Docker, Nginx)



\## Goal

Build and run a simple web app (static page served by nginx) using Docker. Provide an equivalent docker-compose setup.



\## Project location

`A1/test-project`



\## Requirements

\- Docker Engine

\- Docker Compose v2 (plugin): `1.29.2`



\## Files

\- `Dockerfile` — image based on `nginx:alpine`, copies `index.html` to nginx web root

\- `index.html` — simple page: "Hello from ShiroYama"

\- `docker-compose.yml` — runs the same service with port mapping 8080:80



---



\## Run with Docker CLI



From `A1/test-project`:



```bash

sudo docker build -t my-web-app:latest .

sudo docker run -d --name my-web-app-container -p 8080:80 my-web-app:latest

## Check

curl http://127.0.0.1:8080



\\#STOP/RM

sudo docker rm -f my-web-app-container





\\## Run with Docker Compose



From `A1/test-project`:


```bash

sudo docker compose up -d



\\## Check

curl http://127.0.0.1:8080



\\#STOP/RM

sudo docker compose down


Question: How to deliver index.html without rebuilding the image?

Use a bind mount (volume) and mount the file or site directory into /usr/share/nginx/html/ at runtime, e.g.:

```bash

docker run -d -p 8080:80 \\\\

\&nbsp; -v $(pwd)/index.html:/usr/share/nginx/html/index.html:ro \\\\

\&nbsp; nginx:alpine



Or with compose:

volumes:

\&nbsp; - ./index.html:/usr/share/nginx/html/index.html:ro


