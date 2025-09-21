# 08 — CI/CD with Docker

## Reproducible Builds
- Use **BuildKit** and **buildx**.
- Cache dependencies early in Dockerfile.
- Save/restore cache to a registry or CI cache volume.

## Example CI Steps (pseudo)
```bash
docker buildx create --use
docker buildx build   --cache-from type=registry,ref=ghcr.io/you/myapp:buildcache   --cache-to type=registry,ref=ghcr.io/you/myapp:buildcache,mode=max   -t ghcr.io/you/myapp:${GIT_SHA}   -t ghcr.io/you/myapp:latest   --push .
```

## Multi‑arch
```bash
docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/you/myapp:1.0.0 --push .
```
