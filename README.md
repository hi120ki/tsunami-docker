# Tsunami Docker

Tsunami security scanner execution environment on Docker

<https://github.com/google/tsunami-security-scanner>

## Build

```
$ docker build ./ -t tsunami-docker
```

## Run a scan

```
$ mkdir output
$ docker run --rm -it -v $PWD/output:/out:rw tsunami-docker /run.sh 127.0.0.1 result.json
$ cat output/result.json
```
