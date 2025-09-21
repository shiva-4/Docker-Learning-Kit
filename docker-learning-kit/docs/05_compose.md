# 05 — Docker Compose (v2)

Compose defines **multi‑container apps** in a single YAML file.

```yaml
services:
  app:
    build: .
    ports: ["8000:8000"]
    environment:
      - ENV=dev
    depends_on: [db]
  db:
    image: postgres:16
    volumes:
      - pgdata:/var/lib/postgresql/data
    environment:
      POSTGRES_PASSWORD: example
volumes:
  pgdata:
```

## Useful Features
- **profiles**: include/exclude services.
- **healthcheck**: coordinate startup.
- **env_file**: load variables from `.env`.
- **deploy.resources**: CPU/memory limits.

```bash
docker compose up -d
docker compose ps
docker compose logs -f app
docker compose down -v
```
