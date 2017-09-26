# Tagspaces Dockerbuild for the Raspberry Pi

Run [Tagspaces WebDav edition](https://www.tagspaces.org/blog/webdav-edition/) in a docker container on the Raspberry Pi.

Running under port 80:
```
docker run --name tagspaces -d -p 80:80 hendrikroth/rpi-tagspaces
```

## Available versions

- latest
- 2, 2.3, 2.3.0
- 2.9.0
