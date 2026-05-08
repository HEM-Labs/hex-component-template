# Template Strings

Replace these strings after cloning the template.

| String                           | Example                                                            | Used for                                                 |
|----------------------------------|--------------------------------------------------------------------|----------------------------------------------------------|
| `TEMPLATE_PROJECT_TITLE`         | `Hex Librarium Init`                                               | Human-readable project title                             |
| `TEMPLATE_PROJECT_DESCRIPTION`   | `One-shot initializer for the shared Hex Librarium Docker volume.` | README summary                                           |
| `TEMPLATE_GITHUB_OWNER`          | `HEM-Labs`                                                         | GitHub organization or user                              |
| `TEMPLATE_GHCR_OWNER`            | `hem-labs`                                                         | GHCR owner, usually lowercase                            |
| `TEMPLATE_REPOSITORY_NAME`       | `hex-librarium-init`                                               | GitHub repository name                                   |
| `TEMPLATE_IMAGE_NAME`            | `hex-librarium-init`                                               | Container package/image name                             |
| `TEMPLATE_IMAGE_BADGE_LABEL`     | `hex--librarium--init`                                             | Shields badge label with dashes escaped as double dashes |
| `TEMPLATE_IMAGE_ENV`             | `LIBRARIUM_INIT_IMAGE`                                             | Environment variable used to override the image          |
| `TEMPLATE_SERVICE_NAME`          | `librarium-init`                                                   | Docker Compose service name                              |
| `TEMPLATE_CONTAINER_NAME`        | `hex-librarium-init`                                               | Optional stable container name                           |
| `TEMPLATE_CONTAINER_MOUNT_PATH`  | `/hex/librarium`                                                   | Main container path                                      |
| `TEMPLATE_ENV_VAR`               | `HEX_LIBRARIUM`                                                    | Main runtime environment variable                        |
| `TEMPLATE_RELEASE_WORKFLOW_NAME` | `Publish Librarium Init Image`                                     | GitHub Actions workflow title                            |

Search with:

```sh
rg "TEMPLATE_"
```

Also review:

- `LICENSE` copyright owner and year.
- `CHANGELOG.md` release entries.
- `docker/Dockerfile` base image, copied files, entrypoint, and command.
- `compose.yml` volumes, ports, environment, dependencies, and restart policy.
- Batch files if the service should expose more than foreground, detached, and stop commands.
