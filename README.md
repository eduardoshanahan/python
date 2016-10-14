# Docker image with Python 2.7, based in Alpine

## Running an interactive session

```bash
docker run -it --rm eduardoshanahan/python
```

Or with Docker Compose

```bash
docker-compose run --rm shell
```

## Development

If you want to make some changes and version it, [bumpversion](https://pypi.python.org/pypi/bumpversion) is available

```bash
bumpversion patch
```
