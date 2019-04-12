# Docker image with Python 2.7, based in Alpine

## Building

```
docker build . -t eduardoshanahan/python:latest
```

The script

```
./build.sh
```

will do the same and create also a build with the version number contained in version.json.

## Running an interactive test

```
docker run --rm -it eduardoshanahan/python:latest
```

Or with Docker Compose

```
docker-compose run --rm shell
```

You can also run all from compose:

```
docker-compose up
```

and attach to the container:

```
docker attach es_shell_python
```

## Building an image in Docker Hub

If for any reason the tagged build fails, you can fire a fresh one running

```
./build_image.sh
```

## Development

To send the commits to the remote server, you can use the script

```
./save.sh
```

which will also create a new tag if the version is updated.
