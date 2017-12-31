REPO := "kklipsch/gout"

ifdef TRAVIS_TAG
	TAG := $(TRAVIS_TAG)
else
	TAG := "latest"
endif

.PHONY: publish
publish: dockerfile
	docker push $(REPO)

.PHONY: dockerfile
dockerfile: build
	docker build -f Dockerfile -t $(REPO):$(TAG) .

.PHONY: build
build:
	CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' .
