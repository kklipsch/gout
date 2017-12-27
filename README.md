# gout - like echo written in golang
[Build](https://travis-ci.org/kklipsch/gout.svg?branch=master)

For scratch based containers putting this in the container allows you to print things.

To build:
```bash
CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' .
```
