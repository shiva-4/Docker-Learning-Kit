#!/usr/bin/env bash
set -euo pipefail
echo "Pruning unused Docker data..."
docker system prune -af --volumes
echo "Done."
