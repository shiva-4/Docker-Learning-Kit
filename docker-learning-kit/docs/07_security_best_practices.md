# 07 — Security & Best Practices

- **Run as non‑root** where possible:
  ```Dockerfile
  RUN addgroup -S app && adduser -S app -G app
  USER app
  ```
- **Drop capabilities** you don’t need:
  ```yaml
  services:
    app:
      cap_drop: ["ALL"]
      read_only: true
  ```
- **Secrets**: do not bake into images. Use env vars, secret managers, or Docker secrets.
- **Scan images** in CI (`docker scan` or other scanners).
- **SBOM & Signing**: generate SBOMs and sign images for provenance.
- Keep base images updated; apply tags like `:1.27-alpine` not `:latest`.
