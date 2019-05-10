# tile38-sidecar

A tile38 image designed to be used as a sidecard in a kubernetes job. It can be stopped with a simple HTTP request when you are done with it.

## Build and test locally

In a terminal :

```
docker build -t tile38-sidecar .
docker run -it --rm --name tile38-sidecar -p 8986:8986 tile38-sidecar
```

In another terminal :

```
curl http://localhost:8986
```
