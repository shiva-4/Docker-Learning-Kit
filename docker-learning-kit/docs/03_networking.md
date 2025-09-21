# 03 — Networking

## Modes
- **bridge** (default): NATed network with port‑mapping.
- **host**: shares host network namespace (Linux only).
- **none**: no networking.
- **custom bridge**: user‑defined bridge with DNS‑based service discovery.

## Common Tasks
```bash
# create network
docker network create app-net

# run services onto the same network
docker run -d --name api --network app-net myapi:latest
docker run -d --name web --network app-net -p 8080:80 myweb:latest

# web can reach api by container name: http://api:8000
```

## Ports
- `-p HOST:CONTAINER` maps host port to container.
- Avoid conflicts by checking `docker ps` and `lsof -i :PORT`.

## DNS & Service Discovery
- Containers on the same user‑defined network can use **container names** as hostnames.
