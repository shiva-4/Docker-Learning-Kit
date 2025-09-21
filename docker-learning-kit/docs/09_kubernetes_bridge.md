# 09 — Kubernetes Bridge (Just Enough to Map Your Mental Model)

- **Container** → **Container** (same).
- **docker run** → **Pod** (1+ containers).
- **docker compose** → **Deployment + Service** (replicas + stable networking).
- **docker network** → **Service/ClusterIP**.
- **docker logs/exec** → `kubectl logs/exec`.

> If you outgrow Compose (scale, orchestration), step into Kubernetes with the same images.
