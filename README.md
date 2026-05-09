# TEMPLATE_PROJECT_TITLE

[![Publish](https://img.shields.io/github/actions/workflow/status/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/publish.yml?branch=master&label=publish)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/actions/workflows/publish.yml)
[![GitHub Tag](https://img.shields.io/github/v/tag/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME?label=version)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/tags)
[![GitHub License](https://img.shields.io/github/license/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME)](LICENSE)
[![GHCR Image](https://img.shields.io/badge/GHCR-TEMPLATE_IMAGE_BADGE_LABEL-2496ED?logo=github)](https://github.com/TEMPLATE_GITHUB_OWNER/TEMPLATE_REPOSITORY_NAME/pkgs/container/TEMPLATE_IMAGE_NAME)

TEMPLATE_PROJECT_DESCRIPTION

If this image bundles or redistributes third-party software, see [THIRD_PARTY.md](THIRD_PARTY.md) for upstream attribution.

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

Remove the container stack when it is no longer needed:

```bat
down.bat
```

This removes the component containers and Compose network. It does not delete Docker volumes; component-specific persistent data removal should be documented separately when needed.

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
task down
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

This repository is a copy-and-adapt template, not a generated project. After cloning it for a new component, use the surrounding files as examples and adapt them to the component being packaged.

At minimum:

- Replace every `TEMPLATE_*` string listed in [TEMPLATE_STRINGS.md](TEMPLATE_STRINGS.md), then verify with `rg "TEMPLATE_"`.
- Replace this README with component-specific runtime, development, image, and release details.
- Review `docker/Dockerfile`, `docker/entrypoint.sh`, `compose.yml`, `taskfile.yml`, and the batch files against the component's actual runtime behavior.
- Review [THIRD_PARTY.md](THIRD_PARTY.md), replace the examples with actual third-party notices, and delete unused sections.
- Update `LICENSE` with the correct copyright owner and year.
- Run the relevant local checks for the final component, usually `docker compose config`, `task build`, and `task run`.

### Agent Notes

AI-assisted unpacking should treat this template as a starting point, not as a strict text substitution target. The retained `TEMPLATE_*` strings cover stable repository identifiers; component-specific content such as third-party notices, runtime contracts, ports, volumes, environment variables, health checks, and dependency versions should be written from the component's actual behavior.

When adapting the template, preserve the Hex conventions where they still apply:

- Published image names use `ghcr.io/TEMPLATE_GHCR_OWNER/TEMPLATE_IMAGE_NAME`.
- Windows entry points are `run.bat`, `start.bat`, `stop.bat`, and `down.bat`.
- The release workflow publishes versioned `x.y.z` and `x.y` tags from `master`.
- Runtime integration details belong in the README contract section and `compose.yml`, not only in scripts.

### Changelog Handling

In this template repository, `CHANGELOG.md` tracks changes to the template itself.

When creating a component repository from this template, rewrite `CHANGELOG.md` into that component's changelog: keep the Keep a Changelog and Semantic Versioning headers, remove the template release history, and start with an empty `## [Unreleased]` section or the component's first release entry. Do not carry template version entries into the generated component.
