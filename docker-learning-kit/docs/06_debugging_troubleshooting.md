# 06 — Debugging & Troubleshooting

## Everyday Tools
```bash
docker logs -f <container>
docker exec -it <container> sh        # or bash
docker inspect <name|id> | jq
docker stats
docker events
```

## Cleaning Up
```bash
docker system df
docker image prune -a
docker container prune
docker volume prune
docker network prune
```

## Healthchecks
- Add `HEALTHCHECK` in Dockerfile or service to detect failures early.

## Common Pitfalls
- Port already in use → change host port `-p 8081:80`.
- Huge images → multi‑stage, slimmer base, `.dockerignore`.
- “Works on my machine” → pin versions and use Compose for parity.
