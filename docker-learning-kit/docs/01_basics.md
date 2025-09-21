# 01 — Docker Basics

## What is Docker?
Docker packages an application **and all its dependencies** into a portable unit called an **image**.
When you run an image, you get a **container**: an isolated process with its own filesystem, network, and resources.

### Containers vs Virtual Machines
- **Containers** share the host kernel; they’re lightweight and start in milliseconds.
- **VMs** virtualize hardware with their own OS; heavier and slower to boot.
- Use containers for most app packaging and CI; use VMs when kernel isolation is required.

## Key Concepts
- **Image**: read‑only filesystem layers + metadata.
- **Container**: a running (or stopped) instance of an image (writable layer).
- **Registry**: storage for images (e.g., Docker Hub, GitHub Container Registry).
- **Docker Engine/Daemon**: the server that builds/runs images (`dockerd`).
- **Client/CLI**: the `docker` command talking to the daemon.

## Lifecycle Cheats
```bash
# search & pull
docker search alpine
docker pull alpine:3.20

# run (ephemeral) and interact
docker run --rm -it alpine:3.20 sh

# list images & containers
docker images
docker ps -a

# stop/remove
docker stop <name|id>
docker rm <name|id>
docker rmi <image>
```

## Anatomy of a Container
- **Namespaces**: isolate PIDs, network, mounts.
- **Cgroups**: limit CPU, memory, IO.
- **Union FS layers**: overlay filesystem for image and container writes.

## When to Use Docker
- Dev environments that match prod.
- Reproducible CI builds.
- Microservices and polyglot stacks.
- Teaching, workshops, quick trials.
