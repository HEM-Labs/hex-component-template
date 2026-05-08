# TEMPLATE_PROJECT_TITLE

[![Publish](https://img.shields.io/github/actions/workflow/status/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/publish.yml?branch=master&label=publish)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/actions/workflows/publish.yml)
[![GitHub Tag](https://img.shields.io/github/v/tag/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME?label=version)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/tags)
[![GitHub License](https://img.shields.io/github/license/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME)](LICENSE)
[![GHCR Image](https://img.shields.io/badge/GHCR-TEMPLATE_IMAGE_BADGE_LABEL-2496ED?logo=github)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/pkgs/container/TEMPLATE_IMAGE_NAME)

TEMPLATE_PROJECT_DESCRIPTION

This is a Hex container repository. For the wider architecture, contracts, naming conventions, and release expectations, see the main [Hex](https://github.com/HEM-Labs/hex) repository.

## Contract

- Image: `ghcr.io/TEMPLATE_GHCR_OWNER/TEMPLATE_IMAGE_NAME`
- Service name: `TEMPLATE_SERVICE_NAME`
- Container name: `TEMPLATE_CONTAINER_NAME`
- Primary mount path: `TEMPLATE_CONTAINER_MOUNT_PATH`
- Primary environment variable: `TEMPLATE_ENV_VAR=TEMPLATE_CONTAINER_MOUNT_PATH`

Replace this section with the runtime contract this container offers to other Hex components.

## Run

For end users on Windows, use the batch files to pull and run the published image:

```bat
run.bat
```

This runs the container in the foreground. Press `Ctrl+C` to stop it.

Detached service mode:

```bat
start.bat
```

Stop detached service mode:

```bat
stop.bat
```

The batch files use the same `compose.yml` as development, but run with `--no-build` so Docker uses the published GHCR image.

## Develop

Install [Task](https://taskfile.dev/) and Docker, then run:

```sh
task run
```

Useful development commands:

```sh
task build
task start
task stop
task update
task version
```

Override the image name while testing:

```sh
TEMPLATE_IMAGE_ENV=ghcr.io/your-org/TEMPLATE_IMAGE_NAME:dev task build
```

## Image

Default published image name:

```text
ghcr.io/TEMPLATE_GHCR_OWNER/TEMPLATE_IMAGE_NAME:latest
```

Versioned images are published as:

```text
ghcr.io/TEMPLATE_GHCR_OWNER/TEMPLATE_IMAGE_NAME:x.y.z
ghcr.io/TEMPLATE_GHCR_OWNER/TEMPLATE_IMAGE_NAME:x.y
```

## Release

Update `CHANGELOG.md` with a release entry, then run the `Publish TEMPLATE_PROJECT_TITLE Image` workflow from `master` with the target version.

The workflow updates `VERSION`, commits the release metadata, tags that commit as `vX.Y.Z`, and publishes the corresponding container image.

## Template Setup

After cloning this template, replace every `TEMPLATE_*` string listed in [TEMPLATE_STRINGS.md](TEMPLATE_STRINGS.md).
