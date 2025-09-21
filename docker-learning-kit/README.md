# Docker Learning Kit — From Zero to Pro
Excel Docker From Scratch to Advance
A practical, copy‑pasteable guide to Docker from the ground up. It includes a step‑by‑step curriculum, cheat sheets,
ready‑to‑run example projects, and production best practices you can adapt to your own apps.

## What’s inside
- `docs/` — bite‑sized chapters you can read in order or as references.
- `examples/` — runnable sample projects (Python, Node, Postgres, multi‑arch, GPU, devcontainer).
- `scripts/` — handy utilities for building, testing, and pruning.
- `Makefile` — common commands (`make build`, `make run`, etc.).

> Tip: Start with **docs/01_basics.md** and progress in order. When you feel ready, open **examples/hello-docker/**.

## Quick start
```bash
# clone your repo (replace URL with your GitHub repo after upload)
git clone <your-repo-url> docker-learning-kit && cd docker-learning-kit

# verify Docker & Compose
docker version
docker compose version

# run the simplest example
cd examples/hello-docker
docker build -t hello-docker .
docker run --rm -p 8000:8000 hello-docker

# open http://localhost:8000
```

## Contents
- **01 — Basics**: containers vs VMs, images, registries, CLI map, lifecycle.
- **02 — Images & Build**: Dockerfile anatomy, multi‑stage builds, caching, BuildKit, `.dockerignore`.
- **03 — Networking**: bridge/host/none, custom networks, ports, service discovery.
- **04 — Volumes & Storage**: bind mounts vs volumes, backups, init scripts.
- **05 — Compose**: multi‑container apps, profiles, healthchecks, env files.
- **06 — Debugging & Troubleshooting**: logs, exec, shell, inspect, prune, metrics.
- **07 — Security & Best Practices**: least privilege, users, capabilities, SBOM, signing, secrets.
- **08 — CI/CD**: reproducible builds, caching, buildx, multi‑arch, scanning, pushing.
- **09 — Kubernetes Bridge**: how Docker skills map to k8s (Pods, Deployments, Services).
- **10 — Cheat Sheet**: the 80/20 commands you’ll use daily.

## License
MIT — see `LICENSE`.
