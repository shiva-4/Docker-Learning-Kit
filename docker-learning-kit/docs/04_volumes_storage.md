# 04 — Volumes & Storage

## Bind Mount vs Volume
- **Bind mount**: host path into container (`-v $(pwd):/app`), flexible but ties to host layout.
- **Named volume**: managed by Docker (`-v mydata:/var/lib/postgresql/data`), portable and safer.

## Backups & Init
```bash
# backup a named volume
docker run --rm -v mydata:/data -v $(pwd):/backup alpine   tar czf /backup/mydata.tgz /data

# load init script for DBs
docker run -v pgdata:/var/lib/postgresql/data -v ./init.sql:/docker-entrypoint-initdb.d/init.sql postgres:16
```

## Persistence Checklist
- Put persistent state in a **volume**, not the image.
- Keep secrets out of images; inject via env/secret stores.
