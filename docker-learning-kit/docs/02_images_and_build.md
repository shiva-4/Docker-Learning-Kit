# 02 — Images & Build

## Dockerfile Essentials
```Dockerfile
# syntax=docker/dockerfile:1.7
FROM python:3.12-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python", "app.py"]
```

### Best Practices
- **Pin versions** and bases (`alpine:3.20`, `python:3.12-alpine`).
- Use **multi‑stage builds** to keep images small.
- Put temporary files in earlier layers; leverage **layer caching**.
- Keep a tight **.dockerignore**.
- Prefer **non‑root** users when possible.

## Multi‑stage Example (Node build -> NGINX serve)
```Dockerfile
# build stage
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# runtime stage
FROM nginx:1.27-alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK CMD wget -qO- http://localhost/ || exit 1
```

## BuildKit & Caching
```bash
# enable BuildKit (recommended)
export DOCKER_BUILDKIT=1

# build with inline cache
docker build --tag myapp:latest --build-arg BUILDKIT_INLINE_CACHE=1 .

# store cache externally (CI)
docker buildx build --cache-to type=registry,ref=myapp:cache,mode=max   --cache-from type=registry,ref=myapp:cache   -t myapp:latest .
```

## Tagging & Pushing
```bash
docker tag myapp:latest ghcr.io/youruser/myapp:1.0.0
docker push ghcr.io/youruser/myapp:1.0.0
```
