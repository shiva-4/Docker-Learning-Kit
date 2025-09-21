# 10 — Docker Cheat Sheet

## Images
```bash
docker pull <image>[:tag]
docker images
docker rmi <image>
```

## Containers
```bash
docker run --rm -it --name demo -p 8080:80 nginx:alpine
docker ps -a
docker stop demo && docker rm demo
docker cp demo:/path/in/container ./local
```

## Build
```bash
docker build -t myimg:dev .
docker tag myimg:dev myimg:1.0.0
docker push myimg:1.0.0
```

## Exec & Logs
```bash
docker logs -f <name>
docker exec -it <name> sh
```

## Prune
```bash
docker system prune -af --volumes
```
