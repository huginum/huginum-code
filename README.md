# Huginum Code

Development environment templates and sbx kit configuration for Huginum projects.

The current sandbox template is a Bun-ready shell image published to GitHub Container Registry:

```sh
ghcr.io/huginum/huginum-code-bun:dev
```

## Jump Into Development

Use the published Docker sandbox image with the included Huginum kit:

```sh
sbx run --template ghcr.io/huginum/huginum-code-bun:dev --kit ./kits/huginum --branch auto shell .
```

The `Makefile` wraps the same command:

```sh
make run
```

To run the sandbox against a different project directory:

```sh
make run PROJECT=/path/to/project
```

## What Is In The Sandbox

The Bun template is defined in `templates/bun/Dockerfile`. It extends the shell Docker sandbox template and installs:

- Bun
- Git
- curl
- jq
- ripgrep
- fd
- unzip and xz utilities

The Huginum kit is defined in `kits/huginum/spec.yaml`. It sets `BUN_INSTALL` and allows network access to Bun, npm, GitHub, and GitHubusercontent hosts.

## Build Locally

Build the sandbox image locally:

```sh
make build
```

By default this builds:

```sh
ghcr.io/huginum/huginum-code-bun:dev
```

Override the image name if needed:

```sh
make build IMAGE=local/huginum-code-bun:dev
```

Then run that local image with sbx:

```sh
make run IMAGE=local/huginum-code-bun:dev
```

## Publish

The repository includes a GitHub Actions workflow at `.github/workflows/template-bun.yml`. Pushes to `main` that change `templates/bun/**` or the workflow rebuild and publish the container image to GHCR.

To push an image manually:

```sh
make push
```
