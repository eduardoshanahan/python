# Docker image with Python 2.7, based in Alpine

## Running an interactive session

```bash
docker build . --t eduardoshanahan/python:latest
docker run -it --rm eduardoshanahan/python
```

Or with Docker Compose

```bash
docker-compose run --rm shell
```

## Development

To send the commits to the remote server, you can use the script
```bash
./save.sh
```
which will also create a new tag if the version is updated.
